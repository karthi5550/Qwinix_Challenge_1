postgresql Cookbook
===================
  This cookbook makes the installation of PostgreQSQL ,creating the user and database.

Requirements
------------
  Here used the repository apt-add,update the apt package and used postgresql commands.


Attributes
----------
default['postgresql']['source_list']   => adding in apt-repository
default['postgresql']['code_name']     => code name of the provider
default['postgresql']['user']          => create user in postgreSQL
default['postgresql']['database_name'] => create database in postgresql

Usage
-----
#### postgresql::default

e.g.
Just include `postgresql` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[postgresql]"
  ]
}
```

Author
-------------------
Author : Karthikeyan .N

