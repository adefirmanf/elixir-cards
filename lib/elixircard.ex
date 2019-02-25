defmodule Elixircard do
  @moduledoc """
  Documentation for Elixircard.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Elixircard.hello()
      :world

  """
  def create_deck   do
    values = ["Ace", "Two", "Three", "Four"]
    suits = ["Hearts", "Clover", "Diamonds", "Spades"]

    for suit <- suits, value <- values do    
      "#{value} #{suit}"
    end

  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, card) do 
    Enum.member?(deck, card)
  end

end
