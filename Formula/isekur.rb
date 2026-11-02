class Isekur < Formula
  desc "IRC client with a terminal UI, webchat and E2E encryption"
  homepage "https://github.com/gcanosa/iSekur"
  url "https://github.com/gcanosa/iSekur/archive/refs/tags/v0.5.tar.gz"
  sha256 "a8539296d854904a5f0790d51f1434ed187c0c15cd806ee8b9d130acb405a93c"
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
