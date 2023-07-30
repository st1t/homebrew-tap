class S3def < Formula
  version '0.3.1'
  homepage 'https://github.com/st1t/s3def'
  if OS.mac?
    if RUBY_PLATFORM.include?("amd64")
      url "https://github.com/st1t/s3def/releases/download/v0.0.1/s3def_0.0.1_darwin_amd64.tar.gz"
      sha256 '4aee583149fd1542897942956b55b41a9e234574340ed5c0ebfba328a24694f2'
    elsif RUBY_PLATFORM.include?("arm64")
      url "https://github.com/st1t/s3def/releases/download/v0.0.1/s3def_0.0.1_darwin_arm64.tar.gz"
      sha256 '0d23b54f9724077c1c52978153ecf485daaf667d9d1130bc8de30b06e69a1863'
    end
  end
  if OS.linux?
    if RUBY_PLATFORM.include?("amd64")
      url "https://github.com/st1t/s3def/releases/download/v0.0.1/s3def_0.0.1_linux_amd64.tar.gz"
      sha256 '831d8f7d4398d155eaa455c12b749e6a907867674e76b8dbc46a48d7a579ab4c'
    elsif RUBY_PLATFORM.include?("arm64")
      url "https://github.com/st1t/s3def/releases/download/v0.0.1/s3def_0.0.1_linux_arm64.tar.gz"
      sha256 '4e43a8de7ce1c593e78d1d8df149b4de080fbb76acab1bfd62d9a5cd37288014'
    end
  end
  head 'https://github.com/st1t/s3def.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 's3def'
  end
end
