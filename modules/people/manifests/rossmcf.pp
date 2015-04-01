# Personal manifest for Ross McFarlane
# ross@oneiota.co.uk
#
class people::rossmcf {

  include teams::platform
  include projects::itsoneiotaOSS

  $home     = "/Users/${::boxen_user}"
  $dotfiles = "${home}/.dotfiles"

  repository { $dotfiles:
    source  => 'rossmcf/dotfiles'
  }

  include zsh
  include onepassword
  include textexpander
  include caffeine
  include sizeup
  include notational_velocity::nvalt
  include dropbox
  include launchbar
  include sequel_pro
  include phpstorm
  include atom
  include chrome

  include osx::global::tap_to_click
  include osx::dock::2d
  include osx::dock::autohide
  include osx::dock::clear_dock
  include osx::dock::hide_indicator_lights
  include osx::finder::enable_quicklook_text_selection
  include osx::finder::no_file_extension_warnings
  include osx::software_update

  class { 'osx::dock::icon_size':
    size => 128
  }
  class { 'osx::dock::position':
    position => 'bottom'
  }

  # Kill Mac OS UI Sounds (e.g. trash emptying)
  class { 'osx::sound::interface_sound_effects':
    enable => false
  }
  class { 'osx::mouse::button_mode':
    mode => 2
  }

  include fonts::adobe::sourcecodepro

  class { 'omnifocus':
    version => '2.0.4'
  }

}
