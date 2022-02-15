class Vaws < Formula
  version '0.3.1'
  homepage 'https://github.com/st1t/vaws'
  if OS.mac?
    url "https://github.com/st1t/vaws/releases/download/v0.3.1/vaws_0.3.1_darwin_amd64.tar.gz"
    sha256 '59f09ff8bc63a6b6a2296f46475d6f54d29e1fec8de1c97553f16607c3e15087'
  end
  if OS.linux?
    url "https://github.com/st1t/vaws/releases/download/v0.3.1/vaws_0.3.1_linux_amd64.tar.gz"
    sha256 'faee08a2d35de0f48ee29dd38df8a7f29a08db360921413d7ae71c8b4c86ed81'
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
