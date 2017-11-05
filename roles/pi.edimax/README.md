pi.edimax
=========

Sets up a Reltek 8192cu card (from Edimax).

Requirements
------------

This role is used on older Pis that require an external USB wireless interface.
Note that running this role will require a reboot.

Role Variables
--------------

edimax_interface: Interface to set up. wlan0 is a very probable candidate.
edimax_ssid: SSID to connect to.
edimax_psk: The role assumed that WPA is used, so this is the WPA pre-shared key.

Dependencies
------------

None

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: pi.edimax }

License
-------

BSD

Author Information
------------------

Alexander Tarlinder
