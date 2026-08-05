class Tush < Formula
  desc "Serve an interactive shell over a reconnectable tunnel"
  homepage "https://github.com/scaffoldly/tush"
  version "0.0.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/scaffoldly/tush/releases/download/v0.0.7/tush_darwin_arm64.zip"
      sha256 "e9b74aed157650a08246a86cf2c330bd300e0514517de34f28195bbe675074cc"
    end
    on_intel do
      url "https://github.com/scaffoldly/tush/releases/download/v0.0.7/tush_darwin_amd64.zip"
      sha256 "f905bfb55574922748204d3ade8b8be2dcc26017f8530a98612dc9956976693e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/scaffoldly/tush/releases/download/v0.0.7/tush_linux_arm64.zip"
      sha256 "5867684fac6e5648c33c9d273259b7d93c831ad1a468cb87c2dbcd3365792f9b"
    end
    on_intel do
      url "https://github.com/scaffoldly/tush/releases/download/v0.0.7/tush_linux_amd64.zip"
      sha256 "e892fa26e2798028ee4c5c92e2bacfe101ff545cba80b2cf5a77d63fa09001e6"
    end
  end

  def install
    bin.install "tush"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tush version")
  end
end
