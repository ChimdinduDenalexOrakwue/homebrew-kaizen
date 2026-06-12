class Kaizen < Formula
  desc "Observation-graph CLI for Android agent testing"
  homepage "https://github.com/ChimdinduDenalexOrakwue/kaizen"
  version "1.0.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChimdinduDenalexOrakwue/kaizen/releases/download/v1.0.0/kaizen-1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "d37b92706ee6d4c29282153b8bc18e504200eaf0acffe207a95c9fb69bbf5ffe"
    else
      url "https://github.com/ChimdinduDenalexOrakwue/kaizen/releases/download/v1.0.0/kaizen-1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "6457314d72a5d51f49d3f066f7a9f8e2e551b5f4bd172628c94678a8398c918c"
    end
  end

  on_linux do
    url "https://github.com/ChimdinduDenalexOrakwue/kaizen/releases/download/v1.0.0/kaizen-1.0.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "cfe3094379dffe14c11637b4369b298a81a20f2698f528df7239e0da1b58b77f"
  end

  def install
    bin.install "kaizen"
  end

  test do
    assert_match "kaizen 1.0.0", shell_output("#{bin}/kaizen --version")
  end
end
