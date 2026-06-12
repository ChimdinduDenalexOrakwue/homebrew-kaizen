class Kaizen < Formula
  desc "Observation-graph CLI for Android agent testing"
  homepage "https://github.com/ChimdinduDenalexOrakwue/kaizen"
  version "1.0.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChimdinduDenalexOrakwue/kaizen/releases/download/v1.0.0/kaizen-1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "e703c6d90fd3cbaa611cfe9e1b787041cabe978247441b5de400f1e5121f0ac0"
    else
      url "https://github.com/ChimdinduDenalexOrakwue/kaizen/releases/download/v1.0.0/kaizen-1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "2a60be911a68d4c43477fb13e847c77f6ca94aceda8d64f95feab2325680da58"
    end
  end

  on_linux do
    url "https://github.com/ChimdinduDenalexOrakwue/kaizen/releases/download/v1.0.0/kaizen-1.0.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "aec37599214eee6acb8f435d4c5ddfd8e41f1bfb65b73405579f398eef12378c"
  end

  def install
    bin.install "kaizen"
  end

  test do
    assert_match "kaizen 1.0.0", shell_output("#{bin}/kaizen --version")
  end
end
