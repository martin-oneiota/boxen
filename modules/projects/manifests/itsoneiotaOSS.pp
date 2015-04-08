class projects::itsoneiotaOSS {
  boxen::project { 'itsoneiotaOSS':
    nginx         => true,
    source        => 'itsoneiota/itsoneiota.github.io'
  }
}
