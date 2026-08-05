class Tush < Formula
  desc "Serve an interactive shell over a reconnectable tunnel"
  homepage "https://github.com/scaffoldly/tush"
  version "0.0.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/scaffoldly/tush/releases/download/v0.0.6/tush_darwin_arm64.zip"
      sha256 "b05e021f04bed3206b26c326f814d400cc1b44f64ab6066b20a5515858cc2354"
    end
    on_intel do
      url "https://github.com/scaffoldly/tush/releases/download/v0.0.6/tush_darwin_amd64.zip"
      sha256 "19a20aacea6deebe03a98bf6c9f4d4fa496a421520e4100cac114bb3bc714a1d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/scaffoldly/tush/releases/download/v0.0.6/tush_linux_arm64.zip"
      sha256 "a5662b74e46480146f74590850e208c94b06897ac6c9f5ff8bdf4623e8784af0"
    end
    on_intel do
      url "https://github.com/scaffoldly/tush/releases/download/v0.0.6/tush_linux_amd64.zip"
      sha256 "4da5049733f4ac235db496eaee773b8871ef604e479672c09705b42ea6050707"
    end
  end

  def install
    bin.install "tush"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tush version")
  end
end
