require 'formula'

class TokyoCabinet <Formula
  url 'http://1978th.net/tokyocabinet/tokyocabinet-1.4.39.tar.gz'
  homepage 'http://1978th.net/tokyocabinet'
  sha1 '0cc77e1eeea1e767d6ffbfd9a640602a'

  def install
    system "./configure", "--prefix=#{prefix}", "--enable-fastest",
            "--libdir=#{lib}", "--includedir=#{include}"
    system "make"
    system "make install"
  end
end
