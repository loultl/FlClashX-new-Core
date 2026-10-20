#!/usr/bin/env bash

set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
bumper="$script_dir/../bump_version.sh"
temp_dir="$(mktemp -d)"
trap 'rm -rf "$temp_dir"' EXIT

mkdir -p "$temp_dir/bin"
cat >"$temp_dir/bin/date" <<'EOF'
#!/usr/bin/env bash
printf '%s\n' '20261020'
EOF
chmod +x "$temp_dir/bin/date"

failures=0

write_fixture() {
  printf 'name: fixture\nversion: 0.9.1+%s\n' "$1" >"$temp_dir/pubspec.yaml"
}

run_bump() {
  PATH="$temp_dir/bin:$PATH" PUBSPEC_FILE="$temp_dir/pubspec.yaml" \
    bash "$bumper" minor >"$temp_dir/out" 2>"$temp_dir/err"
}

expect_version() {
  local name="$1" previous="$2" expected="$3"
  write_fixture "$previous"
  if ! run_bump; then
    echo "FAIL: $name should succeed" >&2
    cat "$temp_dir/err" >&2
    failures=$((failures + 1))
    return
  fi
  local actual
  actual="$(sed -n 's/^version: //p' "$temp_dir/pubspec.yaml")"
  if [[ "$actual" != "0.9.1+$expected" ]]; then
    echo "FAIL: $name expected 0.9.1+$expected, got $actual" >&2
    failures=$((failures + 1))
  fi
}

expect_failure_unchanged() {
  local name="$1" previous="$2" error="$3"
  write_fixture "$previous"
  if run_bump; then
    echo "FAIL: $name should fail" >&2
    failures=$((failures + 1))
  elif ! grep -q "$error" "$temp_dir/err"; then
    echo "FAIL: $name should report $error" >&2
    cat "$temp_dir/err" >&2
    failures=$((failures + 1))
  fi
  if [[ "$(sed -n 's/^version: //p' "$temp_dir/pubspec.yaml")" != "0.9.1+$previous" ]]; then
    echo "FAIL: $name changed pubspec before rejecting the build number" >&2
    failures=$((failures + 1))
  fi
}

expect_version 'a new date uses counter 01' 2026101901 2026102001
expect_version 'a same-day counter increments normally' 2026102007 2026102008
expect_version 'a legacy high build remains monotonic' 2026192150 2026192151
expect_version 'the Android versionCode ceiling is inclusive' \
  2099999999 2100000000
expect_failure_unchanged 'the Android versionCode ceiling is enforced' \
  2100000000 'exceeds 2100000000'
expect_failure_unchanged 'the normal daily counter limit is preserved' \
  2026102099 'exceeds 99'

if ((failures > 0)); then
  echo "$failures check(s) failed" >&2
  exit 1
fi

echo 'bump_version.sh preserves monotonic Android version codes.'
