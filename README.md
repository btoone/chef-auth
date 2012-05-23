Todo
====

* make the basic auth username and password attributes

Description
===========

Creates a directory and password file for basic auth

This recipe is a work in progress. To use you'll need to 

* Add the mod auth recipe from the apache cookbook
* Add the basic auth directive to your vhost files
* Create a new in the password file (use either htpasswd or openssl passwd -1 "yourpassword")

   <Location />
     AuthType basic
     AuthName "Private"
     AuthUserFile /etc/apache2/passwd/passwords
     Require valid-user
   </Location>

Requirements
============

Attributes
==========

Usage
=====

