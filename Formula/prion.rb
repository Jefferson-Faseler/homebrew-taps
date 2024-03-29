# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Prion < Formula
  desc "A vim package manager, designed for use with pathogen"
  homepage "https://github.com/Jefferson-Faseler/prion"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Jefferson-Faseler/prion/releases/download/v0.4.0/prion_0.4.0_Darwin_arm64.tar.gz"
      sha256 "e9315278688ddc54da87f90a1901d686d135137cd8f6b64a980f15bf23273b16"

      def install
        bin.install "prion"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Jefferson-Faseler/prion/releases/download/v0.4.0/prion_0.4.0_Darwin_x86_64.tar.gz"
      sha256 "f328338466eee7166d383b3c4d833461c237adedacf8f7996ed70d85df50c63b"

      def install
        bin.install "prion"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Jefferson-Faseler/prion/releases/download/v0.4.0/prion_0.4.0_Linux_arm64.tar.gz"
      sha256 "be28f29139937da5aa38e75032b9538533386db9edb216d25fbae2a7eff81541"

      def install
        bin.install "prion"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Jefferson-Faseler/prion/releases/download/v0.4.0/prion_0.4.0_Linux_x86_64.tar.gz"
      sha256 "8b20a71b6eb6e1f1a32d6881e1baf845affc63141900bf1cdf5569f1e4bd9d67"

      def install
        bin.install "prion"
      end
    end
  end

  depends_on "git"

  test do
    system "#{bin}/prion -v"
  end
end
