# typed: strict
# frozen_string_literal: true

# StockPilot CLI + bundled MCP server.
#
# Generated tap formula: regenerated end-to-end by the cli-release CI on
# every ``cli-v*`` tag. Hand edits to the resource block will be lost on
# the next release; bump deps in cli/pyproject.toml instead and let the
# generator script (cli/scripts/gen-brew-resources.py) re-resolve them.
class Stockpilot < Formula
  include Language::Python::Virtualenv

  desc "Command-line client and bundled MCP server for StockPilot"
  homepage "https://stockpilot.tesserix.app"
  url "https://github.com/tesserix/stock-analysis/archive/refs/tags/cli-v0.0.1.tar.gz"
  sha256 "6483d1e7efc8da11e058a1a65b53786e3b544e1bf44a6d59617dea3a3ac0cb7b"
  license "Apache-2.0"
  head "https://github.com/tesserix/stock-analysis.git", branch: "main"

  # cryptography's sdist requires cargo at build time.
  depends_on "rust" => :build
  depends_on "python@3.12"

  resource "annotated_doc" do
    url "https://files.pythonhosted.org/packages/1e/d3/26bf1008eb3d2daa8ef4cacc7f3bfdc11818d111f7e2d0201bc6e3b49d45/annotated_doc-0.0.4-py3-none-any.whl"
    sha256 "571ac1dc6991c450b25a9c2d84a3705e2ae7a53467b5d111c24fa8baabbed320"
  end

  resource "annotated_types" do
    url "https://files.pythonhosted.org/packages/78/b6/6307fbef88d9b5ee7421e68d78a9f162e0da4900bc5f5793f6d3d0e34fb8/annotated_types-0.7.0-py3-none-any.whl"
    sha256 "1f02e8b43a8fbbc3f3e0d4f0f4bfc8131bcb4eebe8849b8e5c773f3a1c582a53"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/da/42/e921fccf5015463e32a3cf6ee7f980a6ed0f395ceeaa45060b61d86486c2/anyio-4.13.0-py3-none-any.whl"
    sha256 "08b310f9e24a9594186fd75b4f73f4a4152069e3853f1ed8bfbf58369f4ad708"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/64/b4/17d4b0b2a2dc85a6df63d1157e028ed19f90d4cd97c36717afef2bc2f395/attrs-26.1.0-py3-none-any.whl"
    sha256 "c647aa4a12dfbad9333ca4e71fe62ddc36f4e63b2d260a37a8b83d2f043ac309"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/22/30/7cd8fdcdfbc5b869528b079bfb76dcdf6056b1a2097a662e5e8c04f42965/certifi-2026.4.22-py3-none-any.whl"
    sha256 "3cb2210c8f88ba2318d29b0388d1023c8492ff72ecdde4ebdaddbb13a31b1c4a"
  end

  resource "cffi" do
    on_macos do
      on_arm do
        url "https://files.pythonhosted.org/packages/df/a2/781b623f57358e360d62cdd7a8c681f074a71d445418a776eef0aadb4ab4/cffi-2.0.0-cp312-cp312-macosx_11_0_arm64.whl"
        sha256 "8eca2a813c1cb7ad4fb74d368c2ffbbb4789d377ee5bb8df98373c2cc0dee76c"
      end
    end
    on_linux do
      on_arm do
        url "https://files.pythonhosted.org/packages/d5/72/12b5f8d3865bf0f87cf1404d8c374e7487dcf097a1c91c436e72e6badd83/cffi-2.0.0-cp312-cp312-manylinux2014_aarch64.manylinux_2_17_aarch64.whl"
        sha256 "b21e08af67b8a103c71a250401c78d5e0893beff75e28c53c98f4de42f774062"
      end
      on_intel do
        url "https://files.pythonhosted.org/packages/78/2d/7fa73dfa841b5ac06c7b8855cfc18622132e365f5b81d02230333ff26e9e/cffi-2.0.0-cp312-cp312-manylinux2014_x86_64.manylinux_2_17_x86_64.whl"
        sha256 "3e17ed538242334bf70832644a32a7aae3d83b57567f9fd60a26257e992b79ba"
      end
    end
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/ae/44/c1221527f6a71a01ec6fbad7fa78f1d50dfa02217385cf0fa3eec7087d59/click-8.3.3-py3-none-any.whl"
    sha256 "a2bf429bb3033c89fa4936ffb35d5cb471e3719e1f3c8a7c3fff0b8314305613"
  end

  resource "cryptography" do
    on_macos do
      on_arm do
        url "https://files.pythonhosted.org/packages/a4/98/40dfe932134bdcae4f6ab5927c87488754bf9eb79297d7e0070b78dd58e9/cryptography-47.0.0-cp311-abi3-macosx_10_9_universal2.whl"
        sha256 "160ad728f128972d362e714054f6ba0067cab7fb350c5202a9ae8ae4ce3ef1a0"
      end
      on_intel do
        url "https://files.pythonhosted.org/packages/a4/98/40dfe932134bdcae4f6ab5927c87488754bf9eb79297d7e0070b78dd58e9/cryptography-47.0.0-cp311-abi3-macosx_10_9_universal2.whl"
        sha256 "160ad728f128972d362e714054f6ba0067cab7fb350c5202a9ae8ae4ce3ef1a0"
      end
    end
    on_linux do
      on_arm do
        url "https://files.pythonhosted.org/packages/34/c6/2733531243fba725f58611b918056b277692f1033373dcc8bd01af1c05d4/cryptography-47.0.0-cp311-abi3-manylinux2014_aarch64.manylinux_2_17_aarch64.whl"
        sha256 "b9a8943e359b7615db1a3ba587994618e094ff3d6fa5a390c73d079ce18b3973"
      end
      on_intel do
        url "https://files.pythonhosted.org/packages/00/e3/b27be1a670a9b87f855d211cf0e1174a5d721216b7616bd52d8581d912ed/cryptography-47.0.0-cp311-abi3-manylinux2014_x86_64.manylinux_2_17_x86_64.whl"
        sha256 "f5c15764f261394b22aef6b00252f5195f46f2ca300bec57149474e2538b31f8"
      end
    end
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/04/4b/29cac41a4d98d144bf5f6d33995617b185d14b22401f75ca86f384e87ff1/h11-0.16.0-py3-none-any.whl"
    sha256 "63cf8bbe7522de3bf65932fda1d9c2772064ffb3dae62d55932da54b31cb6c86"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/7e/f5/f66802a942d491edb555dd61e3a9961140fd64c90bce1eafd741609d334d/httpcore-1.0.9-py3-none-any.whl"
    sha256 "2d400746a40668fc9dec9810239072b40b4484b640a8c38fd654a024c7a1bf55"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/2a/39/e50c7c3a983047577ee07d2a9e53faf5a69493943ec3f6a384bdc792deb2/httpx-0.28.1-py3-none-any.whl"
    sha256 "d909fcccc110f8c7faf814ca82a9a4d816bc5a6dbfea25d6591d6985b8ba59ad"
  end

  resource "httpx_sse" do
    url "https://files.pythonhosted.org/packages/d2/fd/6668e5aec43ab844de6fc74927e155a3b37bf40d7c3790e49fc0406b6578/httpx_sse-0.4.3-py3-none-any.whl"
    sha256 "0ac1c9fe3c0afad2e0ebb25a934a59f4c7823b60792691f779fad2c5568830fc"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/5d/13/ad7d7ca3808a898b4612b6fe93cde56b53f3034dcde235acb1f0e1df24c6/idna-3.13-py3-none-any.whl"
    sha256 "892ea0cde124a99ce773decba204c5552b69c3c67ffd5f232eb7696135bc8bb3"
  end

  resource "jsonschema" do
    url "https://files.pythonhosted.org/packages/69/90/f63fb5873511e014207a475e2bb4e8b2e570d655b00ac19a9a0ca0a385ee/jsonschema-4.26.0-py3-none-any.whl"
    sha256 "d489f15263b8d200f8387e64b4c3a75f06629559fb73deb8fdfb525f2dab50ce"
  end

  resource "jsonschema_specifications" do
    url "https://files.pythonhosted.org/packages/41/45/1a4ed80516f02155c51f51e8cedb3c1902296743db0bbc66608a0db2814f/jsonschema_specifications-2025.9.1-py3-none-any.whl"
    sha256 "98802fee3a11ee76ecaca44429fda8a41bff98b00a0f2838151b113f210cc6fe"
  end

  resource "markdown_it_py" do
    url "https://files.pythonhosted.org/packages/94/54/e7d793b573f298e1c9013b8c4dade17d481164aa517d1d7148619c2cedbf/markdown_it_py-4.0.0-py3-none-any.whl"
    sha256 "87327c59b172c5011896038353a81343b6754500a08cd7a4973bb48c6d578147"
  end

  resource "mcp" do
    url "https://files.pythonhosted.org/packages/9c/46/f6b4ad632c67ef35209a66127e4bddc95759649dd595f71f13fba11bdf9a/mcp-1.27.0-py3-none-any.whl"
    sha256 "5ce1fa81614958e267b21fb2aa34e0aea8e2c6ede60d52aba45fd47246b4d741"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/b3/38/89ba8ad64ae25be8de66a6d463314cf1eb366222074cfda9ee839c56a4b4/mdurl-0.1.2-py3-none-any.whl"
    sha256 "84008a41e51615a49fc9966191ff91509e3c40b939176e643fd50a5c2196b8f8"
  end

  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/75/a6/a0a304dc33b49145b21f4808d763822111e67d1c3a32b524a1baf947b6e1/platformdirs-4.9.6-py3-none-any.whl"
    sha256 "e61adb1d5e5cb3441b4b7710bea7e4c12250ca49439228cc1021c00dcfac0917"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/0c/c3/44f3fbbfa403ea2a7c779186dc20772604442dde72947e7d01069cbe98e3/pycparser-3.0-py3-none-any.whl"
    sha256 "b727414169a36b7d524c1c3e31839a521725078d7b2ff038656844266160a992"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/f3/0a/fd7d723f8f8153418fb40cf9c940e82004fce7e987026b08a68a36dd3fe7/pydantic-2.13.3-py3-none-any.whl"
    sha256 "6db14ac8dfc9a1e57f87ea2c0de670c251240f43cb0c30a5130e9720dc612927"
  end

  resource "pydantic_core" do
    on_macos do
      on_arm do
        url "https://files.pythonhosted.org/packages/a1/4f/2fb62c2267cae99b815bbf4a7b9283812c88ca3153ef29f7707200f1d4e5/pydantic_core-2.46.3-cp312-cp312-macosx_11_0_arm64.whl"
        sha256 "af8653713055ea18a3abc1537fe2ebc42f5b0bbb768d1eb79fd74eb47c0ac089"
      end
      on_intel do
        url "https://files.pythonhosted.org/packages/4b/cb/5b47425556ecc1f3fe18ed2a0083188aa46e1dd812b06e406475b3a5d536/pydantic_core-2.46.3-cp312-cp312-macosx_10_12_x86_64.whl"
        sha256 "b11b59b3eee90a80a36701ddb4576d9ae31f93f05cb9e277ceaa09e6bf074a67"
      end
    end
    on_linux do
      on_arm do
        url "https://files.pythonhosted.org/packages/50/6e/b7348fd30d6556d132cddd5bd79f37f96f2601fe0608afac4f5fb01ec0b3/pydantic_core-2.46.3-cp312-cp312-manylinux_2_17_aarch64.manylinux2014_aarch64.whl"
        sha256 "75a519dab6d63c514f3a81053e5266c549679e4aa88f6ec57f2b7b854aceb1b0"
      end
      on_intel do
        url "https://files.pythonhosted.org/packages/5e/d5/e3d9717c9eba10855325650afd2a9cba8e607321697f18953af9d562da2f/pydantic_core-2.46.3-cp312-cp312-manylinux_2_17_x86_64.manylinux2014_x86_64.whl"
        sha256 "fb528e295ed31570ac3dcc9bfdd6e0150bc11ce6168ac87a8082055cf1a67395"
      end
    end
  end

  resource "pydantic_settings" do
    url "https://files.pythonhosted.org/packages/01/dd/bebff3040138f00ae8a102d426b27349b9a49acc310fcae7f92112d867e3/pydantic_settings-2.14.0-py3-none-any.whl"
    sha256 "fc8d5d692eb7092e43c8647c1c35a3ecd00e040fcf02ed86f4cb5458ca62182e"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/f4/7e/a72dd26f3b0f4f2bf1dd8923c85f7ceb43172af56d63c7383eb62b332364/pygments-2.20.0-py3-none-any.whl"
    sha256 "81a9e26dd42fd28a23a2d169d86d7ac03b46e2f8b59ed4698fb4785f946d0176"
  end

  resource "pyjwt" do
    url "https://files.pythonhosted.org/packages/e5/7a/8dd906bd22e79e47397a61742927f6747fe93242ef86645ee9092e610244/pyjwt-2.12.1-py3-none-any.whl"
    sha256 "28ca37c070cad8ba8cd9790cd940535d40274d22f80ab87f3ac6a713e6e8454c"
  end

  resource "python_dotenv" do
    url "https://files.pythonhosted.org/packages/0b/d7/1959b9648791274998a9c3526f6d0ec8fd2233e4d4acce81bbae76b44b2a/python_dotenv-1.2.2-py3-none-any.whl"
    sha256 "1d8214789a24de455a8b8bd8ae6fe3c6b69a5e3d64aa8a8e5d68e694bbcb285a"
  end

  resource "python_multipart" do
    url "https://files.pythonhosted.org/packages/99/78/4126abcbdbd3c559d43e0db7f7b9173fc6befe45d39a2856cc0b8ec2a5a6/python_multipart-0.0.27-py3-none-any.whl"
    sha256 "6fccfad17a27334bd0193681b369f476eda3409f17381a2d65aa7df3f7275645"
  end

  resource "referencing" do
    url "https://files.pythonhosted.org/packages/2c/58/ca301544e1fa93ed4f80d724bf5b194f6e4b945841c5bfd555878eea9fcb/referencing-0.37.0-py3-none-any.whl"
    sha256 "381329a9f99628c9069361716891d34ad94af76e461dcb0335825aecc7692231"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/82/3b/64d4899d73f91ba49a8c18a8ff3f0ea8f1c1d75481760df8c68ef5235bf5/rich-15.0.0-py3-none-any.whl"
    sha256 "33bd4ef74232fb73fe9279a257718407f169c09b78a87ad3d296f548e27de0bb"
  end

  resource "rpds_py" do
    on_macos do
      on_arm do
        url "https://files.pythonhosted.org/packages/4d/a1/bca7fd3d452b272e13335db8d6b0b3ecde0f90ad6f16f3328c6fb150c889/rpds_py-0.30.0-cp312-cp312-macosx_11_0_arm64.whl"
        sha256 "6abc8880d9d036ecaafe709079969f56e876fcf107f7a8e9920ba6d5a3878d05"
      end
      on_intel do
        url "https://files.pythonhosted.org/packages/03/e7/98a2f4ac921d82f33e03f3835f5bf3a4a40aa1bfdc57975e74a97b2b4bdd/rpds_py-0.30.0-cp312-cp312-macosx_10_12_x86_64.whl"
        sha256 "a161f20d9a43006833cd7068375a94d035714d73a172b681d8881820600abfad"
      end
    end
    on_linux do
      on_arm do
        url "https://files.pythonhosted.org/packages/65/1c/ae157e83a6357eceff62ba7e52113e3ec4834a84cfe07fa4b0757a7d105f/rpds_py-0.30.0-cp312-cp312-manylinux_2_17_aarch64.manylinux2014_aarch64.whl"
        sha256 "ca28829ae5f5d569bb62a79512c842a03a12576375d5ece7d2cadf8abe96ec28"
      end
      on_intel do
        url "https://files.pythonhosted.org/packages/60/1b/6f8f29f3f995c7ffdde46a626ddccd7c63aefc0efae881dc13b6e5d5bb16/rpds_py-0.30.0-cp312-cp312-manylinux_2_17_x86_64.manylinux2014_x86_64.whl"
        sha256 "47f236970bccb2233267d89173d3ad2703cd36a0e2a6e92d0560d333871a3d23"
      end
    end
  end

  resource "shellingham" do
    url "https://files.pythonhosted.org/packages/e0/f9/0595336914c5619e5f28a1fb793285925a8cd4b432c9da0a987836c7f822/shellingham-1.5.4-py2.py3-none-any.whl"
    sha256 "7ecfff8f2fd72616f7481040475a65b2bf8af90a56c89140852d1120324e8686"
  end

  resource "sse_starlette" do
    url "https://files.pythonhosted.org/packages/ff/07/45c21ed03d708c477367305726b89919b020a3a2a01f72aaf5ad941caf35/sse_starlette-3.4.1-py3-none-any.whl"
    sha256 "6b43cf21f1d574d582a6e1b0cfbde1c94dc86a32a701a7168c99c4475c6bd1d0"
  end

  resource "starlette" do
    url "https://files.pythonhosted.org/packages/0b/c9/584bc9651441b4ba60cc4d557d8a547b5aff901af35bda3a4ee30c819b82/starlette-1.0.0-py3-none-any.whl"
    sha256 "d3ec55e0bb321692d275455ddfd3df75fff145d009685eb40dc91fc66b03d38b"
  end

  resource "tomli" do
    url "https://files.pythonhosted.org/packages/7b/61/cceae43728b7de99d9b847560c262873a1f6c98202171fd5ed62640b494b/tomli-2.4.1-py3-none-any.whl"
    sha256 "0d85819802132122da43cb86656f8d1f8c6587d54ae7dcaf30e90533028b49fe"
  end

  resource "tomli_w" do
    url "https://files.pythonhosted.org/packages/c7/18/c86eb8e0202e32dd3df50d43d7ff9854f8e0603945ff398974c1d91ac1ef/tomli_w-1.2.0-py3-none-any.whl"
    sha256 "188306098d013b691fcadc011abd66727d3c414c571bb01b1a174ba8c983cf90"
  end

  resource "typer" do
    url "https://files.pythonhosted.org/packages/3f/f9/2b3ff4e56e5fa7debfaf9eb135d0da96f3e9a1d5b27222223c7296336e5f/typer-0.25.1-py3-none-any.whl"
    sha256 "75caa44ed46a03fb2dab8808753ffacdbfea88495e74c85a28c5eefcf5f39c89"
  end

  resource "typing_extensions" do
    url "https://files.pythonhosted.org/packages/18/67/36e9267722cc04a6b9f15c7f3441c2363321a3ea07da7ae0c0707beb2a9c/typing_extensions-4.15.0-py3-none-any.whl"
    sha256 "f0fa19c6845758ab08074a0cfa8b7aecb71c999ca73d62883bc25cc018c4e548"
  end

  resource "typing_inspection" do
    url "https://files.pythonhosted.org/packages/dc/9b/47798a6c91d8bdb567fe2698fe81e0c6b7cb7ef4d13da4114b41d239f65d/typing_inspection-0.4.2-py3-none-any.whl"
    sha256 "4ed1cacbdc298c220f1bd249ed5287caa16f34d44ef4e9c3d0cbad5b521545e7"
  end

  resource "uvicorn" do
    url "https://files.pythonhosted.org/packages/31/a3/5b1562db76a5a488274b2332a97199b32d0442aca0ed193697fd47786316/uvicorn-0.46.0-py3-none-any.whl"
    sha256 "bbebbcbed972d162afca128605223022bedd345b7bc7855ce66deb31487a9048"
  end

  def install
    # The CLI source lives under cli/ in the monorepo; cd in so
    # ``virtualenv_install_with_resources`` finds pyproject.toml.
    cd "cli" do
      virtualenv_install_with_resources
    end
  end

  test do
    assert_match "StockPilot CLI", shell_output("#{bin}/stockpilot --help")
    # ``stockpilot config`` reads on-disk state and never touches the
    # network, so it's safe inside Homebrew's sandboxed test runner.
    system bin/"stockpilot", "config"
  end
end
