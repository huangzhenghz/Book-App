//
//  DetailView.swift
//  Book APP
//
//  Created by zheng huang on 8/3/22.
//

import SwiftUI

struct DetailView: View {
    var result:Model
    @EnvironmentObject var model:ModelView
    
    @State var choose = 1
    
    var body: some View {
        GeometryReader {geo in
                VStack(alignment: .leading){
                    Text(result.title).padding(.leading)
                    VStack{
                        Text("Read now")
                        
                        Image("cover" + String(result.id)).resizable().scaledToFit().frame(width: geo.size.width/2,height:geo.size.height/2, alignment: .center)
                        
                        VStack {
                            Text("Mark for later").padding()
                            
                            Button(action: {
                                model.UpdateFavouite(id:result.id)
                                result.isFavourite.toggle()
                            }, label: {
                                if result.isFavourite{
                                    Image(systemName: "star.fill")
                                }
                                else{
                                    Image(systemName: "star")
                                }
                            })
                            
                            
                            Text("Rate Amazing Words").padding()
                        }.padding()
                            
                            
                        Picker("",selection: $choose){
                            Text("1").tag(1)
                            Text("2").tag(2)
                            Text("3").tag(3)
                            Text("4").tag(4)
                            Text("5").tag(5)
                        }.padding().pickerStyle(.segmented)
                            .onChange(of: choose, perform: {value in
                            result.rating = choose
                        }).onAppear{
                            choose = result.rating
                        }
                        
                        
                    }.frame(width: geo.size.width,height:geo.size.height, alignment: .center)
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(result: ModelView().result[0])
    }
}