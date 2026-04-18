class Devgotchi < Formula
  desc "Collaborative devgotchi — presence, status and chat in your terminal"
  homepage "https://github.com/vseplet/devgotchi"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vseplet/devgotchi/releases/download/v#{version}/devgotchi-darwin-arm64"
      sha256 "5416b7b7e7ff609ce755ae5940419c2d024f147a04bb855f5b80cdc1166d25e3"
    end
    on_intel do
      url "https://github.com/vseplet/devgotchi/releases/download/v#{version}/devgotchi-darwin-x64"
      sha256 "2314a82bf711f08fbcc8a5437cd6af9ad15ce689e05902edc897422f1b3d684a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vseplet/devgotchi/releases/download/v#{version}/devgotchi-linux-arm64"
      sha256 "858c201f0b8776358d22049a8bf0d90b8b39572d9b8d94f97c35d19653401693"
    end
    on_intel do
      url "https://github.com/vseplet/devgotchi/releases/download/v#{version}/devgotchi-linux-x64"
      sha256 "8778e1cdd275a54be17864d4521017b1e280d15f152c07487cf87b744725a7e7"
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
