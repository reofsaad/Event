//
//  Themes.swift
//  Ev
//
//  Created by REOF ALMESHARI on 22/06/1443 AH.
//

import SwiftUI

struct Themes: View {
    public var Place:[PlaceData]=PlaceList.Places
            var body: some View {
                NavigationView{
                    ScrollView(.vertical,showsIndicators: false){
                        SearchBarr()

               
                    
                    //Order(item:OrderData)
                 
                        VStack{
                            Group{
                                ForEach(Place,id:\.self){
                                plac in
                                    NavigationLink(destination:Text(plac.Image)){PlaceCell (plac: plac)}
                                Divider()
                            }
                            }
                            
                        }
                        
                       
                    }
                
                    .navigationTitle("Orders")}
                
            }
            }

        struct SearchBarr: View {
            @State var searchText:String = ""
            @State  var isActive=false
            @State  var isPopOverPresented = false
            @State private var showModel = false
            var body: some View {
                ZStack{
                    
                    RoundedRectangle(cornerRadius:5)
                        .fill(Color("Light"))
                        .frame(width: 100, height: 35)
                    HStack{
                        
                        Image(systemName:"magnifyingglass")
                            
                        TextField("search", text:$searchText)
                        
                        
                        Button(action: {showModel = true}){
                            Image(systemName: "slider.horizontal.3")
                                .foregroundColor(Color(red: 0.152, green: 0.417, blue: 0.31))
                        }}
        //                ModelView(isShowing: $showModel)
        //
        //                Button(action: {
        //                   // self.isPopOverPresented = true
        //
        //                }){
        //                    Image(systemName: "slider.horizontal.3")
        //                    .foregroundColor(Color(red: 0.152, green: 0.417, blue: 0.31))
        //                    Filter()
        //                }
        //
        //                .popover(isPresented: $isPopOverPresented){
        //                        Filter()
        //                    }
                        
                     
                        
                    }
                    .padding()
                    .background(.regularMaterial)
                    .cornerRadius(8.0)
                    .frame(width: 350, height: 35)
                }
            }

        struct PlaceCell:View{
            var plac:PlaceData
            var body: some View{
                HStack{
                    
                    Image(plac.Image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                        .padding(.vertical,4)
                        .padding(.horizontal,20)
                    
                    VStack(alignment:.leading,spacing: 4){
                        Text(plac.Name)
                            .fontWeight(.medium)
                            .foregroundColor(Color(red: 0.127, green: 0.194, blue: 0.136))
                        Text(plac.Info)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    
                    Spacer()
                    Text("\(plac.Price)")
                    
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.127, green: 0.194, blue: 0.136))

                          
                          
                      
                      
                  }

                            
                        }
              
            }

struct Themes_Previews: PreviewProvider {
    static var previews: some View {
        Themes()
    }
}
