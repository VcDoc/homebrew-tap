cask "opencode-desktop-v2" do
  arch arm: "arm64", intel: "x64"

  version "2.0.14"
  sha256 arm:   "3bb61df1142089938927e6eb5a3e404347666ae055ca6aed483aa6160d54f499",
         intel: "5251152a195174f45e4107a7b943ef4251f0732654cb5a872cbe3002834c7fe3"

  url "https://opencode.ai/files/bin/#{version}/opencode-desktop-mac-#{arch}.zip"
  name "OpenCode V2"
  desc "AI coding agent desktop client"
  homepage "https://opencode.ai/"

  livecheck do
    url "https://opencode.ai/update/api/latest/desktop/opencode/latest-mac.yml"
    strategy :yaml do |yaml|
      yaml["version"]
    end
  end

  auto_updates true
  conflicts_with cask: "opencode-desktop"
  depends_on macos: :ventura

  app "OpenCode.app"

  uninstall quit: "ai.opencode.desktop"

  zap trash: [
    "~/Library/Application Support/ai.opencode.desktop",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ai.opencode.desktop.sfl*",
    "~/Library/Caches/@opencodedesktop-updater",
    "~/Library/Caches/ai.opencode.desktop",
    "~/Library/HTTPStorages/ai.opencode.desktop",
    "~/Library/Logs/ai.opencode.desktop",
    "~/Library/Preferences/ai.opencode.desktop.plist",
    "~/Library/Saved Application State/ai.opencode.desktop.savedState",
    "~/Library/WebKit/ai.opencode.desktop",
  ]
end
