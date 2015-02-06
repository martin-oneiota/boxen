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
    'puppet':
      ensure   => installed,
      provider => 'gem';
    'hiera':
      ensure   => installed,
      provider => 'gem';
    'facter':
      ensure   => installed,
      provider => 'gem';
    'librarian-puppet':
      ensure   => installed,
      provider => 'gem';
  }

}
