class projects::new-starter-form {
  php::project { 'new-starter-form':
    source        => 'itsoneiota/new-starter-form',
    nginx         => 'php/nginx/nginx.conf.erb',
    php           => '5.4.11',
    mysql         => true,
  }
}
