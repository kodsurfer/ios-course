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
