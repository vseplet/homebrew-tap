class Devgotchi < Formula
  desc "Collaborative devgotchi — presence, status and chat in your terminal"
  homepage "https://github.com/vseplet/devgotchi"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vseplet/devgotchi/releases/download/v#{version}/devgotchi-darwin-arm64"
      sha256 "34ac38f4d8d3799c453ca9ceb87ff5cc881240cc7ef05f75bb0f9c47f51a9420"
    end
    on_intel do
      url "https://github.com/vseplet/devgotchi/releases/download/v#{version}/devgotchi-darwin-x64"
      sha256 "223c9cfebaac00b99a61e944acea549622f3920c35d45f039413056902164e62"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vseplet/devgotchi/releases/download/v#{version}/devgotchi-linux-arm64"
      sha256 "a3c5d881fb09e91a024a63ae6fbac6a74b8aaf13c7ddf7db5ced4ec2bc3b1f97"
    end
    on_intel do
      url "https://github.com/vseplet/devgotchi/releases/download/v#{version}/devgotchi-linux-x64"
      sha256 "f23b67614ac8cab3ea197bd3e69255835947890f417e9d668a215da43d9004e4"
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
