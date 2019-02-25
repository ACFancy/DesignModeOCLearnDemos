import UIKit
import StoreKit

class NetworkManager {
    //MARK: - Properties
    static let shared = NetworkManager(baseURL: URL(string: "https://www.baidu.com")!)
    
    private static var sharedNetworkManager: NetworkManager = {
        let networkManager = NetworkManager(baseURL: URL(string: "https://www.baidu.com")!)
        
        //Configuration
        //...
        return networkManager
    }()
    
    let baseURL: URL
    
    //MARK:- Init Funcntions
    private init(baseURL: URL) {
        self.baseURL = baseURL
    }
    
    public func printsInfo() {
       print("dog-\(baseURL.absoluteString)")
    }
    
    //MARK: - Accessors Functions
    class func sharedInstance() -> NetworkManager {
        return sharedNetworkManager
    }
}



//NetworkManager.shared.printsInfo()
NetworkManager.sharedInstance().printsInfo()

//MARK: - Cocoa Singleton
//Shared URL Session
let sharedURLSession = URLSession.shared

//Default File Manager
let defaultFileManager = FileManager.default

//Standard User Defaults
let standardUserDefaults = UserDefaults.standard

//Default Payment Queue
let defaultPaymentQueue =  SKPaymentQueue.default()


