# Team manifest for the MESH platform team.
#
class teams::platform {
  include teams::dev
  include brewcask
  include fig

  include php::composer

  class {'virtualbox':
    version     => '4.3.20',
    patch_level => '96996',
  }

}
