class MTGODecklists::MTGODeck
  attr_accessor :cards, :user, :win_record

  def initialize
    @cards = {}
  end

  def self.decklist(url)
    deck = self.new

    deck.user = "SPERLING"
    deck.cards = {"creature" => {"Dryad Arbor" => 1,"Dark Confidant" => 3}, "sideboard" => {"Null Rod" => 1, "Swords to Plowshares" => 2}}
    deck.win_record = "(5-0)"
    deck
  end

  def display
    puts "#{self.user} #{self.win_record}"
    self.cards.each do |key, values|
      puts "#{key}"
      self.cards[key].each do |name, count|
        puts "#{count} #{name}"
      end
    end
  end
end

#self.cards = {
  #"creature" => {
    #"Dryad Arbor" => 1,"Dark Confidant" => 3
    #}
    #"sideboard" => {
      #"Null Rod" => 1, "Swords to Plowshares" => 2
    #}
  #}
