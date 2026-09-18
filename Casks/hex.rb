cask "hex" do
  version "2.1.19"
  sha256 "ec4b159074f1373201d9fdd073d71aa774e1eb3a8227e4487f7578271c06ac04"

  url "https://downloads.hex.kitlangton.dev/releases/HEX-#{version}-arm64.dmg"
  name "Hex"
  desc "Local-first voice dictation"
  homepage "https://hex.kitlangton.dev/"

  livecheck do
    url "https://downloads.hex.kitlangton.dev/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Hex.app"
end
