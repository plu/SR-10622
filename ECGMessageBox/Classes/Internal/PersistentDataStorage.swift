import Foundation

class PersistentDataStorage<T: Codable> {
    func write(data: T) {
        let fileRecord = FileDataRecord(data: data)
        _ = try? JSONEncoder().encode(fileRecord)
    }
    
    private struct FileDataRecord: Codable {
        let data: T
    }
}
