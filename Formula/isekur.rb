class Isekur < Formula
  desc "IRC client with a terminal UI, webchat and E2E encryption"
  homepage "https://github.com/gcanosa/iSekur"
  url "https://github.com/gcanosa/iSekur/archive/refs/tags/v0.3.tar.gz"
  sha256 "16d27bc50aae5620d4d1e11a6358f6ae9432879cd372ed1f17de7eff3b4d2511"
  license "GPL-3.0-only"

  depends_on "pkgconf" => :build
  depends_on "openssl@3"

  def install
    system "make", "PREFIX=#{prefix}"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/isekur --version")
  end
end
