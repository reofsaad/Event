//
//  OrderPage.swift
//  Ev
//
//  Created by REOF ALMESHARI on 22/06/1443 AH.
//

import SwiftUI

struct OrderPage: View {
    public var Order:[Data]=OrderList.Orders
  //  @State var selected = -1
    var body: some View {
        NavigationView{
            
        VStack {
      
            ScrollView(.vertical,showsIndicators: false){
                VStack{
                    Group{
                        ForEach(Order,id:\.self){
                        Ordere in
                            NavigationLink(destination:EmptyView()){OrderCell (Ordere: Ordere)}
                        Divider()
                    }
                    }}
                
                NavigationLink(destination: Themes()
               ){
                    ZStack{
                        Image("BrownButton2")
                        
                        Text(" + Book More")
                            .foregroundColor(Color(red: 0.127, green: 0.194, blue: 0.136))
                            .font(.title2)
                            .fontWeight(.semibold)
                            .padding(.trailing,10)
                            .padding(.bottom,5)
                        
                    }
                    
                }
                .padding(.vertical,40)
            } }
        
            .navigationTitle("Orders")  }
    }
}

struct OrderCell:View{
    var Ordere:Data
    var body: some View{
        HStack{
            
            Image(Ordere.OrderImage)
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
                .padding(.vertical,4)
                .padding(.horizontal,20)
            
            VStack(alignment:.leading,spacing: 4){
                Text(Ordere.OrderName)
                    .fontWeight(.medium)
                    .foregroundColor(Color(red: 0.127, green: 0.194, blue: 0.136))
                Text(Ordere.OrderInfo)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            NavigationLink(destination: EmptyView()){
              ZStack{
                  if Image(Ordere.frame) == Image("GreenButton") {
                      Button(action:{}){Image(Ordere.frame).padding(.horizontal,20)}
                          Text(Ordere.Status).foregroundColor(Color.white).padding(.horizontal,30)
                  }else{
                      Button(action:{}){ Image(Ordere.frame)}
                      Text(Ordere.Status)
                          .foregroundColor(.black)
                      .padding(.horizontal,30)}
                
              
              
          }

                    
                }
      
    }
    }
                         
                         }
struct OrderPage_Previews: PreviewProvider {
    static var previews: some View {
        OrderPage()
    }
}
