class ShellGptAT093 < Formula
  include Language::Python::Virtualenv

  desc "A command-line productivity tool powered by GPT-3 and GPT-4, will help you accomplish your tasks faster and more efficiently"
  homepage "https://github.com/TheR1D/shell_gpt"
  url "https://github.com/TheR1D/shell_gpt/archive/refs/tags/0.9.3.tar.gz"
  sha256 "cdd8545a79cdd706e199e41b0aa119a829c9a687331762e69ea95946d3d729a3"
  license "MIT"
  head "https://github.com/TheR1D/shell_gpt", branch: "main"

  depends_on "python@3"

  # shell_gpt
  # ├─ requests
  # │  ├─ charset_normalizer
  # │  ├─ idna
  # │  ├─ urllib3
  # │  └─ certifi
  # ├─ typer
  # │  ├─ click
  # │  └─ typing-extensions
  # ├─ click
  # └─ distro

  resource "certifi" do
    url "https://github.com/certifi/python-certifi/archive/refs/tags/2023.05.07.tar.gz"
    sha256 "3ee59191c133d4c3c921c075fe4e8bec7c25a16d02143f0ee7de47f7f22cfd0f"
  end

  resource "charset_normalizer" do
    url "https://github.com/Ousret/charset_normalizer/archive/refs/tags/3.1.0.tar.gz"
    sha256 "0ca96d2ffef13e7062c53df8619e97b910343d1e14b4b92ee71bc61d2d18ced4"
  end

  resource "click" do
    url "https://github.com/pallets/click/archive/refs/tags/8.1.3.tar.gz"
    sha256 "abb9959ec2d6cf198f70ca78ec2a5cd74110a6de728ecd19d8892ff65576f184"
  end

  resource "distro" do
    url "https://github.com/python-distro/distro/archive/refs/tags/v1.8.0.tar.gz"
    sha256 "dbe04e1801d9f6015036b1b5d7220ab2c37ce4b054db9cca9ac85764f95c2523"
  end

  resource "idna" do
    url "https://github.com/kjd/idna/archive/refs/tags/v3.4.tar.gz"
    sha256 "afbfa0caebd4872b38ab1af86b37bd4f46d4fccc8d5ce226cb9ee91b91196848"
  end

  resource "requests" do
    url "https://github.com/psf/requests/archive/refs/tags/v2.31.0.tar.gz"
    sha256 "24bc1acfdf14f8b94cb2b6a8c38ef9a99bdd146a2976b5a2db7706fba0bcb7cd"
  end

  resource "typer" do
    url "https://github.com/tiangolo/typer/archive/refs/tags/0.9.0.tar.gz"
    sha256 "64cec3f6cf47a0059b5c0f79ca04d2791101a9013c6e189590890fe796c7f8ec"
  end

  resource "typing-extensions" do
    url "https://github.com/python/typing_extensions/archive/refs/tags/4.6.3.tar.gz"
    sha256 "14a7279d1e2b13d9f24acecab576e8c82a066173e5e620782a95e6856eca615e"
  end

  resource "urllib3" do
    url "https://github.com/urllib3/urllib3/archive/refs/tags/2.0.3.tar.gz"
    sha256 "7afa5d1ff1be73a5863322f6cdf8ac091d3fc6c13130afb62f2378e92714ce46"
  end

  def install
    virtualenv_install_with_resources(using: "python@3")
  end
end
