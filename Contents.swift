import Foundation

//Node must be class and not a struct becasue Classes are reference objects in Swift
class Node <T> {
    var next: Node?
    var last: Node?
    var value: T
    
    init(value: T) {
        self.value = value
    }
}

class LinkedList<T> {
    var HEAD, TAIL : Node<T>?

    init() {
        HEAD = nil
        TAIL = nil
    }
    
    func addNode(val: T){
        let tempNode = Node(value: val)
        guard (HEAD != nil) else{
            HEAD = (tempNode )
            TAIL = (tempNode )
            return
        }
        TAIL?.next = (tempNode )
        TAIL = TAIL!.next
        
    }
    
    func traverseNode(node : Node<T>?){
        guard (node != nil) else{
            print("That node does not exist")
            return
        }
        print(node!.value)
        traverseNode(node: node!.next)
    }
    
    func traverseList(Node head : Node<T>?){
        guard (head != nil) else {
            return
        }
        print(head!.value)
        traverseList(Node: head?.next)
    }
    
    func getFirstNode()-> Node<T>?{
        guard (HEAD != nil) else {
            return nil
        }
        return HEAD!
    }
    
    func getLastNode()-> Node<T>?{
        guard(!isEmpty()) else{
            return nil
        }
        return TAIL
    }
    func isEmpty()-> Bool{
        guard HEAD != nil else {
            return true
        }
        return false
    }
}



var linkedList = LinkedList<Any>()
linkedList.addNode(val: 3)
linkedList.addNode(val: 4)
linkedList.addNode(val: 7)
linkedList.addNode(val: false)
linkedList.addNode(val: 3)
linkedList.addNode(val: 2)
linkedList.addNode(val: "Hello World")
linkedList.addNode(val: 4)
linkedList.traverseList(Node: linkedList.getFirstNode())
var last = linkedList.getLastNode()











