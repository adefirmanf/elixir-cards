defmodule Elixircard do
  @moduledoc """
  Documentation for Elixircard.
  """

  @doc """
    Create a deck cards
  """
  def create_deck do
    values = ["Ace", "Two", "Three", "Four"]
    suits = ["Hearts", "Clover", "Diamonds", "Spades"]

    for suit <- suits, value <- values do   
      "#{value} #{suit}"
    end

  end
  @doc """
  asld;
    Do randomize from deck parameter
  """
  def shuffle(deck) do
    Enum.shuffle(deck)
  end
  @doc """
    Determines whether a deck contains a given card
  """
  def contains?(deck, card) do 
    Enum.member?(deck, card)
  end

  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end
end
