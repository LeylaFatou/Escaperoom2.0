# Escaperoom
## Installations (if not already done):
  * Install Elixir 1.12 or later: [https://elixir-lang.org/install.html](Installation Page)
  * Install Erlang 22 or later: [https://elixir-lang.org/install.html#installing-erlang](Installation Page)
  * Install postgreSQL database: [https://wiki.postgresql.org/wiki/Detailed_installation_guides](Installation guide)
  
The database is handeld by [pgAdmin](https://www.pgadmin.org/). Create a database with the name escaperoom\_dev. It will have a default user that has all the access to the database.

Default user:
* username: postgres
* Something you chose when installing postgreSQL

## To start the Escaperoom:

  * Configure your database in config/dev.exs
    * username: postgres
    * password: Something you chose when installing postgreSQL
  
  * Open gitbash on the folder you want to clone the project in
  * Clone master branch into that folder
  * Move into the project root by typing ```cd EscapeRoom2.0```
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000/items`](http://localhost:4000/items) from your browser.


