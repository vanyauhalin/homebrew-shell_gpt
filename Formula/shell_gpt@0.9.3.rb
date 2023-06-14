class ShellGptAT093 < Formula
  include Language::Python::Virtualenv

  desc "A command-line productivity tool powered by GPT-3 and GPT-4, will help you accomplish your tasks faster and more efficiently"
  homepage "https://github.com/TheR1D/shell_gpt"
  url "https://github.com/TheR1D/shell_gpt/archive/refs/tags/0.9.3.tar.gz"
  sha256 "83bcd0f628b7f2304c513d27f128e471c9c6964a423b8f35ec6676ca2771a4c5"
  license "MIT"
  head "https://github.com/TheR1D/shell_gpt", branch: "main"

  depends_on "python@3"

  def install
    virtualenv_install_with_resources(using: "python@3")
  end
end
