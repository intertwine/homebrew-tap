# typed: strict
# frozen_string_literal: true

# Formula for observational-memory.
class ObservationalMemory < Formula
  include Language::Python::Virtualenv

  desc "Unmaintained legacy cross-agent memory and search"
  homepage "https://github.com/intertwine/observational-memory"
  url "https://files.pythonhosted.org/packages/8e/00/117fae233323bb5a98a58c0a38b596480607219eb5f857c4744a9ad2495e/observational_memory-0.10.1.tar.gz"
  sha256 "ccf4ffe4a56b894e8f33c87f04bf4df74f3a82a1a4728c262192e4b68b158724"
  license "MIT"
  deprecate! date: "2026-09-05", because: :unmaintained

  depends_on "jq"
  depends_on "python@3.13"

  on_arm do
    resource "cffi" do
      url "https://files.pythonhosted.org/packages/55/41/4c7042f317b9217502988f0873af87e16ad606dc20f84e546e3e6ce9764c/cffi-2.1.1-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "19ee6127ee34de7d83ce3d371ebc5ed91addbdcc39f9ab15ce4eb35a4e534971"
    end

    resource "cryptography" do
      url "https://files.pythonhosted.org/packages/ba/19/797e2aaac9df6a66f1550f49979dc1b1e39ecd2077501c30efa81e8d5d67/cryptography-50.0.1-cp311-abi3-macosx_11_0_arm64.whl"
      sha256 "b8f852c65863251b9e3a1b8c150ce21e59b522dbb6a7d4bc80e680d38388e986"
    end

    resource "jiter" do
      url "https://files.pythonhosted.org/packages/d0/2b/c3eaf16f5d7c9bad66ea32f40a95bd169b29a91217fcc7f081375157e99c/jiter-0.16.0-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "d28bb3c26762358dadf3e5bf0bccd29ae987d65e6988d2e6f49829c76b003c09"
    end

    resource "numpy" do
      url "https://files.pythonhosted.org/packages/65/60/f2d208d366f263f39c6e69ed309290717aab41078b6d04c9be2a84fa2a07/numpy-2.5.2-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "52c808f96484f5571a5cc863775ce50247c17dfb3b0361f8ed6b4b0456f80080"
    end

    resource "pydantic-core" do
      url "https://files.pythonhosted.org/packages/21/43/6323b1f8b217780454c61304bcd2b38ae4762f50754414124603ccc90bb2/pydantic_core-2.46.5-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "f332f0e72a5a0400141f830744e141bf9f97917878dbe968669e8a7fefea78ff"
    end
  end

  on_intel do
    resource "cffi" do
      url "https://files.pythonhosted.org/packages/4b/8d/a0a47a0c9e413a658623d014e91e74a50cdd2c423f7ccfd44086ef767f90/cffi-2.0.0-cp313-cp313-macosx_10_13_x86_64.whl"
      sha256 "00bdf7acc5f795150faa6957054fbbca2439db2f775ce831222b66f192f03beb"
    end

    resource "cryptography" do
      url "https://files.pythonhosted.org/packages/1b/bc/ee4137cbbe105652c0ee4252792b78fc8e7afa4b8e61d9d5dc05a7f45731/cryptography-48.0.1-cp311-abi3-macosx_10_9_universal2.whl"
      sha256 "3e4a1a3232eef2e6c732827d5722db29a0cc8b27af2a4d865b094cf954be9ca1"
    end

    resource "jiter" do
      url "https://files.pythonhosted.org/packages/91/c0/555fc60473d30d66894ba825e63615e3be7524fac23858356afa7a38906c/jiter-0.16.0-cp313-cp313-macosx_10_12_x86_64.whl"
      sha256 "41977aa5654023948c2dae2a81cbf9c43343954bef1cd59a154dd15a4d84c195"
    end

    resource "numpy" do
      url "https://files.pythonhosted.org/packages/f5/d2/6b24738a0ef4557d189b150046cd07823c50e4273e8aebd651222e24306f/numpy-2.5.2-cp313-cp313-macosx_10_13_x86_64.whl"
      sha256 "8e4cb9a754c8a0c62eaa88273a5fba3391f4a610d1dee893c0755da31c083f15"
    end

    resource "pydantic-core" do
      url "https://files.pythonhosted.org/packages/f5/37/5abe39a8372a61d3dc3c1338fc504281c01b32fdb3169cd7187153b56d3e/pydantic_core-2.46.5-cp313-cp313-macosx_10_12_x86_64.whl"
      sha256 "b7ca9034437b6022f941f4857459562ee00a560b97e7cce8a0ec5a74fc6766e0"
    end
  end

  preserve_rpath

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/99/91/8acff4f5e50511b911bbccb72b8628a49c68ce14148cd9f6431094859a90/annotated_types-0.8.0-py3-none-any.whl"
    sha256 "f072f4d804ea359e4eaf198b1af7a8b0943881a87f31bb764f8bf219bb9419e0"
  end

  resource "anthropic" do
    url "https://files.pythonhosted.org/packages/dd/e3/34a88f0e1e854022a352d67f72ca9baa8b952d4541315088411ba2bfbc2a/anthropic-1.4.0-py3-none-any.whl"
    sha256 "590e85bff75b713a123b03f586d68f02266b5fdc49f70dd75f721ced93a4716c"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/12/b8/4bd346e22b28902df4d651910f5242c28d84e4a5c2435ca5c3f797ed7e2e/anyio-4.15.1-py3-none-any.whl"
    sha256 "6152fdbbf9a77fdec97731721bebf7c4c44f7c29b424b0065826173efc7ed101"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/0b/a7/71ac2cff56fec219ed242bb11b8efb69fcc4bec75db06fb7bfe35de520e6/certifi-2026.7.22-py3-none-any.whl"
    sha256 "62f22742b58a1a33014a2b6b706588a8d7e2a88ae7bd1a6ebe8c992928483775"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/58/50/6c0d534c5f134586a8e1ba4e330569e32f057e33372ae556463212fb4cd3/click-8.5.0-py3-none-any.whl"
    sha256 "255bc9599cf7748b4b1a446ccc735421bd08a2ae529a8b88597d3de5664ee360"
  end

  resource "docstring-parser" do
    url "https://files.pythonhosted.org/packages/a7/5f/ed01f9a3cdffbd5a008556fc7b2a08ddb1cc6ace7effa7340604b1d16699/docstring_parser-0.18.0-py3-none-any.whl"
    sha256 "b3fcbed555c47d8479be0796ef7e19c2670d428d72e96da63f3a40122860374b"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/04/4b/29cac41a4d98d144bf5f6d33995617b185d14b22401f75ca86f384e87ff1/h11-0.16.0-py3-none-any.whl"
    sha256 "63cf8bbe7522de3bf65932fda1d9c2772064ffb3dae62d55932da54b31cb6c86"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/7e/f5/f66802a942d491edb555dd61e3a9961140fd64c90bce1eafd741609d334d/httpcore-1.0.9-py3-none-any.whl"
    sha256 "2d400746a40668fc9dec9810239072b40b4484b640a8c38fd654a024c7a1bf55"
  end

  resource "httpcore2" do
    url "https://files.pythonhosted.org/packages/d2/74/d370e55600d9bcfa0d9794b0166126d49291a3d2b20c268fc98c453a4948/httpcore2-2.12.0-py3-none-any.whl"
    sha256 "7e04258ce01013d7d615e5b910a3b27fac937d7a95038227e79652b4ba3b4ceb"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/2a/39/e50c7c3a983047577ee07d2a9e53faf5a69493943ec3f6a384bdc792deb2/httpx-0.28.1-py3-none-any.whl"
    sha256 "d909fcccc110f8c7faf814ca82a9a4d816bc5a6dbfea25d6591d6985b8ba59ad"
  end

  resource "httpx2" do
    url "https://files.pythonhosted.org/packages/c8/95/411ba65569158e862368917aaf56597f3e5fa3b91b0502919638465a08f3/httpx2-2.12.0-py3-none-any.whl"
    sha256 "cc8b6eecb8661c146b8f89a60e97456ee086e91a784ed31ac450c3a9e613dd36"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/57/b0/0e52c878c53f245edd3a11020f20979b3f490f245af532c7cae3027754b5/idna-3.19-py3-none-any.whl"
    sha256 "815e7be7a7806d54abb586dc943addc79e8b2ee16915059658cbeff4b1b43bf4"
  end

  resource "openai" do
    url "https://files.pythonhosted.org/packages/24/a4/c7e89d3bfb8b7c7ffa38ec9fe527bccf4df723f752fb11bdb3da6c750b76/openai-3.8.0-py3-none-any.whl"
    sha256 "514736aa1e4ef1033c1209ad53897392845ccd4f2c4fae6413b2cf5f91c2c926"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/0c/c3/44f3fbbfa403ea2a7c779186dc20772604442dde72947e7d01069cbe98e3/pycparser-3.0-py3-none-any.whl"
    sha256 "b727414169a36b7d524c1c3e31839a521725078d7b2ff038656844266160a992"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/eb/47/c95ffc2009878c7aac0c5e08528022dcb885933252a88b5f170058014464/pydantic-2.13.5-py3-none-any.whl"
    sha256 "346a034f080da3755d8e9cb5e00e8b07de1d39e4f6e2c87d8ab7cafa0b269a73"
  end

  resource "rank-bm25" do
    url "https://files.pythonhosted.org/packages/2a/21/f691fb2613100a62b3fa91e9988c991e9ca5b89ea31c0d3152a3210344f9/rank_bm25-0.2.2-py3-none-any.whl"
    sha256 "7bd4a95571adadfc271746fa146a4bcfd89c0cf731e49c3d1ad863290adbe8ae"
  end

  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/e9/44/75a9c9421471a6c4805dbf2356f7c181a29c1879239abab1ea2cc8f38b40/sniffio-1.3.1-py3-none-any.whl"
    sha256 "2f6da418d1f1e0fddd844478f41680e794e6051915791a034ff65e5f100525a2"
  end

  resource "truststore" do
    url "https://files.pythonhosted.org/packages/19/97/56608b2249fe206a67cd573bc93cd9896e1efb9e98bce9c163bcdc704b88/truststore-0.10.4-py3-none-any.whl"
    sha256 "adaeaecf1cbb5f4de3b1959b42d41f6fab57b2b1666adb59e89cb0b53361d981"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/49/d3/b8441a820a491ddfc024b0b0cf0393375b75ea13866d9c66727e54c2fc80/typing_extensions-4.16.0-py3-none-any.whl"
    sha256 "481caa481374e813c1b176ada14e97f1f67a4539ce9cfeb3f350d78d6370c2e8"
  end

  resource "typing-inspection" do
    url "https://files.pythonhosted.org/packages/67/81/4add07e5172b7ac40d8ed5ff580409a7801a4fe26d529bdd915401dabfbe/typing_inspection-0.4.4-py3-none-any.whl"
    sha256 "65b8397ba37ccbce054456aaccddfc91e6e3083c92824df348d96ca832f3f147"
  end

  def install
    venv = virtualenv_create(libexec, "python3.13")
    python = Formula["python@3.13"].opt_bin/"python3.13"

    resources.each do |resource|
      wheel = buildpath/File.basename(resource.url)
      cp resource.cached_download, wheel
      system python, "-m", "pip", "--python=#{libexec/"bin/python"}", "install", "--no-deps", wheel
    end

    venv.pip_install_and_link(buildpath)
  end

  test do
    assert_match "Usage: om", shell_output("#{bin}/om --help")
    assert_match "Observational Memory Status", shell_output("#{bin}/om status")
  end
end
