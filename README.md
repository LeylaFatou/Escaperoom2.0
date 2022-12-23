# Escaperoom
## Installations (if not already done):
  * Install Elixir 1.12 or later: https://elixir-lang.org/install.html
  * Install Erlang 22 or later: https://elixir-lang.org/install.html#installing-erlang
  * Install postgreSQL database: https://wiki.postgresql.org/wiki/Detailed_installation_guides
  

## To start the Escaperoom:

  * Configure your database in config/dev.exs
    * The password should be the same as the one chosen when installing postgreSQL
    * The database should be the same name as the one chosen when installing postgreSQL
  
  * Open gitbash on the folder you want to clone the project in
  * Clone master branch into that folder
  * Move into the project root by typing cd EscapeRoom2.0
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000/items`](http://localhost:4000/items) from your browser.


