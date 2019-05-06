import Foundation

class ConversationInternal: NSObject, Conversation {
    public init(buyer: ConversationUser) {
        self.buyer = buyer
        super.init()
    }
    
    let buyer: ConversationUser
}
