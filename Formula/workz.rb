class Workz < Formula
  desc "Zoxide for Git worktrees — zero-config sync, fuzzy switching, AI-ready"
  homepage "https://github.com/rohansx/workz"
  license any_of: ["MIT", "Apache-2.0"]
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/rohansx/workz/releases/download/v#{version}/workz-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "b575df4e9cbc5459ccfe78b956c06a6d6bca49299a4ea274f56f0585898302ba"
    end

    on_intel do
      url "https://github.com/rohansx/workz/releases/download/v#{version}/workz-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "e3bd4a5b042315b0cd8c291bf493135e6c8d202b48d17efbfd55fd07dcb8d94a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rohansx/workz/releases/download/v#{version}/workz-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "179d86575cd312b6ec33417f7a2adc274c96ab6852ec3ae5516e018fff19ce2c"
    end

    on_intel do
      url "https://github.com/rohansx/workz/releases/download/v#{version}/workz-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "13ce0f83d8cd60cd4abeb76149d68a22f8cc190b0110e5714b8fa43c595186b0"
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
