# Personal manifest for Owen Morgan
# owen.morgan@oneiota.co.uk
#
class people::owenmorgan {

  include teams::platform

  $home     = "/Users/${::boxen_user}"
  $dotfiles = "${home}/.dotfiles"

  include osx::global::expand_print_dialog
  include osx::dock::clear_dock
  include osx::dock::autohide
  include osx::dock::hide_indicator_lights
  include osx::finder::show_all_on_desktop
  include osx::finder::unhide_library
  class { 'osx::mouse::button_mode':
    mode => 2
  }

  include sublime_text::v2
  include alfred

  class osx_config::safari {

    boxen::osx_defaults {

      'Allow hitting the Backspace key to go to the previous page in history':
      ensure => present,
      key    => 'com.apple.Safari.ContentPageGroupIdentifier.WebKit2BackspaceKeyNavigationEnabled',
      domain => 'com.apple.Safari',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;
      
    }
  }

  #  repository { $dotfiles:
  #    source  => 'owenmorgan/dotfiles'
  #  }

  }
