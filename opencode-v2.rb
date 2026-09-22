# typed: false
# frozen_string_literal: true

class OpencodeV2 < Formula
  desc "OpenCode V2 - the AI coding agent for the terminal"
  homepage "https://github.com/anomalyco/opencode"
  version "2.0.13"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "opencode", because: "both install an opencode binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.13/opencode-darwin-arm64.zip"
      sha256 "558e9a8a5c6edcff3c29db7c96b837764e25d1d11c75c63b53f0b5f033e4d5a5"
    else
      url "https://opencode.ai/files/bin/2.0.13/opencode-darwin-x64-baseline.zip"
      sha256 "39580116646c5adac5588d2b8f97a4195c4eff3fa9220b9637b7bb389637f897"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.13/opencode-linux-arm64.tar.gz"
      sha256 "13852f6a5eacb44c1f15e38b8caa7d735cd00290ab0117177bc5ccfb89e387a5"
    else
      url "https://opencode.ai/files/bin/2.0.13/opencode-linux-x64-baseline.tar.gz"
      sha256 "819d33060b3122b5a6288d2d61b5fb8a8d7929135be934d55ca9ce497ea511ea"
    end
  end

  def install
    bin.install "opencode"
  end
end
