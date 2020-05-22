# This file was generated by GoReleaser. DO NOT EDIT.
class Prion < Formula
  desc "A vim package manager, designed for use with pathogen"
  homepage "https://github.com/Jefferson-Faseler/prion"
  version "0.3.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/Jefferson-Faseler/prion/releases/download/v0.3.1/prion_0.3.1_Darwin_x86_64.tar.gz"
    sha256 "049e7ffe099f633918739ec4c70e26b33421221c6e4837b100852495c558769b"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Jefferson-Faseler/prion/releases/download/v0.3.1/prion_0.3.1_Linux_x86_64.tar.gz"
      sha256 "9a969cd3c11a6a68bf22d7db8cbc2691f0e49078ee27ded6352fe888bfeaf9bc"
    end
  end
  
  depends_on "git"

  def install
    bin.install "prion"
  end

  test do
    system "#{bin}/prion -v"
  end
end
