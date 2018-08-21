class FfmpegIos < Formula
  desc "Ffmpeg 3.4.2 for Ios"
  homepage "http://github.com/caoyangjiang/ffmpeg-ios"
  url "https://github.com/caoyangjiang/ffmpeg-ios/archive/0.0.1.tar.gz"
  sha256 "e1c0f21d54856b8d2edd2d4f082fae52f016c4e625a42781586076d36eb7074e"
  head "http://github.com/caoyangjiang/ffmpeg-ios.git"

  bottle do
    root_url "https://s3-us-west-2.amazonaws.com/ffmpeg-ios/"
    cellar :any_skip_relocation
    sha256 "f980bc86ae4518eb5fb64a4c8fc7926ad5f08b94d10c5475e4948fce6fcf0deb" => :high_sierra
  end

  depends_on "cmake"     => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end
