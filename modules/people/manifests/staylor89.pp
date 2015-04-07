# Personal manifest for Owen Morgan
# stephen.taylor@oneiota.co.uk
#
class people::staylor89 {

  include teams::platform

  $home     = "/Users/${::boxen_user}"

  # $dotfiles = "${home}/.dotfiles"
  #  repository { $dotfiles:
  #    source  => 'robrokosz/dotfiles'
  #  }

  }
