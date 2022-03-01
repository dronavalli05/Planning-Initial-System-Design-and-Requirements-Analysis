//
//  FourthLevel.swift
//  Intial
//
//  Created by Dronavalli on 01/03/22.
//


import UIKit

//MainModule
extension ApiClient {

    func login(completion: (LoggedInUser) -> Void) {}
}
extension ApiClient {
    func loadFeed(completion : ([FeedItem]) -> Void) {}

}


//APi Module

 class ApiClient {
     static let shared = ApiClient()//static let is constant and lazy loaded.
        func execute(_ : URLRequest, completion: (Data) -> Void){}
}
//Login Module

struct LoggedInUser{}


class LoginViewController: UIViewController {

    var login: (((LoggedInUser) -> Void) -> Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func didTapLoginButton() {
        login? { user in

        }
    }


}

// Feed Module

struct FeedItem{}


class FeedViewController: UIViewController {
    var feed : ((([FeedItem]) -> Void) ->  Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        feed? { loadedItems in

        }
    }

}
class FeedService {
    var feed : ((([FeedItem]) -> Void) ->  Void)?
    func load() {
        feed? { loadedItems in

        }
        
    }

}
