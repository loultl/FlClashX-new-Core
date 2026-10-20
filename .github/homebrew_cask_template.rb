cask "flclashx" do
  version "VERSION"

  on_macos do
    arch arm: "arm64", intel: "amd64"

    sha256 arm:   "ARM_SHA256",
           intel: "AMD_SHA256"

    url "https://github.com/loultl/FlClashX-new-Core/releases/download/v#{version}/FlClashX-#{version}-macos-#{arch}.dmg"
  end

  name "FlClashX"
  desc "Multi-platform proxy client based on Prizrak-Core"
  homepage "https://github.com/loultl/FlClashX-new-Core"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "FlClashX.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args:           ["-rd", "com.apple.quarantine", "{{appdir}}/FlClashX.app"],
        writable_paths: ["FlClashX.app"],
        writable_base:  :appdir
  end

  uninstall quit: "com.follow.clash"

  zap trash: [
    "~/Library/Application Support/com.follow.clash",
    "~/Library/Caches/com.follow.clash",
    "~/Library/Preferences/com.follow.clash.plist",
    "~/Library/Saved Application State/com.follow.clash.savedState",
  ]
end
