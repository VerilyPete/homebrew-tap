cask "catboard-finder" do
  version "0.2.7"
  sha256 "f02025ff32beb39dd81110cf8236ca8b350f75850ed302a140b7e024d2b67d41"

  url "https://github.com/VerilyPete/catboard/releases/download/v#{version}/CatboardFinder-v#{version}.dmg"
  name "CatboardFinder"
  desc "Finder extension for copying file contents to clipboard"
  homepage "https://github.com/VerilyPete/catboard"

  depends_on macos: ">= :sequoia"

  app "CatboardFinder.app"

  caveats <<~EOS
    After installation, open CatboardFinder from /Applications,
    then enable the extension in System Settings > Extensions > Finder Extensions.

    You can also add the Catboard button to your Finder toolbar:
    right-click the toolbar > Customize Toolbar > drag Catboard in.

    For the CLI tools, also install the formula:
      brew install VerilyPete/tap/catboard
  EOS
end
