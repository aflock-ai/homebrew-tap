# typed: false
# frozen_string_literal: true

# jctl — TestifySec Judge platform CLI. Release tarballs are published to cilock.dev
# (Cloudflare R2) alongside cilock. Auto-bumped by the release pipeline (brew-bump job).
# NOTE: jctl is TestifySec proprietary software (not Apache-licensed like cilock); the
# `license` field is intentionally omitted. Distributed via this custom tap, which
# (unlike homebrew-core) carries no open-source requirement.
class Jctl < Formula
  desc "TestifySec Judge platform CLI"
  homepage "https://cilock.dev"
  version "3.1.3"

  on_macos do
    on_intel do
      url "https://cilock.dev/dl/v3.1.3/jctl-3.1.3-darwin-amd64.tar.gz"
      sha256 "2fad82b66bce2502d294e930a738109ab1005fca19eca5841ae576248f0b2e30"
    end
    on_arm do
      url "https://cilock.dev/dl/v3.1.3/jctl-3.1.3-darwin-arm64.tar.gz"
      sha256 "90190ad0836e4c0324155dcd0edbe1d8e13258b8efb5d22b824998691a5fff74"
    end
  end

  on_linux do
    on_intel do
      url "https://cilock.dev/dl/v3.1.3/jctl-3.1.3-linux-amd64.tar.gz"
      sha256 "6632ae9ca64f6707a7e20265ce54406165ab48e3c220ebf569378bd69ddd7793"
    end
    on_arm do
      url "https://cilock.dev/dl/v3.1.3/jctl-3.1.3-linux-arm64.tar.gz"
      sha256 "ff08700bf4bc40ba609be51471ad816dc59afdcb7b57109c43ce494c4459341a"
    end
  end

  def install
    bin.install "jctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jctl version")
  end
end
