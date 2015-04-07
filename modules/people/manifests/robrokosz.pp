# Personal manifest for Owen Morgan
# robert.rokosz@oneiota.co.uk
#
class people::robrokosz {

  include teams::platform

  $home     = "/Users/${::boxen_user}"

  # $dotfiles = "${home}/.dotfiles"
  #  repository { $dotfiles:
  #    source  => 'robrokosz/dotfiles'
  #  }

  }
