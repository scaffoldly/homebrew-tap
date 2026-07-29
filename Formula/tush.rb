class Tush < Formula
  desc "Serve an interactive shell over a reconnectable tunnel"
  homepage "https://github.com/scaffoldly/tush"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/scaffoldly/tush/releases/download/v0.0.2/tush_darwin_arm64.zip"
      sha256 ""
    end
    on_intel do
      url "https://github.com/scaffoldly/tush/releases/download/v0.0.2/tush_darwin_amd64.zip"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/scaffoldly/tush/releases/download/v0.0.2/tush_linux_arm64.zip"
      sha256 ""
    end
    on_intel do
      url "https://github.com/scaffoldly/tush/releases/download/v0.0.2/tush_linux_amd64.zip"
      sha256 ""
    end
  end

  def install
    bin.install "tush"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tush version")
  end
end
