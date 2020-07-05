class Psqldef < Formula
  desc 'The easiest idempotent schema management by SQL.'
  homepage 'https://github.com/k0kubun/sqldef'
  url 'https://github.com/k0kubun/sqldef.git', tag: 'v0.5.20'
  head 'https://github.com/k0kubun/sqldef.git'

  def install
    os = `uname -s`.strip.downcase
    arch = `uname -m`.strip
    arch = 'amd64' if arch == 'x86_64'

    system 'curl', '-o', 'psqldef.zip', '-sL', "https://github.com/k0kubun/sqldef/releases/download/v#{version}/psqldef_#{os}_#{arch}.zip"
    system 'unzip', 'psqldef.zip'
    bin.install 'psqldef'
  end
end
