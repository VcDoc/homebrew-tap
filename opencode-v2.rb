# typed: false
# frozen_string_literal: true

class OpencodeV2 < Formula
  desc "OpenCode V2 - the AI coding agent for the terminal"
  homepage "https://github.com/anomalyco/opencode"
  version "2.0.11"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "opencode", because: "both install an opencode binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.11/opencode-darwin-arm64.zip"
      sha256 "8db4b8e75597bbc55b6def870c288e7f61d231616842205dbf14789fec5ef9c1"
    else
      url "https://opencode.ai/files/bin/2.0.11/opencode-darwin-x64-baseline.zip"
      sha256 "4e7f1107592b729c52a74fceb00864d8c13697f7d9ebd4a24b04d73f51869ead"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.11/opencode-linux-arm64.tar.gz"
      sha256 "73ec223ee914aab93fc8772d27fe2e3eae9ac4ee428fb5d00411e55c5b1477ef"
    else
      url "https://opencode.ai/files/bin/2.0.11/opencode-linux-x64-baseline.tar.gz"
      sha256 "1ac941239b3a41125b1bf56a5267e042d264d1aee345ebccf63ce2b895e16f3e"
    end
  end

  def install
    bin.install "opencode"
  end
end
