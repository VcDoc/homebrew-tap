cask "hex" do
  version "2.1.17"
  sha256 "b8b9d0abecd86a73169ded8941b7c1979bd22d7fc838cc7b9e8696f15570bcc8"

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
