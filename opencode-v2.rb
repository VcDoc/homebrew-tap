# typed: false
# frozen_string_literal: true

class OpencodeV2 < Formula
  desc "OpenCode V2 - the AI coding agent for the terminal"
  homepage "https://github.com/anomalyco/opencode"
  version "2.0.12"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "opencode", because: "both install an opencode binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.12/opencode-darwin-arm64.zip"
      sha256 "13062b78c4d53f231e93ad6dea7bb1c2751a725fc965990871bee273f98daf48"
    else
      url "https://opencode.ai/files/bin/2.0.12/opencode-darwin-x64-baseline.zip"
      sha256 "e9fb1b5eaf3c210d3150ef176081bf4989ea910556b67b6416b26f62ab645d63"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.12/opencode-linux-arm64.tar.gz"
      sha256 "5d55080dd02eaa9ecd43314398ce58feaafc5d60906ee07af50cc29e4787b27a"
    else
      url "https://opencode.ai/files/bin/2.0.12/opencode-linux-x64-baseline.tar.gz"
      sha256 "93997584e28ab905022f5a28b0d0479d06f3bcd6de90d9553d2bae60af6c2ba5"
    end
  end

  def install
    bin.install "opencode"
  end
end
