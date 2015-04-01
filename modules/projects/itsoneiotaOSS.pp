class projects::itsoneiotaOSS {

  boxen::project { 'itsoneiotaOSS':
    dotenv        => true,
    elasticsearch => false,
    mysql         => false,
    nginx         => true,
    redis         => false,
    source        => 'itsoneiota/itsoneiota.github.io'
  }
}
