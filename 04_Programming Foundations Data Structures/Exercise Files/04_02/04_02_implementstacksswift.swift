class Stack {
    // defining a stack that contains string data type
    var stackArray = [String]()
    // push items
    func push(item:String) {
        self.stackArray.append(item)
    }
    
    //pop and ask if there is a value of string or null ?
    func pop()->String? {
        if self.stackArray.last != nil {
            let lastString = self.stackArray.last
            // remove last item
            self.stackArray.removeLast()
            return lastString!
        } else { // if last item is null >>(stack is empty)
            return nil
        }
    }
    
    //peek (look at the top of the stack but not remove it)
    func peek() -> String? {
        if self.stackArray.last != nil {
            return self.stackArray.last
        } else {
            return nil
        }
    }
}