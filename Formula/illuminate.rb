class Illuminate < Formula
  desc "Contextual linter for AI coding agents - guards architectural intent"
  homepage "https://github.com/rohansx/illuminate"
  license "MIT"
  version "0.8.0"

  on_macos do
    on_arm do
      url "https://github.com/rohansx/illuminate/releases/download/v#{version}/illuminate-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_AARCH64_DARWIN"
    end

    on_intel do
      url "https://github.com/rohansx/illuminate/releases/download/v#{version}/illuminate-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_X86_64_DARWIN"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rohansx/illuminate/releases/download/v#{version}/illuminate-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER_AARCH64_LINUX"
    end

    on_intel do
      url "https://github.com/rohansx/illuminate/releases/download/v#{version}/illuminate-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER_X86_64_LINUX"
    end
  end

  def install
    bin.install "illuminate"
  end

  def caveats
    <<~EOS
      Download ONNX models before first use:

        illuminate models download

      Initialize in your project:

        illuminate init --claude
        illuminate watch --git --backfill 100
        illuminate serve

      Documentation: https://github.com/rohansx/illuminate
    EOS
  end

  test do
    assert_match "illuminate", shell_output("#{bin}/illuminate --version")
  end
end
