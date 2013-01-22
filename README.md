# About
This is a vagrant sanbox for [storm](https://github.com/nathanmarz/storm), it includes the puppet module and the fpm-recipe in order to package and install storm.

It uses the [opskeleton](https://github.com/narkisr/opskeleton) sandbox structure

# Usage

First build zeromq jzmq and storm packages (follow exact order):


```bash 
$ vagrant box add ubuntu-12.10_puppet-3 http://ubuntuone.com/7goAh5NodKGtCF0mgbThgb
$ sudo aptitude install uuid-dev libtool -y 
# now build packages
$ cd fpm-recipes/zeromq/
$ fpm-cook
$ cd fpm-recipe/jzqm/
$ fpm-cook
$ cd fpm-recipe/storm/
$ fpm-cook
$ vagrant up
$ wget 192.168.1.10:8080
```

Now lets start a nimbus and 2 distributed workers:

```bash 
$ vagrant up
```


