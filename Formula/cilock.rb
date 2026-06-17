# typed: false
# frozen_string_literal: true

# cilock — pipeline observer and supply-chain evidence collector (in-toto / Witness).
# Source lives in github.com/aflock-ai/rookery; release tarballs are published to
# cilock.dev (Cloudflare R2). This formula is auto-bumped by the release pipeline
# (see the judge monorepo's release-fanout workflow: brew-bump job).
class Cilock < Formula
  desc "Pipeline observer and supply-chain evidence collector (in-toto/Witness)"
  homepage "https://cilock.dev"
  version "3.1.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://cilock.dev/dl/v3.1.3/cilock-3.1.3-darwin-amd64.tar.gz"
      sha256 "afb45120e1e527fc007dd299ca5f1d7e33dd919ea85a8001269336db212aafa3"
    end
    on_arm do
      url "https://cilock.dev/dl/v3.1.3/cilock-3.1.3-darwin-arm64.tar.gz"
      sha256 "bcb639d49c6c508c70fbeabc9fa2ce527fe746ebe6e5a9bd851b9d9fbb08af35"
    end
  end

  on_linux do
    on_intel do
      url "https://cilock.dev/dl/v3.1.3/cilock-3.1.3-linux-amd64.tar.gz"
      sha256 "2a63194a41e854761c56a88389d7e40efd74b9b1690849462a1af8c01f59e566"
    end
    on_arm do
      url "https://cilock.dev/dl/v3.1.3/cilock-3.1.3-linux-arm64.tar.gz"
      sha256 "7c9538de7d0a835029618d0fc194e94117304a95a833f9972973b62d666bb69c"
    end
  end

  def install
    bin.install "cilock"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cilock version")
  end
end
