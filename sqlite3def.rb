class Sqlite3def < Formula
  desc 'The easiest idempotent schema management by SQL.'
  homepage 'https://github.com/sqldef/sqldef'
  url 'https://github.com/sqldef/sqldef.git', tag: 'v3.1.9'
  head 'https://github.com/sqldef/sqldef.git'

  def install
    os = `uname -s`.strip.downcase
    arch = {
      'x86_64'  => 'amd64',
      'aarch64' => 'arm64',
      'arm64'   => 'arm64',
    }.fetch(`uname -m`.strip)

    system 'curl', '-o', 'sqlite3def.zip', '-sL', "https://github.com/sqldef/sqldef/releases/download/v#{version}/sqlite3def_#{os}_#{arch}.zip"
    system 'unzip', 'sqlite3def.zip'
    bin.install 'sqlite3def'
  end
end
