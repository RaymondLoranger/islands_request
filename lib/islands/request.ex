# ┌───────────────────────────────────────────────────────────────────────┐
# │ Inspired by the book "Functional Web Development" by Lance Halvorsen. │
# └───────────────────────────────────────────────────────────────────────┘
defmodule Islands.Request do
  use PersistConfig

  @book_ref Application.get_env(@app, :book_ref)

  @moduledoc """
  Defines the `request` type for the _Game of Islands_.
  \n##### #{@book_ref}
  """

  alias Islands.{Coord, Island, Player, PlayerID}

  @type t ::
          {}
          | {:add_player, String.t(), Player.gender(), pid}
          | {:position_island, PlayerID.t(), Island.type(), Coord.row(),
             Coord.col()}
          | {:position_all_islands, PlayerID.t()}
          | {:set_islands, PlayerID.t()}
          | {:guess_coord, PlayerID.t(), Coord.row(), Coord.col()}
          | {:stop, PlayerID.t()}
          | {:tally, PlayerID.t()}
end
