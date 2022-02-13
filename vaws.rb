class Vaws < Formula
  version '0.3.0'
  homepage 'https://github.com/st1t/vaws'
  if OS.mac?
    url "https://github.com/st1t/vaws/releases/download/v0.3.0/vaws_0.3.0_darwin_amd64.tar.gz"
    sha256 '689bb609757fe64d305708dd21290aaebfa9f534d540eea33c7ec5ab17150a24'
  end
  if OS.linux?
    url "https://github.com/st1t/vaws/releases/download/v0.3.0/vaws_0.3.0_linux_amd64.tar.gz"
    sha256 'ae24d74faac4c1299d29668badd8663e93c51e9a475b82b63b3ca8a049412975'
  end
  head 'https://github.com/st1t/vaws.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'vaws'
  end
end
