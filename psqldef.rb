class Psqldef < Formula
  desc 'The easiest idempotent schema management by SQL.'
  homepage 'https://github.com/k0kubun/sqldef'
  url 'https://github.com/k0kubun/sqldef.git', tag: 'v0.5.20'
  head 'https://github.com/k0kubun/sqldef.git'

  def install
    system 'curl', '-o', 'psqldef.zip', '-sL', "https://github.com/k0kubun/sqldef/releases/download/v#{version}/psqldef_darwin_amd64.zip"
    system 'unzip', 'psqldef.zip'
    bin.install 'psqldef'
  end
end
