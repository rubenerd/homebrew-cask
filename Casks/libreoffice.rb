cask :v1 => 'libreoffice' do
  if Hardware::CPU.is_32_bit? || MacOS.release < :mountain_lion
    version '4.3.7'
    sha256 '2964a952ab633426df402de2f128cf788354ac622b7c30b25209d185d17617ec'
    # documentfoundation.org is the official download host per the vendor homepage
    url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86/LibreOffice_#{version}_MacOS_x86.dmg"
  else
    version '5.0.1'
    sha256 'fe4857f275ed12cb6095cab7cd1c7ce44221dc5d97c36b478ffcc283624c6932'
    # documentfoundation.org is the official download host per the vendor homepage
    url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64.dmg"
  end
  gpg "#{url}.asc",
      :key_id => 'c2839ecad9408fbe9531c3e9f434a1efafeeaea3'

  name 'LibreOffice'
  homepage 'https://www.libreoffice.org/'
  license :mpl

  app 'LibreOffice.app'
end
