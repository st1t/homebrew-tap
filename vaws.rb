class Vaws < Formula
  version '0.2.0'
  homepage 'https://github.com/st1t/vaws'
  if OS.mac?
    url "https://github.com/st1t/vaws/releases/download/v0.2.0/vaws_0.2.0_darwin_amd64.tar.gz"
    sha256 'd1991d3ee180f5e045b4140788158713e435705dbffd97a3d88d57392d220cd3'
  end
  if OS.linux?
    url "https://github.com/st1t/vaws/releases/download/v0.2.0/vaws_0.2.0_linux_amd64.tar.gz"
    sha256 '2f67d90399a0606e87c82f39efe8342a68b89c94b8cf17248684e5e77bf9a6d7'
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
