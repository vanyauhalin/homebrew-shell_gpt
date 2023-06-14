class ShellGptAT093 < Formula
  include Language::Python::Virtualenv

  desc "A command-line productivity tool powered by GPT-3 and GPT-4, will help you accomplish your tasks faster and more efficiently"
  homepage "https://github.com/TheR1D/shell_gpt"
  url "https://github.com/TheR1D/shell_gpt/archive/refs/tags/0.9.3.tar.gz"
  sha256 "cdd8545a79cdd706e199e41b0aa119a829c9a687331762e69ea95946d3d729a3"
  license "MIT"
  head "https://github.com/TheR1D/shell_gpt", branch: "main"

  depends_on "python@3"

  resource "requests" do
    url "https://github.com/psf/requests/archive/refs/tags/v2.31.0.tar.gz"
    sha256 "24bc1acfdf14f8b94cb2b6a8c38ef9a99bdd146a2976b5a2db7706fba0bcb7cd"
  end

  resource "typer" do
    url "https://github.com/tiangolo/typer/archive/refs/tags/0.9.0.tar.gz"
    sha256 "64cec3f6cf47a0059b5c0f79ca04d2791101a9013c6e189590890fe796c7f8ec"
  end

  resource "click" do
    url "https://github.com/pallets/click/archive/refs/tags/8.1.3.tar.gz"
    sha256 "abb9959ec2d6cf198f70ca78ec2a5cd74110a6de728ecd19d8892ff65576f184"
  end

  resource "typing-extensions" do
    url "https://github.com/python/typing_extensions/archive/refs/tags/4.6.3.tar.gz"
    sha256 "14a7279d1e2b13d9f24acecab576e8c82a066173e5e620782a95e6856eca615e"
  end

  resource "distro" do
    url "https://github.com/python-distro/distro/archive/refs/tags/v1.8.0.tar.gz"
    sha256 "dbe04e1801d9f6015036b1b5d7220ab2c37ce4b054db9cca9ac85764f95c2523"
  end

  def install
    virtualenv_install_with_resources(using: "python@3")
  end
end
