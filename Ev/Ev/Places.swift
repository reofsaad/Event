//
//  Places.swift
//  Ev
//
//  Created by REOF ALMESHARI on 22/06/1443 AH.
//

import SwiftUI

struct Places: View {
    public var Place:[PlaceData]=PlaceList.Places
    @State var showNewScreen = false
    var body: some View {
        ZStack{
            Color.white
                .ignoresSafeArea(.all)
            
            VStack{
                NavigationView{
                    
                    ScrollView(.vertical,showsIndicators: false){
                        
                        SearchBarr()
                        
                        Group{
                            ForEach(Place,id:\.self){
                            plac in
                                NavigationLink(destination:Text(plac.Image)){PlaceCell (plac: plac)}
                            Divider()
                        }
                        }
                    }
                    
                    .navigationTitle("Orders")}
            }
            
        }
    }
}

struct FilterScreen :View{
    @Binding var showNewScreen : Bool
    @Environment(\.presentationMode) var presentationMode
    var body: some View{
        ZStack(alignment:.topLeading){
            Color.purple
                .edgesIgnoringSafeArea(.all)
            Button(action:{
              //  presentationMode.wrappedValue.dismiss()
                showNewScreen.toggle()
                
            },label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
        }
    }
}
struct SearchBar: View {
    @State var searchText:String = ""
    @State  var isActive=false
    @State var showNewScreen : Bool = false
    //  @State  var isPopOverPresented = false
    //  @State private var showModel = false
    var body: some View {
        
        
     
        HStack{
            
            Image(systemName:"magnifyingglass")
            
            TextField("search", text:$searchText)
            
            
            Button(action: {}
                   
            ){
                Image(systemName: "slider.horizontal.3")
                    .foregroundColor(Color(red: 0.152, green: 0.417, blue: 0.31))
            }}
        .padding()
        .background(.regularMaterial)
        .cornerRadius(8.0)
        .frame(width: 350, height: 35)
        .padding()
        
    }
}


struct Places_Previews: PreviewProvider {
    static var previews: some View {
        Places()
    }
}
