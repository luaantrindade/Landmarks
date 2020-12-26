//
//  ModelData.swift
//  Landmarks
//
//  Created by Jeff on 23/12/2020.
//

import Foundation

var landmarks: [Landmark] = load("landmarkData.json")
//Treat the JSON file when the function called
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        print(data,file)
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
