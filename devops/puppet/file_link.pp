file { '/etc/this_is_a_link':
  ensure => link,
  target => '/etc/motd',
}
ls -l /etc/this_is_a_link
lrwxrwxrwx 1 root root 9 Aug 31 05:05 /etc/this_is_a_link -> /etc/motd
