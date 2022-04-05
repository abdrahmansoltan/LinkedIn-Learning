class Queue {
    var queueArray = [String]()
    
    //enqueue (add items to back of array)
    func enqueue(item:String) {
        self.queueArray.append(item)
    }
    
    //dequeue (remove item from front of array)
    func dequeue()->String? {
        // here we use first instead of last
        if self.queueArray.first != nil {
            let firstString = self.queueArray.first
            self.queueArray.removeFirst()
            return firstString!
        } else {
            return nil
        }
    }
    
    //peek
    func peek() -> String? {
        if self.queueArray.first != nil {
            return self.queueArray.first
        } else {
            return nil
        }
    }
}