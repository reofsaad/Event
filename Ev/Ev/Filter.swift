//
//  Filter.swift
//  Ev
//
//  Created by REOF ALMESHARI on 22/06/1443 AH.
//

import SwiftUI

struct Filter: View {
    @State var showNewScreen : Bool = false
    var body: some View {
      
        ZStack{
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Button("Button"){
                    showNewScreen.toggle()
                    
                }.font(.largeTitle)
                Spacer()
//                //Method 1 - sheet
//                    .sheet(isPresented: $showNewScreen, content: {
//                        NewScreen()
//                    })
                //Method 2-Transition
                if showNewScreen{
                    NewScreen(showNewScreen: $showNewScreen)
                        .padding(.top,100)
                        .transition(.move(edge: .bottom))
                        .animation(.spring())
                }
            }
            .zIndex(2.0)
//                // Method 3 - Animation
//                NewScreen(showNewScreen: $showNewScreen)
//                    .padding(.top,100)
//                    .offset(y:showNewScreen ? 0 : UIScreen.main.bounds.height)
//                    .animation(.spring())
//        }
    }
    }
    
}
struct Filteer : View{
    var body: some View{
        VStack(alignment:.leading,spacing: 30){
            //
            Text("Search Filter").font(.system(size: 20,weight: .semibold)).padding(.horizontal,120)
          
            Text("Catorgreis").font(.system(size: 17,weight: .semibold)).foregroundColor(Color(red: 0.127, green: 0.194, blue: 0.136))
                .padding(.leading,10)
            Group{
                HStack{
                
                ZStack{
                    Image("2")
                    Text("Hotels").font(.system(size: 14,weight: .regular)).foregroundColor(.white)
                    
                }
                ZStack{
                    Image("6")
                    Text("Lounge").font(.system(size: 14,weight: .regular)).foregroundColor(.white)
                }
                ZStack{
                    Image("4")
                    Text("Resturaunt").font(.system(size: 14,weight: .regular)).foregroundColor(.white)
                }
                
            }
            
            HStack{
                ZStack{
                    Image("3")
                    Text("Popular").font(.system(size: 14,weight: .regular)).foregroundColor(.white)
                }
                ZStack{
                    Image("7")
                    Text("Recommended").font(.system(size: 14,weight: .regular)).foregroundColor(.white)
                }
            }} .padding(.leading,10)
            
            Text("Price").font(.system(size: 17,weight: .semibold)).foregroundColor(Color(red: 0.127, green: 0.194, blue: 0.136))
                .padding(.leading,10)
            PriceRange()
//            HStack{
//
//                Text("SAR55")
//                    .foregroundColor(Color(red: 0.127, green: 0.194, blue: 0.136)) .padding(.horizontal,70)
//                Text("SAR155")
//                    .foregroundColor(Color(red: 0.127, green: 0.194, blue: 0.136)).padding(.horizontal,40)
//            }
           
            
           
            Text("Duration").font(.system(size: 17,weight: .semibold)).foregroundColor(Color(red: 0.127, green: 0.194, blue: 0.136))
                .padding(.leading,10)
            Group{
            HStack{
                
                ZStack{
                    Image("4")
                    Text("3-8 Hours").font(.system(size: 14,weight: .regular)).foregroundColor(.white)                         }
                ZStack{
                    Image("7")
                    Text("8-14 Hours").font(.system(size: 14,weight: .regular)).foregroundColor(.white)
                }
                ZStack{
                    Image("7")
                    Text("14-20 Hours").font(.system(size: 14,weight: .regular)).foregroundColor(.white)
                }
                
            }
            
            HStack{
                ZStack{
                    Image("7")
                    Text("20-24 Hours").font(.system(size: 14,weight: .regular)).foregroundColor(.white)
                }
                ZStack{
                    Image("7")
                    Text("24-30 Hours").font(.system(size: 14,weight: .regular)).foregroundColor(.white)
                }
            }
                HStack{
                    ZStack{
                        Image("10")
                        Text("Cancel").font(.system(size: 14,weight: .bold)).foregroundColor(Color(red: 0.127, green: 0.194, blue: 0.136))
                    }
                    ZStack{
                        Image("BrownButton2")
                        Text("Apply Filter").font(.system(size: 14,weight: .bold)).foregroundColor(Color(red: 0.127, green: 0.194, blue: 0.136))
                    }
                }
            } .padding(.leading,10)
            
            
            
        }

    }
}
struct NewScreen :View{
    @Binding var showNewScreen : Bool
    @Environment(\.presentationMode) var presentationMode
    var body: some View{
        ZStack(alignment:.topLeading){
            Color.white
                .edgesIgnoringSafeArea(.all)
            Button(action:{
              //  presentationMode.wrappedValue.dismiss()
                showNewScreen.toggle()
                
            },label: {
                Image(systemName: "xmark")
                    .foregroundColor(.black)
                    .font(.callout)
                    .padding(20)
            })
            Filteer()
        }
    }
}

struct Filter_Previews: PreviewProvider {
    static var previews: some View {
        Filter()
    }
}

struct PriceRange: View {
    @State var width : CGFloat = 0
    @State var width2 : CGFloat = 25
    var totalWidth = UIScreen.main.bounds.width - 60
    var body: some View {
        VStack{
            
            
            
            
        ZStack{
//            Image("vector1") .padding(.leading,8)
//            Image("vector2")
//            HStack{
//
//                Image("Ellipse")
//
//                    .padding(.horizontal,60)
//
//
//                Image("Ellipse")
//
//
//
//                    .padding(.horizontal,60)
//            }
            Rectangle()
                .fill(Color.black.opacity(0.20))
                .frame(height: 6)
            Rectangle()
                .fill(Color.black)
                .frame(width: self.width2 - self.width, height: 6)
                .offset(x: self.width + 18)
            HStack(spacing:0){
                Circle()
                    .fill(Color.black)
                    .frame(width: 18, height: 18)
                    .offset(x:self.width)
                    .gesture(
                    DragGesture()
                        .onChanged({(value) in
                    if value.location.x >= 0 && value.location.x <= self.width2 {

                        self.width = value.location.x}
                        }
                                  )
                    )
                Circle()
                    .fill(Color.black)
                    .frame(width: 18, height: 18)
                    .offset(x:self.width2)
                    .gesture(
                    DragGesture()
                        .onChanged({(value) in
                            if value.location.x <= self.totalWidth && value.location.x >= self.width {

                        self.width = value.location.x}
                        }
                                  )
                    )
            }

        }
            
        }.padding()
        }
}
