class Devgotchi < Formula
  desc "Tiny Bun-powered CLI that greets Homebrew"
  homepage "https://github.com/vseplet/devgotchi"
  version "0.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vseplet/devgotchi/releases/download/v#{version}/devgotchi-darwin-arm64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/vseplet/devgotchi/releases/download/v#{version}/devgotchi-darwin-x64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vseplet/devgotchi/releases/download/v#{version}/devgotchi-linux-arm64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/vseplet/devgotchi/releases/download/v#{version}/devgotchi-linux-x64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    binary = Dir["devgotchi-*"].first
    bin.install binary => "devgotchi"
  end

  test do
    assert_match "hello, brew!", shell_output("#{bin}/devgotchi")
  end
end
