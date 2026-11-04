class Isekur < Formula
  desc "IRC client with a terminal UI, webchat and E2E encryption"
  homepage "https://github.com/gcanosa/iSekur"
  url "https://github.com/gcanosa/iSekur/archive/refs/tags/v0.5.1.tar.gz"
  sha256 "c8aaf003c42ac5ea9fab1aa29da0d901a62555cc7b47141f08578caee345fecc"
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
