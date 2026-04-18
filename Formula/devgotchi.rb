class Devgotchi < Formula
  desc "Collaborative devgotchi — presence, status and chat in your terminal"
  homepage "https://github.com/vseplet/devgotchi"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vseplet/devgotchi/releases/download/v#{version}/devgotchi-darwin-arm64"
      sha256 "2f29ec606b408d3750a530a83540648c56336b7d98b0bf2e32fded79716bbba1"
    end
    on_intel do
      url "https://github.com/vseplet/devgotchi/releases/download/v#{version}/devgotchi-darwin-x64"
      sha256 "92c12b673d4b33b24be2a0140ac7abe6f2dfb02d7da23c2b99c416e9975977fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vseplet/devgotchi/releases/download/v#{version}/devgotchi-linux-arm64"
      sha256 "cba21158019e5fb70af8b86fe78ecd99a63218ffd89d46ad3ce7deea550be16a"
    end
    on_intel do
      url "https://github.com/vseplet/devgotchi/releases/download/v#{version}/devgotchi-linux-x64"
      sha256 "57fc4354b11ecab50fdc038a9c76c43daedbca62bc99ef30c901595c7200fa29"
    end
  end

  def install
    binary = Dir["devgotchi-*"].first
    bin.install binary => "devgotchi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devgotchi --version")
  end
end
