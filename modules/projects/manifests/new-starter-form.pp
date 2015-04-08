class projects::new-starter-form {
  php::project { 'new-starter-form':
    source        => 'git@bitbucket.org:oneiota/new-starter-form.git',
    nginx         => 'php/nginx/nginx.conf.erb',
    php           => '5.4.11',
    mysql         => true,
  }
}
