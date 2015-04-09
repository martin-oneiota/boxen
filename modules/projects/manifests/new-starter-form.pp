class projects::new-starter-form {
  include mysql
  include php::5_4
  php::project { 'new-starter-form':
    source        => 'itsoneiota/new-starter-form',
    nginx         => 'php/nginx/nginx.conf.erb',
    mysql         => true,
  }
}
