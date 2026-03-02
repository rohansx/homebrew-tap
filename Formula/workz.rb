class Workz < Formula
  desc "Zoxide for Git worktrees — zero-config sync, fuzzy switching, AI-ready"
  homepage "https://github.com/rohansx/workz"
  license any_of: ["MIT", "Apache-2.0"]
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/rohansx/workz/releases/download/v#{version}/workz-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "ed8aec5e4155c769197772ec06fbcd581763a6a3a1caad663d5cf9b2f1dc2e72"
    end

    on_intel do
      url "https://github.com/rohansx/workz/releases/download/v#{version}/workz-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "5abe5436686ad44792130d0e6e12c19bf0d79d723c867e3d97a7c828c4b60e33"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rohansx/workz/releases/download/v#{version}/workz-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b2ddfc296ff437d36f8bd512023eaf3886f26a42de9f2edad6903ceb6cc6ef12"
    end

    on_intel do
      url "https://github.com/rohansx/workz/releases/download/v#{version}/workz-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "88a37e6ac147b98c06997b56720484600e4d6d3b4aa753650aba5b0840acd971"
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
