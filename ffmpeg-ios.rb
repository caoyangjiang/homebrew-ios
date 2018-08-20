class FfmpegIos < Formula
  desc "Improved tinyxml (in memory efficiency and size)"
  homepage "http://github.com/caoyangjiang/ffmpeg-ios"
  url "https://github.com/caoyangjiang/ffmpeg-ios/archive/0.0.1.tar.gz"
  sha256 "e1c0f21d54856b8d2edd2d4f082fae52f016c4e625a42781586076d36eb7074e"
  head "http://github.com/hypevr/hvr-codec-ios.git"

  depends_on "cmake"     => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end
