# Personal manifest for Stephen Taylor
# stephen.taylor@oneiota.co.uk
#
class people::staylor89 {

  include teams::platform
  include projects::new-starter-form
  include phpstorm
  include projects::itsoneiotaOSS

  $home     = "/Users/${::boxen_user}"

  # $dotfiles = "${home}/.dotfiles"
  #  repository { $dotfiles:
  #    source  => 'robrokosz/dotfiles'
  #  }

  }
