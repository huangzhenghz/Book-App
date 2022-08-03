//
//  ContentView.swift
//  Book APP
//
//  Created by zheng huang on 8/3/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var result:ModelView
    
    var body: some View {
        NavigationView{
        
            GeometryReader{geo in
                
                VStack(alignment: .center) {
                    ScrollView{
                        ForEach(result.result){i in
                            NavigationLink(destination: {
                                DetailView(book: i)
                            }, label: {
                                ZStack{
                                    Rectangle().foregroundColor(.white)
                                    
                                    VStack(alignment: .leading){
                                        Text(i.title).padding([.top, .leading, .trailing])
                                        Text(i.author).padding(.horizontal)
                                        Image("cover" + String(i.id)).resizable().padding(.horizontal)
                                    }
                                    
                                }.frame(width: geo.size.width-50,height:geo.size.height/6*4, alignment: .center).cornerRadius(20).shadow(color: .black, radius: 5, x: -5, y: 5).padding().navigationBarHidden(true).foregroundColor(.black)
                            })
                        }
                    }
                }.frame(width: geo.size.width, height: geo.size.height, alignment: .center)
            }
        }
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
