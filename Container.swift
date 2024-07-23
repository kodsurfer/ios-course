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

func makeOpaqueContainer<T>(_ item: T) -> some Container {
    var stack = Stack<T>()
    stack.push(item)
    return stack
}

class AnyContainer<T>: Container {
    private let _add: (T) -> Void
    private let _remove: () -> T?
    
    init<C: Container>(_ container: C) where C.Item == T {
        _add = container.add
        _remove = container.remove
    }
    
    func add(_ item: T) {
        _add(item)
    }
    
    func remove() -> T? {
        return _remove()
    }
}
