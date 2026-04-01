class Illuminate < Formula
  desc "Contextual linter for AI coding agents - guards architectural intent"
  homepage "https://github.com/rohansx/illuminate"
  license "MIT"
  version "0.8.0"

  on_macos do
    on_arm do
      url "https://github.com/rohansx/illuminate/releases/download/v#{version}/illuminate-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "ba2fd26d4f8f152b864fda50f053b0cae9d476f268364a4b26c3364f067d5592"
    end

    on_intel do
      url "https://github.com/rohansx/illuminate/releases/download/v#{version}/illuminate-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "5a1f5a07bd0a63f75beb622a49a14be3c44372b47c8e6cbbb5ff93b4ed7683c7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rohansx/illuminate/releases/download/v#{version}/illuminate-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eea36a43ecca9ef96799b0430dc6a8bf9d05bb4f7a9678df331383a0f062a8c7"
    end

    on_intel do
      url "https://github.com/rohansx/illuminate/releases/download/v#{version}/illuminate-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6db58e486d813f258450cb6a3819777cab265ff7f85139e2013e7a35f1c77a1e"
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
