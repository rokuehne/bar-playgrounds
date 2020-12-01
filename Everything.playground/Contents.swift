import Cocoa

// MARK: Currying

// Rounding Value: 100, 5 -> 0, 55 -> 100

func curryRounded(toNextValue nextValue: Int) -> (_ value: Int) -> Int {
	return { value in
		return value
	}
}

let roundedIntegerToHundred = curryRounded(toNextValue: 100)(175)


// MARK: Functions & Expressions

func simpleRoundA(_ value: Double) -> Double {
	return value.rounded()
}

let simpleRoundB = { (_ value: Double) -> Double in
	return value.rounded()
}

let simpleRoundC: (Double) -> Double = { value in
	return value.rounded()
}


// MARK: Enums & Values

enum FuckItNumeric {
	case integer(value: Int)
	case float(value: Float)
}

func roundedNumeric(_ numeric: FuckItNumeric?) -> Float? {
	guard let numeric = numeric else {
		return nil
	}

	switch numeric {
	case .integer(let value):
		return Float(value)
	case .float(let value):
		return value.rounded()
	}
}

let myNumeric = FuckItNumeric.integer(value: 5)
let myRoundedNumeric = roundedNumeric(myNumeric)


// MARK: Enums

enum NetworkError: String {
	case invalidHost
	case resourceNotFound
}

enum GraphQLError {
	case genericError
	case dataSource(source: String)
}

let errors: [GraphQLError] = [
	.dataSource(source: "order-api"),
	.dataSource(source: "transaction-processing-api")
]

for error in errors {
	if case GraphQLError.dataSource = error {

	}

	switch error {
	case .dataSource:
		break
	default:
		break
	}
}


// MARK: Computed Properties

struct NumberCollection {

	let identifier: String
	let numbers: [Int]

	var sortedNumbers: [Int] { numbers.sorted() }

}

let myCol = NumberCollection(identifier: "test", numbers: [12, 7, 9])
myCol.sortedNumbers


// MARK: Function Overloading

func op(_ value: Int, _ dontUseMe: Float? = nil) {}

func op(_ value: Int, _ dontUseMe: String? = nil) {}

let number: Float? = nil
op(10, number)


// MARK: Enums & Conformances

enum PickUpStrategy: String, CaseIterable {
	case none
	case floor
	case everything
}

let distinctStrategy: PickUpStrategy = .everything
let rawValueStrategy = PickUpStrategy(rawValue: "none")

// let printableStrategies = CleaningStrategy.allCases.map { (strategy: CleaningStrategy) -> String in strategy.rawValue }
// let printableStrategies = CleaningStrategy.allCases.map({ strategy in strategy.rawValue })
// let printableStrategies = PickUpStrategy.allCases.map { $0.rawValue }
let printableStrategies = PickUpStrategy.allCases.map { strategy in strategy.rawValue }




let entries = [
	"Name"
	"Another Name"
]

let cities = ["Amsterdam", "Copenhagen"]
