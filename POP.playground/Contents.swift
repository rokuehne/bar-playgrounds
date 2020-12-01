import Cocoa

// Open, Public, Internal, Fileprivate, Private

protocol Announcable {
	var gameName: String { get }
}

struct Game: Announcable {
	let gameName: String
}


struct GameBoard {

	var id = UUID()
	var numberOfPieces: Int = 0

	init() {}

	init?(numberOfPieces: Int) {
		guard numberOfPieces > 0 else {
			return nil
		}

		self.numberOfPieces = numberOfPieces
	}

	init?(numberOfPieces: Double) {
		self.numberOfPieces = Int(numberOfPieces)
	}

}




let mariasGameBoard = GameBoard(numberOfPieces: 8)!
var ostwindsGameBoard = mariasGameBoard   // Copy on Write

mariasGameBoard.id
ostwindsGameBoard.id

ostwindsGameBoard.numberOfPieces = 20
/* what is */ mariasGameBoard.numberOfPieces /* ? */





struct PlayerScore: ExpressibleByIntegerLiteral {
	let value: Int

	init(integerLiteral value: Int) {
		self.value = value
	}
}

let gameScore: PlayerScore = 10
