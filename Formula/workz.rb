class Workz < Formula
  desc "Zoxide for Git worktrees — zero-config sync, fuzzy switching, AI-ready"
  homepage "https://github.com/rohansx/workz"
  license any_of: ["MIT", "Apache-2.0"]
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/rohansx/workz/releases/download/v#{version}/workz-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end

    on_intel do
      url "https://github.com/rohansx/workz/releases/download/v#{version}/workz-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rohansx/workz/releases/download/v#{version}/workz-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end

    on_intel do
      url "https://github.com/rohansx/workz/releases/download/v#{version}/workz-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
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
