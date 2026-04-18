class Devgotchi < Formula
  desc "Tiny Bun-powered CLI that greets Homebrew"
  homepage "https://github.com/vseplet/devgotchi"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vseplet/devgotchi/releases/download/v#{version}/devgotchi-darwin-arm64"
      sha256 "00b81c5222e7502a8d1b4c3822a99d13391b9fd8b52f4f5aad910a4fb1d58b16"
    end
    on_intel do
      url "https://github.com/vseplet/devgotchi/releases/download/v#{version}/devgotchi-darwin-x64"
      sha256 "243dd63d5c12cf5691fdb572b4b816db8bd4e1e947daa82b58b6038e1c80e076"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vseplet/devgotchi/releases/download/v#{version}/devgotchi-linux-arm64"
      sha256 "395d4511233ad1531c41ef4356d83028fb045e85ed1ec2e944f284d8606731f2"
    end
    on_intel do
      url "https://github.com/vseplet/devgotchi/releases/download/v#{version}/devgotchi-linux-x64"
      sha256 "1774b6e7c75d4b15abaf6aa963407428e90ec935f3b9107ea566fdcdb027c8ae"
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
