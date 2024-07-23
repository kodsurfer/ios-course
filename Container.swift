class Queue<Element> {
    private var items: [Element] = []
    
    func enqueue(_ item: Element) {
        items.append(item)
    }
    
    func dequeue() -> Element? {
        if items.isEmpty {
            return nil
        } else {
            return items.removeFirst()
        }
    }
}

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

var intStack = Stack<Int>()
intStack.push(1)
intStack.push(2)
print(intStack.pop()) // Optional(2)

let stringQueue = Queue<String>()
stringQueue.enqueue("Hello")
stringQueue.enqueue("World")
print(stringQueue.dequeue()) // Optional("Hello")

let opaqueContainer = makeOpaqueContainer("Swift")
print(opaqueContainer.remove()) // Optional("Swift")

let anyContainer = AnyContainer(intStack)
anyContainer.add(3)
print(anyContainer.remove()) // Optional(3)
