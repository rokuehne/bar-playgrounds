import Cocoa

struct Object: Hashable {}

protocol OrderProvider {}

extension OrderProvider {

	static func orderedCollection(_ unorderedCollection: Set<Object>) -> [Object] {
		return unorderedCollection.sorted(by: { lhs, rhs in
			return true
		})
	}

}

protocol ObjectProcessingProvider {

	static func orderedCollection(_ unorderedCollection: Set<Object>) -> [Object]

}

extension ObjectProcessingProvider {

	static func acquiredAndOrderedObjectsFromVoid() -> [Object] {
		let objects: Set<Object> = [Object(), Object(), Object()]
		return Self.orderedCollection(objects)
	}

}

