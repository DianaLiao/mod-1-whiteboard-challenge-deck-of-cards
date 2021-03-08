require 'pry'

class Deck
  attr_reader :cards

  def initialize
    Card.all.clear

    ranks = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
    suits = ["Hearts", "Clubs", "Spades", "Diamonds"]

    ranks.each do |rank_name|
      suits.each do |suit_name|
        Card.new(suit_name, rank_name)
      end
    end

    @cards = Card.all

  end

  def choose_card
    # @cards.shuffle.pop
    chosen_card = @cards.sample
    @cards.delete(chosen_card)
    #chosen_card

  end


end

class Card

  attr_accessor :suit, :rank

  @@all_cards = []

  def initialize (suit, rank)
    @suit = suit
    @rank = rank

    @@all_cards << self
  end

  def self.all
    @@all_cards
  end






end
