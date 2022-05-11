# Reproduction activerecord-7.0.3 MySQL View Error

This is a very simple app that created by only 2 step:
* executed "rails new"
* added a few simple models and migrations

You can run this app using docker-compose.

## Error Reproduction

```sh
$ cd <path to this app>
$ docker-compose up --build

# from another terminal
$ docker-compose run web bin/rails db:create db:migrate
$ docker-compose run web bin/rails runner 'p TestView.count'
Creating reproduction-ar703_web_run ... done
Please specify a valid ruby command or the path of a script to run.
Run 'rails runner -h' for help.

undefined method `match' for nil:NilClass

            match = create_table_info(table_name).match(/`#{field_name}` (.+) DEFAULT ('|\d+|[A-z]+)/)
                                                 ^^^^^^
ERROR: 1
```
