# Team manifest for the MESH platform team.
#
class teams::platform {
  include teams::dev
  include brewcask
  include fig

  class {'virtualbox':
    version     => '4.3.20',
    patch_level => '96996',
  }

  homebrew::tap { 'Caskroom/cask': }
  package {
    'mercurial' :
      ensure => present;
  }
  package {
    'ant':
      ensure => present;
  }

  ruby_gem {
    'puppet':
      gem           => 'puppet',
      ruby_version  => '*';
    'hiera':
      gem           => 'hiera',
      ruby_version  => '*';
    'facter':
      gem           => 'facter',
      ruby_version  => '*';
    'librarian-puppet':
      gem          => 'librarian-puppet',
      ruby_version => '*';
  }

}
