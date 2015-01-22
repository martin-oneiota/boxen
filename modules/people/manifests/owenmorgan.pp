# Personal manifest for Owen Morgan
# owen.morgan@oneiota.co.uk
#
class people::owenmorgan {

  include teams::platform

  $home     = "/Users/${::boxen_user}"
  $dotfiles = "${home}/.dotfiles"

  #  repository { $dotfiles:
  #    source  => 'owenmorgan/dotfiles'
  #  }

}
