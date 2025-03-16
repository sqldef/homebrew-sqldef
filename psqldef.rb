class Psqldef < Formula
  desc 'The easiest idempotent schema management by SQL.'
  homepage 'https://github.com/k0kubun/sqldef'
  url 'https://github.com/k0kubun/sqldef.git', tag: 'v1.0.5'
  head 'https://github.com/k0kubun/sqldef.git'

  def install
    os = `uname -s`.strip.downcase
    arch = {
      'x86_64'  => 'amd64',
      'aarch64' => 'arm64',
      'arm64'   => 'arm64',
    }.fetch(`uname -m`.strip)

    system 'curl', '-o', 'psqldef.zip', '-sL', "https://github.com/k0kubun/sqldef/releases/download/v#{version}/psqldef_#{os}_#{arch}.zip"
    system 'unzip', 'psqldef.zip'
    bin.install 'psqldef'
  end
end
