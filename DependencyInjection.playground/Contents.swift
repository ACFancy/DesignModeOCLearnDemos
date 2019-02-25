//: Playground - noun: a place where people can play

import UIKit

print("wo lai le ~")

protocol Serializer {
    func serialize(data: AnyObject) -> Data?
}

class RequestSerializer: Serializer {
    func serialize(data: AnyObject) -> Data? {
        //....
        return Data(base64Encoded: "")
    }
}

class Request {

}

class DataManager {
    //MARK: - initializer injection
    private let serializer: Serializer
    init(serializer: Serializer) {
        self.serializer = serializer
    }
    
    //MARK: - property injection
    var requestManager: RequestSerializer?

    //MARK: - method injection
    func serializeRequest(request: Request, withSerializer serializer: Serializer) -> Data? {
        //...
        return Data(base64Encoded: "")
    }
}
