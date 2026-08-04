class Tush < Formula
  desc "Serve an interactive shell over a reconnectable tunnel"
  homepage "https://github.com/scaffoldly/tush"
  version "0.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/scaffoldly/tush/releases/download/v0.0.5/tush_darwin_arm64.zip"
      sha256 "685f180608c5ec0ffc310b8dc294312e89fa10e933b0c81f487abd396895bb41"
    end
    on_intel do
      url "https://github.com/scaffoldly/tush/releases/download/v0.0.5/tush_darwin_amd64.zip"
      sha256 "a93c33f4bc548869691ee801042f6eacc9c9be4490243340d984bfdeac247da1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/scaffoldly/tush/releases/download/v0.0.5/tush_linux_arm64.zip"
      sha256 "29c6f08ab3107a83d1586950033ced2402e9e045e32600d34f35b45045cee7de"
    end
    on_intel do
      url "https://github.com/scaffoldly/tush/releases/download/v0.0.5/tush_linux_amd64.zip"
      sha256 "8f4aa1ad14a0dc8a2e7ca8ba8139574e282b5b49442759ecafcb6889d95bccd3"
    end
  end

  def install
    bin.install "tush"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tush version")
  end
end
