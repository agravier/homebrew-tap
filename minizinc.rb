class Minizinc < Formula
  desc "Medium-level constraint modeling language"
  homepage "http://www.minizinc.org"
  url "https://github.com/MiniZinc/libminizinc/releases/download/2.0.6/minizinc-2.0.6-Darwin.tar.gz"
  sha256 "37c5882f255702512d80a20db0260370d3dc599c235552865bad80f59bb0b2a1"

  def install
    bin.install Dir["bin/*"]
    share.install Dir["share/*"]
    doc.install Dir["doc/*"]
  end

  test do
    system bin/"mzn2doc", doc/"functions/warehouses.mzn"
  end
end
