void main() {
  var deck = new Deck();
  //  deck.shuffle();
  //  print(deck);
  //  print(deck.deal(5));
  // 	print(deck);
  deck.removeCard('Five', 'Spades');
  print(deck);
}

class Deck {
	List<Card> cards = [];
  
  Deck() {
    var ranks = ['Ace', 'Two', 'Three', 'Four', 'Five'];
    var suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades'];

    // Create a deck

    for (var suit in suits) {
      for (var rank in ranks) {
        var card = new Card(rank, suit);
        cards.add(card);
      }
    }
  }
  
  // Convert to string

  toString() {
    return cards.toString();
  }
  
  // Shuffling a list

  shuffle() {
    cards.shuffle();
  }
  
  cardsWithSuit(String suit){
    cards.where((card) => card.suit == suit);
  }
  
  // Sublists and setting type within parameters

  deal(int handSize) {
    var hand = cards.sublist(0, handSize);
    cards = cards.sublist(handSize);
    
    return hand;
  }
  
  // Instead of having multiple return statements...

  removeCard(String rank, String suit) {
    cards.removeWhere((card) => card.rank == rank && card.suit == suit);
  }
}

class Card {
  String rank;
  String suit;
  
  toString() {
    return '${rank} of ${suit}';
  }
  
  Card(this.rank, this.suit);
}