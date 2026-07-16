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
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/scaffoldly/kubectl-add/releases/download/v0.2.0/kubectl-add_darwin_arm64.zip"
      sha256 "82e5a606d2cd6d35b122bdd8d12254483fa49892e4f4d17210bf0a9158b399f6"
    end
    on_intel do
      url "https://github.com/scaffoldly/kubectl-add/releases/download/v0.2.0/kubectl-add_darwin_amd64.zip"
      sha256 "38f384c7bf0a944150e024f0f46e13ca9b3b5804ecc3a7c80d3fc25b34fc9354"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/scaffoldly/kubectl-add/releases/download/v0.2.0/kubectl-add_linux_arm64.zip"
      sha256 "5325a30c1e6f2f34d96218d00ba4a63e29852141604b232652a2425dc55eb5b1"
    end
    on_intel do
      url "https://github.com/scaffoldly/kubectl-add/releases/download/v0.2.0/kubectl-add_linux_amd64.zip"
      sha256 "1478dab18ca099a174e992de7e9b62f75dd8707605eb7ef5465afe5f5dfd2f9d"
    end
  end

  def install
    bin.install "kubectl-add"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kubectl-add --version")
  end
end
