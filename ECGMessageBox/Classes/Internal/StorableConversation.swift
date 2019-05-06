import Foundation

struct StoreableConversation: Equatable, Codable {
    var buyer: ConversationUser
}

extension ConversationInternal {
    var storeableConversation: StoreableConversation {
        return StoreableConversation(buyer: buyer)
    }
}
