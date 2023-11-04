//
//  NetWorkManager.swift
//  Fetch - iOS Coding Challenge
//
//  Created by karthik on 11/4/23.
//

import UIKit
import Combine

class NetWorkManager: NSObject {

    static let manager = NetWorkManager()
    
    let session = URLSession.shared
        
    
    /// using the URLSession publisher can publish the NSDAta any viewmodel there we can decode the any model type
    func request(url: String) -> AnyPublisher<Data, URLError>? {
        if let url = URL(string: url) {
            let request = URLRequest(url: url)
            return session.dataTaskPublisher(for: request).map(\.data).eraseToAnyPublisher()
        }
        return nil
    }
    
}
