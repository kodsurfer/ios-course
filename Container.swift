protocol Container {
    associatedtype Item
    mutating func add(_ item: Item)
    func remove() -> Item?
}
