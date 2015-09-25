cask :v1 => 'prott' do
  version :latest
  sha256 :no_check

  url 'https://prottapp.com/app/gadgets/prott.dmg'
  name 'Prott'
  homepage 'https://prottapp.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Prott.app'
end
