# Template for the scaffoldly/homebrew-tap formula. The release workflow
# (.github/workflows/release.yaml, homebrew-tap job) fills the @@...@@
# placeholders from each release's archives and pushes the result to the tap.
#
# This is the tap formula: it installs the prebuilt release binary (the normal
# auto-updating build). The from-source, no-self-update homebrew-core formula
# is tracked separately in #23.
class KubectlAdd < Formula
  desc "Install anything into your cluster from whatever you point it at"
  homepage "https://github.com/scaffoldly/kubectl-add"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/scaffoldly/kubectl-add/releases/download/v0.3.1/kubectl-add_darwin_arm64.zip"
      sha256 "f0bca4835ab8d6fcc4e5b54592f5c5d724828eb25f18051d8908baeaab348f4a"
    end
    on_intel do
      url "https://github.com/scaffoldly/kubectl-add/releases/download/v0.3.1/kubectl-add_darwin_amd64.zip"
      sha256 "2494257a4647e3a29954f42071726eec8984e41231db5e6a66b996aa0d066e22"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/scaffoldly/kubectl-add/releases/download/v0.3.1/kubectl-add_linux_arm64.zip"
      sha256 "195a4ef75ae277b0d21e6777f34f3ab7bdeb1ac9daba5d6664e2dfbe63a96885"
    end
    on_intel do
      url "https://github.com/scaffoldly/kubectl-add/releases/download/v0.3.1/kubectl-add_linux_amd64.zip"
      sha256 "2f0b3815ed7e5a5efe9c8ab2b8090e101c77bdce0317d510189a0d622a09fa13"
    end
  end

  def install
    bin.install "kubectl-add"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kubectl-add --version")
  end
end
