import XCTest
@testable import ECGMessageBox

class PersistentDataStorageTests: XCTestCase {
    func testCrash() {
        class ConversationUserSubclass: ConversationUser {}
        let user = ConversationUserSubclass()
        let conversation = ConversationInternal(buyer: user)
        let conversations = [conversation].compactMap { $0.storeableConversation }
        let storage = PersistentDataStorage<[StoreableConversation]>()
        storage.write(data: conversations)
    }
}
