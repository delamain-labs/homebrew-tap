class Rein < Formula
  desc "Declarative language and runtime for AI agent orchestration"
  homepage "https://github.com/delamain-labs/rein"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/delamain-labs/rein/releases/download/v0.1.0/rein-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "da7e8c95bb79ef8aa6f265168af98f3641f6a9bcbaecc50fb92c1cff2838912d"
    else
      url "https://github.com/delamain-labs/rein/releases/download/v0.1.0/rein-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "e8026518bc6653dd7481beb939316ff42a0aaf7c4f11ac63d59ff04a454e2622"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/delamain-labs/rein/releases/download/v0.1.0/rein-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d5fba213dc04a7c623831198cde12a0c09b4df3ac3d05e3cfff1b0a5e92cd989"
    else
      url "https://github.com/delamain-labs/rein/releases/download/v0.1.0/rein-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bc70df20bba813760bdd0d7344e72c8cd401330b1330826964524fd8adf9fc28"
    end
  end

  def install
    bin.install "rein"
  end

  test do
    assert_match "rein-lang", shell_output("#{bin}/rein --version")
  end
end
