//
//  ProfileList.swift
//  Ev
//
//  Created by REOF ALMESHARI on 23/06/1443 AH.
//

import SwiftUI

struct ProfileList: View {
 
  @State var displayItem: Bool = false

  var body: some View {
    ZStack{
        VStack{
         
            
            Profiles(displayItem: $displayItem)
            
            
          
         
            
        
        if (displayItem != false) {
            ProfileInfo(text: ("\(self.displayItem)") , displayItem: $displayItem).edgesIgnoringSafeArea(.all)
               
        }}
        Spacer()
    }//.animation(.easeInOut)
  }
}

struct Profiles:View{
    @Binding var displayItem:Bool
    var body: some View{
       
           
            HStack{
             
                Button(action: {self.displayItem = true}) {
                   
                      
                    ZStack{   Image("WhiteButton")
                        Text("Deliverd").foregroundColor(.black)}}
            }
        }
    
}
struct ProfileInfo: View {
  var text: String
  @Binding var displayItem:Bool
    @State var selected = -1
    @State  var WriteText = ""
  var body: some View {
    ZStack{
        Rectangle()
        .fill(Color.gray)
        .opacity(0.5)
        
        VStack {
            Spacer()
            HStack {
                VStack(spacing: 6) {
                  // Text(text).fontWeight(.bold).padding(.all, 10)
                    /*  VStack(alignment: .leading, spacing: 15){
                     
                     Text("Rate your Experince")
                     
                         Text("Write your feedback")
                            
                     TextField(".....", text: $WriteText).frame(width: 300, height: 150, alignment: .center)
                         //.padding(.leading,24)
                     .background(Color(.systemGray5))
                     .cornerRadius(12)
                     .padding(.horizontal)
                     
                     Button(action: {}){
                         ZStack{
                             Image("BrownButton")
                             Text("Done")
                         }
                     }*/
                    Text("Rate Your Experince").padding(.top,10).foregroundColor(.black).font(.system(size: 23, weight: .regular, design: .rounded))
                    
                    RatingView(selected: $selected) .padding()
                    Text("Write your suggestions here ").foregroundColor(.black).padding(.trailing,70).font(.system(size: 15, weight: .regular, design: .rounded))
                    TextField("", text: $WriteText).frame(width: 280, height: 150, alignment: .center) .background(Color(red: 0.941, green: 0.941, blue: 0.941))
                        .cornerRadius(12)
                        .padding(.horizontal)
                    Text("280 characters").padding(.leading,150).foregroundColor(.black).font(.system(size: 15, weight: .regular, design: .rounded))
                    Button(action: {}){
                     
                            Image("BrownButton")
                            
                        
                    }
                }
            }
            .frame(minWidth: 350, idealWidth: 350, maxWidth: 350, minHeight: 380, idealHeight: 200, maxHeight: 350, alignment: .top).fixedSize(horizontal: true, vertical: true)
            .background(RoundedRectangle(cornerRadius: 27).fill(Color.white.opacity(1)))
            .overlay(RoundedRectangle(cornerRadius: 27).stroke(Color.white, lineWidth: 1))
            Spacer()
        }
    }.onTapGesture {
        self.displayItem = false
    }
  }
}

struct RatingView:View{
    @Binding var selected : Int
    var body: some View{
        
        HStack(spacing: 10 , content: {
               ForEach(0..<5){i in
            Image(systemName: "star.fill").resizable().frame(width: 30, height: 30).foregroundColor(self.selected >= i ? .black : .gray).onTapGesture {
                self.selected = i
            }
                 
               }})
      
    }
}

struct ProfileList_Previews: PreviewProvider {
static var previews: some View {
    ProfileList()
  }
}

