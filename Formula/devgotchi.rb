class Devgotchi < Formula
  desc "Tiny Bun-powered CLI that greets Homebrew"
  homepage "https://github.com/vseplet/devgotchi"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vseplet/devgotchi/releases/download/v#{version}/devgotchi-darwin-arm64"
      sha256 "778dfed63be013b03f037181d5e8d747be598f5f276db533256dbf35a6eb5fa3"
    end
    on_intel do
      url "https://github.com/vseplet/devgotchi/releases/download/v#{version}/devgotchi-darwin-x64"
      sha256 "875f74579b0345f557f4de3e43591711ab4322999abd04c4d14a875bc0fbb902"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vseplet/devgotchi/releases/download/v#{version}/devgotchi-linux-arm64"
      sha256 "e99c3000692e1d4d7051021f2411617ed9cf9779b3ed20a870fd959b942bb6d6"
    end
    on_intel do
      url "https://github.com/vseplet/devgotchi/releases/download/v#{version}/devgotchi-linux-x64"
      sha256 "d63fbd3b90b6169669066d0be0a2f9502b800b12e99d43656e36dcdb9da3e9fc"
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
