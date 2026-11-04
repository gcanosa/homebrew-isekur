class Isekur < Formula
  desc "IRC client with a terminal UI, webchat and E2E encryption"
  homepage "https://github.com/gcanosa/iSekur"
  url "https://github.com/gcanosa/iSekur/archive/refs/tags/v0.5.1.tar.gz"
  sha256 "4ee507d7a46eaf6c3c86675429e0329576a72edd973316fdda3b458bb650b4c4"
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
