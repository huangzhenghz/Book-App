//
//  Model.swift
//  Book APP
//
//  Created by zheng huang on 8/3/22.
//

import Foundation


struct Model:Identifiable,Decodable{
    
    var title:String
    var author:String
    var isFavourite:Bool
    var currentPage:Int
    var rating:Int
    var id:Int
    var content:[String]

}

