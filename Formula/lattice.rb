class Lattice < Formula
  desc "A crystallization-based programming language with a unique phase system"
  homepage "https://lattice-lang.org"
  version "0.3.28"
  license "BSD-3-Clause"

  on_macos do
    if Hardware::CPU.arm?
      url "https://lattice-lang.org/releases/v0.3.28/clat-darwin-aarch64"
      sha256 "99fe9d03a461e2cfc586e1880b0ff87b774ff0aac57a3a4c20b939b5f5658fc4"
    else
      url "https://lattice-lang.org/releases/v0.3.28/clat-darwin-x86_64"
      sha256 "7748329e93c8388b72726a37a5ec91babaab368ac83875a130a92e89f36c46da"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://lattice-lang.org/releases/v0.3.28/clat-linux-aarch64"
      sha256 "137aabffba910814f6afa4196f05ca0cb5ae93b244b6818804dc2b39a58eed85"
    else
      url "https://lattice-lang.org/releases/v0.3.28/clat-linux-x86_64"
      sha256 "ef99b91047d34242253f8be18904675f05f409afd42b3ba4815b2fef3b638d7a"
    end
  end

  def install
    bin.install Dir["clat-*"].first => "clat"
  end

  test do
    assert_match "Lattice v#{version}", shell_output("#{bin}/clat --version")
  end
end
