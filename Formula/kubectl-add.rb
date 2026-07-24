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
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/scaffoldly/kubectl-add/releases/download/v0.4.0/kubectl-add_darwin_arm64.zip"
      sha256 "7dd1db9b801b94dcc095001756e3448e8890ec87f6b71327031e7c207ff3533d"
    end
    on_intel do
      url "https://github.com/scaffoldly/kubectl-add/releases/download/v0.4.0/kubectl-add_darwin_amd64.zip"
      sha256 "af262f0afee92265d85c8282f9e701cf81fd74f4ae18ee043ea9fd249b379eb6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/scaffoldly/kubectl-add/releases/download/v0.4.0/kubectl-add_linux_arm64.zip"
      sha256 "8cac4beccc6c521a136531dcf16da8863961ff8c188f3fa5b0920c4ac0d2764a"
    end
    on_intel do
      url "https://github.com/scaffoldly/kubectl-add/releases/download/v0.4.0/kubectl-add_linux_amd64.zip"
      sha256 "afd47d0bd9821f8607797d0c012ff306a5007cef58947e4038775cb24b4353b8"
    end
  end

  def install
    bin.install "kubectl-add"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kubectl-add --version")
  end
end
