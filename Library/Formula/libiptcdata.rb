require 'formula'

class Libiptcdata < Formula
  url 'http://sourceforge.net/projects/libiptcdata/files/libiptcdata/1.0.4/libiptcdata-1.0.4.tar.gz'
  homepage 'http://libiptcdata.sourceforge.net/'
  sha1 '2e967be3aee9ae5393f208a3df2b52e08dcd98c8'

  depends_on 'gettext'

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end
