protocol Container {
    associatedtype Item
    mutating func add(_ item: Item)
    func remove() -> Item?
}

extension Stack: Container {
    mutating func add(_ item: Element) {
        push(item)
    }
    
    func remove() -> Element? {
        return pop()
    }
}

extension Queue: Container {
    func add(_ item: Element) {
        enqueue(item)
    }
    
    func remove() -> Element? {
        return dequeue()
    }
}
