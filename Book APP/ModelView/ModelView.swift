//
//  ModelView.swift
//  Book APP
//
//  Created by zheng huang on 8/3/22.
//

import Foundation

class ModelView:ObservableObject{
    
    @Published var result:[Model] = [Model]()
    
    init(){
        let pathString = Bundle.main.path(forResource: "Data", ofType: "json")
        
        if let path = pathString{
            let url = URL(fileURLWithPath: path)
            do{
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                result = try decoder.decode([Model].self, from: data)
                
            }
            catch{
                print(error)
            }
        }
    }
    
    func UpdateFavouite(id:Int){
        result[id].isFavourite.toggle()
    }

}
