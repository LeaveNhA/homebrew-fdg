# Warning, this Formula is broken.
# This was supposed to be my first Formula.
# But, due to Dg's limitations of version on Python,
# I couldn't manage to write a healthy Formula.
#
# Main problem is:
# It works under limited versions of Python environments.
# I couldn't manage to setup environments (like, 3.6.15)
# and then install the package and finish.
#
# If you know how to do that, please inform me. Thanks!
class Dg < Formula
  include Language::Python::Virtualenv
  desc "Doge language. Slow. Stupid. Absolutely adorable."
  homepage "http://pyos.github.io/dg/"
  url "https://github.com/pyos/dg/archive/refs/heads/master.zip"
  version "1.1.0"
  sha256 "b5086214ae790815bc25fb8a56305368c28da9772971187bdd3f5248c1f90aa1"

  depends_on "python@3.7"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "python", "-m", "dg", "-b"
  end

end
