# typed: false
# frozen_string_literal: true

class OpencodeV2 < Formula
  desc "OpenCode V2 - the AI coding agent for the terminal"
  homepage "https://github.com/anomalyco/opencode"
  version "2.0.14"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "opencode", because: "both install an opencode binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.14/opencode-darwin-arm64.zip"
      sha256 "440c0ae923af40518dd34e99315af8c856732094eb4a2137a7a94a6a00f1aa45"
    else
      url "https://opencode.ai/files/bin/2.0.14/opencode-darwin-x64-baseline.zip"
      sha256 "b608fea95c96392ab8e0b8125380eb6fe69b90b7977b74c102d9a276df444804"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.14/opencode-linux-arm64.tar.gz"
      sha256 "c76b4f9490f3d943f0ab9f22707a94082a27ad062abda3da41d8c61ea4b04c04"
    else
      url "https://opencode.ai/files/bin/2.0.14/opencode-linux-x64-baseline.tar.gz"
      sha256 "0da3246c6d22f393739bb85d788055c16e381635cf0c1ceed393c28fd13ea964"
    end
  end

  def install
    bin.install "opencode"
  end
end
