class Workz < Formula
  desc "Zoxide for Git worktrees — zero-config sync, fuzzy switching, AI-ready"
  homepage "https://github.com/rohansx/workz"
  license any_of: ["MIT", "Apache-2.0"]
  version "0.6.0"

  on_macos do
    on_arm do
      url "https://github.com/rohansx/workz/releases/download/v#{version}/workz-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "82ba309250cee3b5a01aabe833290d6f32a4eb5ff4b3d04229f31897f1712b9b"
    end

    on_intel do
      url "https://github.com/rohansx/workz/releases/download/v#{version}/workz-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "43d5b6524960d794906a81882a1aa3924c638902567a6da55be388e7d1cef58a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rohansx/workz/releases/download/v#{version}/workz-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "456988b29f5b407feda28e3637df60bd6578a1fe6a98a06c98b1e415371b71c5"
    end

    on_intel do
      url "https://github.com/rohansx/workz/releases/download/v#{version}/workz-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "456934133a1d58769a22b3c1cb6f84011d82ef33e25da1db51d25bff3fc6c1a4"
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
