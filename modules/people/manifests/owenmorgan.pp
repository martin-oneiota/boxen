# Personal manifest for Owen Morgan
# owen.morgan@oneiota.co.uk
#
class people::owenmorgan {

  include teams::platform

  $home     = "/Users/${::boxen_user}"
  $dotfiles = "${home}/.dotfiles"

  osx::global::expand_print_dialog
  osx::dock::clear_dock
  osx::dock::autohide
  osx::dock::hide_indicator_lights
  osx::finder::show_all_on_desktop
  osx::finder::unhide_library
  class { 'osx::mouse::button_mode':
      mode => 2
  }
  include sublime_text::v2

  #  repository { $dotfiles:
  #    source  => 'owenmorgan/dotfiles'
  #  }

}
