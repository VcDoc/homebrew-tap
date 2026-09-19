# typed: false
# frozen_string_literal: true

class OpencodeV2 < Formula
  desc "OpenCode V2 - the AI coding agent for the terminal"
  homepage "https://github.com/anomalyco/opencode"
  version "2.0.10"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "opencode", because: "both install an opencode binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.10/opencode-darwin-arm64.zip"
      sha256 "e495aa1ecdac43b2974c5cd89d358239ae55a7943c0afa38f97e9f1bdfa3430a"
    else
      url "https://opencode.ai/files/bin/2.0.10/opencode-darwin-x64-baseline.zip"
      sha256 "9e11b1a2ceb03198c5cc74af08164093be1ddf996511b0cc6e71adc6b218ac32"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.10/opencode-linux-arm64.tar.gz"
      sha256 "75e3b24feadc75300401db4237a7e0f88ec6b7c581ca189cfa87e1b9bec6c007"
    else
      url "https://opencode.ai/files/bin/2.0.10/opencode-linux-x64-baseline.tar.gz"
      sha256 "d1a5381170301abaddefe461be5c45f1d22136c6064b8c0f79df0db2aa7d5e1e"
    end
  end

  def install
    bin.install "opencode"
  end
end
