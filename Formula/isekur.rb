class Isekur < Formula
  desc "IRC client with a terminal UI, webchat and E2E encryption"
  homepage "https://github.com/gcanosa/iSekur"
  url "https://github.com/gcanosa/iSekur/archive/refs/tags/v0.4.tar.gz"
  sha256 "dddc39d068df97a25187b0c1ce2b621f5c34cdcaf8f98afb2c70a71891e71336"
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
