class people::rossmcf {

  $home     = "/Users/${::boxen_user}"
  $my       = "${home}/my"
  $dotfiles = "${my}/dotfiles"

  file { $my:
    ensure  => directory
  }

#  repository { $dotfiles:
#    source  => 'jbarnette/dotfiles',
#    require => File[$my]
#  }

  include onepassword
  include skype
  include textexpander

  class { 'omnifocus':
    version => '2.0.4'
  }

}
