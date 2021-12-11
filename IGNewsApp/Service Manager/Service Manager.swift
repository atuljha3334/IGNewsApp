//
//  Service Manager.swift
//  IGNewsApp
//
//  Created by Atul Jha on 10/12/21.
//

import Foundation

class ServiceManager {
    
    public static let shared = ServiceManager()
    
    func newsServiceCall(completion: @escaping (NewsResponseModel?) -> Void) {
        guard let url =  URL(string: "https://content.dailyfx.com/api/v1/dashboard") else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let decodedData = try JSONDecoder().decode(NewsResponseModel.self, from: data)
                    completion(decodedData)
                } catch {
                    let error = error
                    print(error.localizedDescription)
                }
            } else {
                return
            }
        }
        task.resume()
    }
}
