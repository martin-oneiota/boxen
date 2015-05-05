# Personal manifest for Martin Korner
# martin.korner@oneiota.co.uk
#
class people::martin_oneiota {

    # Where's your home directory?
    $home     = "/Users/${::boxen_user}"

    # Teams you're in.
    include oneiota::environment
    include teams::dev
    include teams::frontend-js
    include teams::frontend-php

    # This is for dotfiles. You should check this out, but maybe not now.
    #$dotfiles = "${home}/.dotfiles"
    #repository { $dotfiles:
    #source  => 'rossmcf/dotfiles'
    #}

    # Apps you'll want
    include caffeine
    include chrome
    include spotify
    include sublime_text::v2

    # OSX Config stuff. I've picked some sane settings for you.
    include osx::global::tap_to_click
    include osx::dock::2d
    include osx::dock::autohide
    include osx::finder::enable_quicklook_text_selection
    include osx::finder::no_file_extension_warnings
    include osx::software_update
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

    # A nice fixed-width font for coding.
    include fonts::adobe::sourcecodepro

}
