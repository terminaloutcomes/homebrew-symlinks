class Symlinks < Formula
  desc "Symbolic link maintenance utility"
  homepage "https://api.github.com/repos/brandt/symlinks/tags"
  version "v1.4.3"
  url "https://github.com/brandt/symlinks/archive/v#{version}.tar.gz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
  license "MIT"

  def install
    system ENV.cc, "-Wall", "-Wstrict-prototypes", "-O2", "-o", "symlinks", "symlinks.c"
    mkdir man
    cp "symlinks.8", man
    mkdir bin
    cp "symlinks", "#{bin}/"
  end

  test do
    system "#{bin}/symlinks", "-h"
  end
end
