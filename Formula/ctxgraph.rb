class Ctxgraph < Formula
  desc "Local-first context graph engine for AI agents and human teams"
  homepage "https://github.com/rohansx/ctxgraph"
  license "MIT"
  version "0.6.0"

  on_macos do
    on_arm do
      url "https://github.com/rohansx/ctxgraph/releases/download/v#{version}/ctxgraph-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "966ebe811922000f48d7cb8d0ab19d56266efbd3be9e833abe268d3c1d7040b3"
    end

    on_intel do
      url "https://github.com/rohansx/ctxgraph/releases/download/v#{version}/ctxgraph-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "c0865da8b2b250442ff7f3c4a61cdcb8781ac0182f52f11820384612301aac98"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rohansx/ctxgraph/releases/download/v#{version}/ctxgraph-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "33d8f6d35ecc39ea2a6ad4cfce0ac28b44165fec85a2c8c5aa60778a7185d48e"
    end

    on_intel do
      url "https://github.com/rohansx/ctxgraph/releases/download/v#{version}/ctxgraph-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b1283b2761aa4d8ebb804064edbeeebc81720bc9b0035140471e50c08b5e6276"
    end
  end

  def install
    bin.install "ctxgraph"
  end

  def caveats
    <<~EOS
      Download ONNX models before first use:

        ctxgraph models download

      Then initialize in your project:

        ctxgraph init
        ctxgraph log "Your first decision"
    EOS
  end

  test do
    assert_match "ctxgraph", shell_output("#{bin}/ctxgraph --version")
  end
end
