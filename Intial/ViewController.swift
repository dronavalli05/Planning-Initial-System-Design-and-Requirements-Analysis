////
////  ViewController.swift
////  Intial
////
////  Created by Dronavalli on 28/02/22.
////
//
//import UIKit
//
////Singleton which was suggested ny booked
//struct LoggedInUser{}
//struct FeedItem{}
//
////APi Module
//
// class ApiClient {
//     static let shared = ApiClient()//static let is constant and lazy loaded.
//
////    static func getInstance() -> ApiClient {
////        return instance
////    }
//
////    private init() {}
//     func execute(_ : URLRequest, completion: (Data) -> Void){}
//
//    func login(completion: (LoggedInUser) -> Void) {}
//     func loadFeed(completion : ([FeedItem]) -> Void) {}
// }
////singleton here we have only get
////URLSession.shared
////URLSession()
//class MockApiClient: ApiClient {}
////ApiClient.instance = MockApiClient()
////
////let client = ApiClient.instance
//
////Login Module
//
//class ViewController: UIViewController {
//
//    var api = ApiClient.shared
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }
//    func didTapLoginButton() {
//        api.login() { user in
//
//        }
//    }
//
//
//}
//
//// Feed Module
//class FeedViewController: UIViewController {
//    var api = ApiClient.shared
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//        api.loadFeed { loadedItems in
//
//        }
//    }
//
//}
//
