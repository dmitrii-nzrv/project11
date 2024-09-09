//
//  CollectionData.swift
//  project11
//
//  Created by Dmitrii Nazarov on 09.09.2024.
//



import Foundation

struct CollectionData {
    let image: String
    let name: String
    let description: String
    let profileName: String
    let profileImage: String
    let date: String
    
    static func mockData() -> [CollectionData]{
        [
            CollectionData(image: "img1", name: "Volvo XC90, 2020", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo", profileName: "Volodimir Nazarov", profileImage: "user1", date: "5 августа 2024 года"),
            
            CollectionData(image: "img2", name: "Volvo XC90, 2020", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Utectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Utna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo", profileName: "Dmitrii Nazarov", profileImage: "user2", date: "3 июня 2024 года"),
            CollectionData(image: "img3", name: "ffgfdg gfdgd, 2020", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Utectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Utna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo", profileName: "Alena Karabas", profileImage: "user1", date: "10 июня 2024 года"),
            CollectionData(image: "img1", name: "ford mustngo gfdgd, 2020", description: "Lorem ipsum dolor sit ament ut labore et dolore magna aliqua. Utna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo", profileName: "Alena Shevchenko", profileImage: "user2", date: "30 августа 2024 года"),
          
        ]
    }
}
