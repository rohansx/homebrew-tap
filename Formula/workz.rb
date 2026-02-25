class Workz < Formula
  desc "Zoxide for Git worktrees — zero-config sync, fuzzy switching, AI-ready"
  homepage "https://github.com/rohansx/workz"
  license any_of: ["MIT", "Apache-2.0"]
  version "0.2.1"

  on_macos do
    on_arm do
      url "https://github.com/rohansx/workz/releases/download/v#{version}/workz-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "0a6091cd972748ce2b0ea8f7b90468fa99b6b72fb9cf755e752e5d09acd604d4"
    end

    on_intel do
      url "https://github.com/rohansx/workz/releases/download/v#{version}/workz-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "daed78ffd04c317cefc7facdc0b0124fe90af6272207a71ec869fa98cf0368e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rohansx/workz/releases/download/v#{version}/workz-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3f13e74824b1696e1b22e89e452a7cf780296d5656423f4fe826d30c5fb6f394"
    end

    on_intel do
      url "https://github.com/rohansx/workz/releases/download/v#{version}/workz-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e29a7281123b0eb4a21a9e578a07705daecbc5889d1f34cf070a1a05502d2de8"
    end
  end

  def install
    bin.install "workz"
  end

  def caveats
    <<~EOS
      Add shell integration to your shell config:

        # zsh (~/.zshrc)
        eval "$(workz init zsh)"

        # bash (~/.bashrc)
        eval "$(workz init bash)"

        # fish (~/.config/fish/config.fish)
        workz init fish | source
    EOS
  end

  test do
    assert_match "workz", shell_output("#{bin}/workz --version")
  end
end
