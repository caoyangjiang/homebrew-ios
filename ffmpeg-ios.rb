class FfmpegIos < Formula
  desc "Ffmpeg 3.4.2 for Ios"
  homepage "http://github.com/caoyangjiang/ffmpeg-ios"
  url "https://github.com/caoyangjiang/ffmpeg-ios/archive/0.0.2.tar.gz"
  sha256 "c763b4ea267d81997d3bca1dc3cf193ce7b2a2bc983e33a25306d252a22594d7"
  head "http://github.com/caoyangjiang/ffmpeg-ios.git"

  bottle do
    root_url "https://s3-us-west-2.amazonaws.com/ffmpeg-ios"
    cellar :any_skip_relocation
    sha256 "f980bc86ae4518eb5fb64a4c8fc7926ad5f08b94d10c5475e4948fce6fcf0deb" => :high_sierra
  end

  depends_on "cmake"     => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end
