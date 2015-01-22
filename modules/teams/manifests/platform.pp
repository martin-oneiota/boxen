# Team manifest for the MESH platform team.
#
class teams::platform {
  include teams::dev
  include brewcask
  include docker

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
