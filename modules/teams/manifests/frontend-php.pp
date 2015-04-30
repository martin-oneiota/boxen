# Team manifest for front-end PHP devs.
#
class teams::frontend-php {
    include teams::dev
    include brewcask
    include fig

    class { 'php::global':
        version => '5.4.10'
    }
    include php::composer
}
