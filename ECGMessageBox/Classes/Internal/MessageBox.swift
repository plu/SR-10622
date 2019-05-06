import Foundation

public class MessageBox: NSObject {
    private lazy var storage: PersistentDataStorage<[StoreableConversation]> = {
        return PersistentDataStorage<[StoreableConversation]>()
    }()
}
