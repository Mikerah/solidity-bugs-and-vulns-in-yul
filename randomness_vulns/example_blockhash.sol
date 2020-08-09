/**
 *Submitted for verification at Etherscan.io on 2017-02-25
*/

pragma solidity >=0.4.2;

library Deck {
	// returns random number from 0 to 51
	// let's say 'value' % 4 means suit (0 - Hearts, 1 - Spades, 2 - Diamonds, 3 - Clubs)
	//			 'value' / 4 means: 0 - King, 1 - Ace, 2 - 10 - pip values, 11 - Jacket, 12 - Queen

	function deal(address player, uint8 cardNumber) internal returns (uint8) {
		uint b = block.number;
		uint timestamp = block.timestamp;
		return uint8(uint256(keccak256(abi.encodePacked(blockhash(b), player, cardNumber, timestamp))) % 52);
	}

	function valueOf(uint8 card, bool isBigAce) internal pure returns (uint8) {
		uint8 value = card / 4;
		if (value == 0 || value == 11 || value == 12) { // Face cards
			return 10;
		}
		if (value == 1 && isBigAce) { // Ace is worth 11
			return 11;
		}
		return value;
	}

	function isAce(uint8 card) internal pure returns (bool) {
		return card / 4 == 1;
	}

	function isTen(uint8 card) internal pure returns (bool) {
		return card / 4 == 10;
	}
}


contract BlackJack {
	using Deck for *;

	uint public minBet = 50 * 1e20; // 0.05 eth
	uint public maxBet = 5 ether;

	uint8 BLACKJACK = 21;

  enum GameState { Ongoing, Player, Tie, House }

	struct Game {
		address player; // address игрока
		uint bet; // стывка

		uint8[] houseCards; // карты диллера
		uint8[] playerCards; // карты игрока

		GameState state; // состояние
		uint8 cardsDealt;
	}

	mapping (address => Game) public games;

	modifier gameIsGoingOn() {
		if (games[msg.sender].player == address(0) || games[msg.sender].state != GameState.Ongoing) {
			revert(); // game doesn't exist or already finished
		}
		_;
	}

	event Deal(
        bool isUser,
        uint8 _card
    );

    event GameStatus(
    	uint8 houseScore,
    	uint8 houseScoreBig,
    	uint8 playerScore,
    	uint8 playerScoreBig
    );

    event Log(
    	uint8 value
    );

	constructor() {

	}

	fallback () external payable {
		
	}

	// starts a new game
	function deal() public payable {
		if (games[msg.sender].player != address(0) && games[msg.sender].state == GameState.Ongoing) {
			revert(); // game is already going on
		}

		if (msg.value < minBet || msg.value > maxBet) {
			revert(); // incorrect bet
		}

		uint8[] memory houseCards = new uint8[](1);
		uint8[] memory playerCards = new uint8[](2);

		// deal the cards
		playerCards[0] = Deck.deal(msg.sender, 0);
		emit Deal(true, playerCards[0]);
		houseCards[0] = Deck.deal(msg.sender, 1);
		emit Deal(false, houseCards[0]);
		playerCards[1] = Deck.deal(msg.sender, 2);
		emit Deal(true, playerCards[1]);

		games[msg.sender] = Game({
			player: msg.sender,
			bet: msg.value,
			houseCards: houseCards,
			playerCards: playerCards,
			state: GameState.Ongoing,
			cardsDealt: 3
		});

		checkGameResult(games[msg.sender], false);
	}

	// deals one more card to the player
	function hit() public gameIsGoingOn {
		uint8 nextCard = games[msg.sender].cardsDealt;
		games[msg.sender].playerCards.push(Deck.deal(msg.sender, nextCard));
		games[msg.sender].cardsDealt = nextCard + 1;
		emit Deal(true, games[msg.sender].playerCards[games[msg.sender].playerCards.length - 1]);
		checkGameResult(games[msg.sender], false);
	}

	// finishes the game
	function stand() public gameIsGoingOn {

		(uint8 houseScore, uint8 houseScoreBig) = calculateScore(games[msg.sender].houseCards);

		while (houseScoreBig < 17) {
			uint8 nextCard = games[msg.sender].cardsDealt;
			uint8 newCard = Deck.deal(msg.sender, nextCard);
			games[msg.sender].houseCards.push(newCard);
			games[msg.sender].cardsDealt = nextCard + 1;
			houseScoreBig += Deck.valueOf(newCard, true);
			emit Deal(false, newCard);
		}

		checkGameResult(games[msg.sender], true);
	}

	// @param finishGame - whether to finish the game or not (in case of Blackjack the game finishes anyway)
	function checkGameResult(Game storage game, bool finishGame) private {
		// calculate house score
		(uint8 houseScore, uint8 houseScoreBig) = calculateScore(game.houseCards);
		// calculate player score
		(uint8 playerScore, uint8 playerScoreBig) = calculateScore(game.playerCards);

		emit GameStatus(houseScore, houseScoreBig, playerScore, playerScoreBig);

		if (houseScoreBig == BLACKJACK || houseScore == BLACKJACK) {
			if (playerScore == BLACKJACK || playerScoreBig == BLACKJACK) {
				// TIE
				if (!msg.sender.send(game.bet)) revert(); // return bet to the player
				games[msg.sender].state = GameState.Tie; // finish the game
				return;
			} else {
				// HOUSE WON
				games[msg.sender].state = GameState.House; // simply finish the game
				return;
			}
		} else {
			if (playerScore == BLACKJACK || playerScoreBig == BLACKJACK) {
				// PLAYER WON
				if (game.playerCards.length == 2 && (Deck.isTen(game.playerCards[0]) || Deck.isTen(game.playerCards[1]))) {
					// Natural blackjack => return x2.5
					if (!msg.sender.send((game.bet * 5) / 2)) revert(); // send prize to the player
				} else {
					// Usual blackjack => return x2
					if (!msg.sender.send(game.bet * 2)) revert(); // send prize to the player
				}
				games[msg.sender].state = GameState.Player; // finish the game
				return;
			} else {

				if (playerScore > BLACKJACK) {
					// BUST, HOUSE WON
					emit Log(1);
					games[msg.sender].state = GameState.House; // finish the game
					return;
				}

				if (!finishGame) {
					return; // continue the game
				}
				
                // недобор
				uint8 playerShortage = 0; 
				uint8 houseShortage = 0;

				// player decided to finish the game
				if (playerScoreBig > BLACKJACK) {
					if (playerScore > BLACKJACK) {
						// HOUSE WON
						games[msg.sender].state = GameState.House; // simply finish the game
						return;
					} else {
						playerShortage = BLACKJACK - playerScore;
					}
				} else {
					playerShortage = BLACKJACK - playerScoreBig;
				}

				if (houseScoreBig > BLACKJACK) {
					if (houseScore > BLACKJACK) {
						// PLAYER WON
						if (!msg.sender.send(game.bet * 2)) revert(); // send prize to the player
						games[msg.sender].state = GameState.Player;
						return;
					} else {
						houseShortage = BLACKJACK - houseScore;
					}
				} else {
					houseShortage = BLACKJACK - houseScoreBig;
				}
				
                // ?????????????????????? почему игра заканчивается?
				if (houseShortage == playerShortage) {
					// TIE
					if (!msg.sender.send(game.bet)) revert(); // return bet to the player
					games[msg.sender].state = GameState.Tie;
				} else if (houseShortage > playerShortage) {
					// PLAYER WON
					if (!msg.sender.send(game.bet * 2)) revert(); // send prize to the player
					games[msg.sender].state = GameState.Player;
				} else {
					games[msg.sender].state = GameState.House;
				}
			}
		}
	}

	function calculateScore(uint8[] memory cards) private pure returns (uint8, uint8) {
		uint8 score = 0;
		uint8 scoreBig = 0; // in case of Ace there could be 2 different scores
		bool bigAceUsed = false;
		for (uint i = 0; i < cards.length; ++i) {
			uint8 card = cards[i];
			if (Deck.isAce(card) && !bigAceUsed) { // doesn't make sense to use the second Ace as 11, because it leads to the losing
				scoreBig += Deck.valueOf(card, true);
				bigAceUsed = true;
			} else {
				scoreBig += Deck.valueOf(card, false);
			}
			score += Deck.valueOf(card, false);
		}
		return (score, scoreBig);
	}

	function getPlayerCard(uint8 id) public gameIsGoingOn view returns(uint8) {
		if (id < 0 || id > games[msg.sender].playerCards.length) {
			revert();
		}
		return games[msg.sender].playerCards[id];
	}

	function getHouseCard(uint8 id) public gameIsGoingOn view returns(uint8) {
		if (id < 0 || id > games[msg.sender].houseCards.length) {
			revert();
		}
		return games[msg.sender].houseCards[id];
	}

	function getPlayerCardsNumber() public gameIsGoingOn view returns(uint) {
		return games[msg.sender].playerCards.length;
	}

	function getHouseCardsNumber() public gameIsGoingOn view returns(uint) {
		return games[msg.sender].houseCards.length;
	}

	function getGameState() public view returns (uint8) {
		if (games[msg.sender].player == address(0)) {
			revert(); // game doesn't exist
		}

		Game storage game = games[msg.sender];

		if (game.state == GameState.Player) {
			return 1;
		}
		if (game.state == GameState.House) {
			return 2;
		}
		if (game.state == GameState.Tie) {
			return 3;
		}

		return 0; // the game is still going on
	}

}