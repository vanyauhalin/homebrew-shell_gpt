class ShellGptAT093 < Formula
  include Language::Python::Virtualenv

  desc "A command-line productivity tool powered by GPT-3 and GPT-4, will help you accomplish your tasks faster and more efficiently"
  homepage "https://github.com/TheR1D/shell_gpt"
  url "https://github.com/TheR1D/shell_gpt/archive/refs/tags/0.9.3.tar.gz"
  sha256 "cdd8545a79cdd706e199e41b0aa119a829c9a687331762e69ea95946d3d729a3"
  license "MIT"
  head "https://github.com/TheR1D/shell_gpt", branch: "main"

  depends_on "python@3"

  resource "typer" do
    url "https://github.com/tiangolo/typer/archive/refs/tags/0.9.0.tar.gz"
    sha256 "64cec3f6cf47a0059b5c0f79ca04d2791101a9013c6e189590890fe796c7f8ec"
  end

  def install
    virtualenv_install_with_resources(using: "python@3")
  end
end
