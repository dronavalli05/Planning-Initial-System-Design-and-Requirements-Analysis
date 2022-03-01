////
////  FirstLevel.swift
////  Intial
////
////  Created by Dronavalli on 01/03/22.
////
//
//import UIKit
//
//
////APi Module
//
// class ApiClient {
//     static let shared = ApiClient()//static let is constant and lazy loaded.
//        func execute(_ : URLRequest, completion: (Data) -> Void){}
//}
////Login Module
//
//struct LoggedInUser{}
//
//extension ApiClient {
//
//    func login(completion: (LoggedInUser) -> Void) {}
//
//}
//
//class LoginViewController: UIViewController {
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
//
//struct FeedItem{}
//extension ApiClient {
//    func loadFeed(completion : ([FeedItem]) -> Void) {}
//
//}
//
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
