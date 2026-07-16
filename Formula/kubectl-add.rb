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
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/scaffoldly/kubectl-add/releases/download/v0.2.1/kubectl-add_darwin_arm64.zip"
      sha256 "a62f948e5f5350ae2dbb6eb8582bb68e2823b595cda37bcf1e48ab0ce8253289"
    end
    on_intel do
      url "https://github.com/scaffoldly/kubectl-add/releases/download/v0.2.1/kubectl-add_darwin_amd64.zip"
      sha256 "2b408c867b98798fe559259b9ed3d8fa18f4957753cc0b00443832af9a35b8a8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/scaffoldly/kubectl-add/releases/download/v0.2.1/kubectl-add_linux_arm64.zip"
      sha256 "db5c8ebcd6ac24b52091d98d7e0a3965af55a1f4aa266346d3e1ec5033b2bce1"
    end
    on_intel do
      url "https://github.com/scaffoldly/kubectl-add/releases/download/v0.2.1/kubectl-add_linux_amd64.zip"
      sha256 "17830d14395c3e099e8b78623293f5ad5d8d905dbbb0d95dd99c0ae00ee04cb4"
    end
  end

  def install
    bin.install "kubectl-add"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kubectl-add --version")
  end
end
