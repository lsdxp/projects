https://subscription.packtpub.com/book/networking-and-servers/9781788472906/3/ch03lvl1sec25/distributing-puppet-manifests


sudo puppet apply --noop --show_diff /examples/file_hello.pp


puppet resource package openssl

puppet describe service


puppet describe --list


The path attribute
We've seen that every Puppet resource has a title (a quoted string followed by a colon). In the file_hello example, the title of the file resource is '/tmp/hello.txt'. It's easy to guess that Puppet is going to use this value as the path of the created file. In fact, path is one of the attributes you can specify for a file, but if you don't specify it, Puppet will use the title of the resource as the value of path.

common attribue for 

file: source , owner, group , mode, recurse=> true

P.S 'ensure => present' creates 0 file size
     'ensure => directory' for managing directories
     'ensure => link'
package:
     absent,installed,purged
     
     package { 'openssl':
          ensure => '1.0.2g-1ubuntu4.8',
     }
     
     provider

service:

     service { 'ntp':
       ensure    => running,
       enable    => true,
       hasstatus => false,
       pattern   => 'ntpd',
     }
     
     
    service { 'ntp':
     ensure  => running,
     enable  => true,
     restart => '/bin/echo Restarting >>/tmp/debug.log && systemctl restart ntp',
    }
    
In the extremely rare event that the service cannot be stopped or started using the default service management command, Puppet also provides the stop and start attributes so that you can specify custom commands to stop and start the service, just the same way as with the restart attribute. If you need to use either of these, though, it's probably safe to say that you're having a bad day.

    
