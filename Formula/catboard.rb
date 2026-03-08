class Catboard < Formula
  desc "Copy file contents to clipboard with PDF text extraction and OCR"
  homepage "https://github.com/VerilyPete/catboard"
  version "0.2.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VerilyPete/catboard/releases/download/v0.2.8/catboard-v0.2.8-aarch64-apple-darwin.tar.gz"
      sha256 "574a1e79f483af73f6d12171ad58d5a8e5e54fa15b24134a81799db8728f61ac"
    end
  end

  def install
    bin.install "catboard"
    bin.install "catboard-ocr"
    pkgshare.install "Copy to Clipboard.workflow"
  end

  def caveats
    <<~EOS
      To enable Finder right-click integration, run:
        cp -r "#{pkgshare}/Copy to Clipboard.workflow" ~/Library/Services/

      Then right-click any file in Finder to see "Copy to Clipboard" under Quick Actions.

      For the Finder toolbar button and extension, also install:
        brew install --cask VerilyPete/tap/catboard-finder
    EOS
  end

  test do
    assert_match "catboard", shell_output("#{bin}/catboard --version")
  end
end
