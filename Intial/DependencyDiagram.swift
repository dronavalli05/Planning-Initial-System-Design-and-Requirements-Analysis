//
//  DependencyDiagram.swift
//  Intial
//
//  Created by Dronavalli on 01/03/22.
//

import Foundation
import UIKit
//typealias FeedLoader = (([String]) -> Void) -> Void
//
//class FeedsViewController : UIViewController {
//
//    var loadFeed : FeedLoader!
//    convenience init(loadFeed : @escaping FeedLoader)
//    {
//        self.init()
//        self.loadFeed = loadFeed
//    }
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        loadFeed { loadedItems in
//
//        }
//    }
//
//
//
//}


//protocol FeedLoader {
//    func loadFeedData(completion: @escaping ([String]) -> Void)
//}
//
//class FeedsViewController : UIViewController {
//
//    var loadFeed : FeedLoader!
//    convenience init(loadFeed : FeedLoader)
//    {
//        self.init()
//        self.loadFeed = loadFeed
//    }
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        loadFeed.loadFeedData { loadedItems in
//
//        }
//    }
//}
//class RemoteFeedLoader: FeedLoader {
//    func loadFeedData(completion: @escaping ([String]) -> Void){
//
//    }
//
//}
//
//class LocalFeedLoader: FeedLoader {
//    func loadFeedData(completion: @escaping ([String]) -> Void){
//
//    }
//
//}

protocol FeedLoader {
    func loadFeedData(completion: @escaping ([String]) -> Void)
}
struct Reachability {
    static let netWorkAvailable = false
}

class FeedsViewController : UIViewController {
    
        var loadFeed : FeedLoader!
        convenience init(loadFeed : FeedLoader)
        {
            self.init()
            self.loadFeed = loadFeed
        }
        override func viewDidLoad() {
            super.viewDidLoad()
            loadFeed.loadFeedData { loadedItems in
    
            }
        }
    
   
}
class RemoteWithLocalFallbackLoader : FeedLoader  {
    var remote : RemoteFeedLoader
    var local : LocalFeedLoader

    init(remote : RemoteFeedLoader, local : LocalFeedLoader)
    {
        self.remote = remote
        self.local = local
    }
    
    func loadFeedData(completion: @escaping ([String]) -> Void) {
        
        let load = Reachability.netWorkAvailable ? remote.loadFeedData : local.loadFeedData
        load(completion)
    }
}
class RemoteFeedLoader: FeedLoader {
    func loadFeedData(completion: @escaping ([String]) -> Void){
        
    }

}

class LocalFeedLoader: FeedLoader {
    func loadFeedData(completion: @escaping ([String]) -> Void){
        
    }

}
let vc = FeedsViewController(loadFeed: RemoteFeedLoader())
let vc1 = FeedsViewController(loadFeed: RemoteWithLocalFallbackLoader(remote: RemoteFeedLoader(), local: LocalFeedLoader()))
