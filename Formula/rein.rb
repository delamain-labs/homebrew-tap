class Rein < Formula
  desc "Declarative language and runtime for AI agent orchestration"
  homepage "https://github.com/delamain-labs/rein"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/delamain-labs/rein/releases/download/v0.2.0/rein-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "b29d67fbe2db550bba352eb591d486466b735255f64d6a807a70cc32dbc6f881"
    else
      url "https://github.com/delamain-labs/rein/releases/download/v0.2.0/rein-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "0ef66c18109dc1feffed0fdaf8d26e09df662134693b258f39eb5ea46bbc33ed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/delamain-labs/rein/releases/download/v0.2.0/rein-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1ba2d03af283cd14c1624510affe18ac182d53a8ebdfeac6ad2e3e1b51ea9b17"
    else
      url "https://github.com/delamain-labs/rein/releases/download/v0.2.0/rein-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b21a80b9362472b28c3aca8b8806fee34707f6ac9e84445eac0f15c196f9d7b2"
    end
  end

  def install
    bin.install "rein"
  end

  test do
    assert_match "rein-lang", shell_output("#{bin}/rein --version")
  end
end
