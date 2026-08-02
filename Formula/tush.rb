class Tush < Formula
  desc "Serve an interactive shell over a reconnectable tunnel"
  homepage "https://github.com/scaffoldly/tush"
  version "0.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/scaffoldly/tush/releases/download/v0.0.4/tush_darwin_arm64.zip"
      sha256 "39c3c12b226430295a0e67f943237f7791befca2bb38cb68e2abdc658791c2ca"
    end
    on_intel do
      url "https://github.com/scaffoldly/tush/releases/download/v0.0.4/tush_darwin_amd64.zip"
      sha256 "34e4afb50b29e0e460fffd85439e4b4c289792b1a0ae2154ab6ab6db96e5768e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/scaffoldly/tush/releases/download/v0.0.4/tush_linux_arm64.zip"
      sha256 "b2c60ba0223df6462bc171daaff1c2ec3e2a4466d8701abec66468a3f37cfa43"
    end
    on_intel do
      url "https://github.com/scaffoldly/tush/releases/download/v0.0.4/tush_linux_amd64.zip"
      sha256 "2aa7c9514bd7a6ebb3e11739132998e14a8b35fd0ceb16e3416771f109aeab85"
    end
  end

  def install
    bin.install "tush"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tush version")
  end
end
