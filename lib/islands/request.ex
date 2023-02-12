# ┌───────────────────────────────────────────────────────────────────────┐
# │ Inspired by the book "Functional Web Development" by Lance Halvorsen. │
# └───────────────────────────────────────────────────────────────────────┘
defmodule Islands.Request do
  @moduledoc """
  Defines the request type for the _Game of Islands_.

  ##### Inspired by the book [Functional Web Development](https://pragprog.com/titles/lhelph/functional-web-development-with-elixir-otp-and-phoenix/) by Lance Halvorsen.
  """

  alias Islands.{Coord, Island, Player, PlayerID}

  @typedoc "Request for the Game of Islands"
  @type t ::
          {}
          | {:add_player, Player.name(), Player.gender(), pid}
          | {:position_island, PlayerID.t(), Island.type(), Coord.row(),
             Coord.col()}
          | {:position_all_islands, PlayerID.t()}
          | {:set_islands, PlayerID.t()}
          | {:guess_coord, PlayerID.t(), Coord.row(), Coord.col()}
          | {:stop, PlayerID.t()}
          | {:tally, PlayerID.t()}
end
