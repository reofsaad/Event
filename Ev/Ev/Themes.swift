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
           
                    
                ZStack{
                    Color(.white)
                   
                    VStack{
                        NavigationView{
                           
                        ScrollView(.vertical,showsIndicators: false){
                      //
                            SearchBarr().padding()
                       
                   
//
//
                      
                  
                    
                    //Order(item:OrderData)
                 
                   
                            Group{
                                ForEach(Place,id:\.self){
                                plac in
                                    NavigationLink(destination:Text(plac.Image))
                                    {PlaceCell (plac: plac)}
                                Divider()
                            }
                            }}
                        
                            .navigationTitle("Orders")     }
                            
                        
                    }
                       
                        
                
                  
                    
//
                    
                    
                }
                
            }
            }

struct SearchBarr: View {
    @State var searchText:String = ""
    @State  var isActive=false
    @State var showNewScreen : Bool = false

    var body: some View {
        
        VStack{
     
        HStack{
            
            Image(systemName:"magnifyingglass")
            
            TextField("search", text:$searchText)
            
            
            Button("\(Image(systemName: "slider.horizontal.3"))")
            { showNewScreen.toggle()
               
                 
            }   .foregroundColor(Color(red: 0.152, green: 0.417, blue: 0.31))
            
            
            }   .padding()
                .background(.regularMaterial)
                .cornerRadius(8.0)
                .frame(width: 350, height: 35)
                .padding()
            if showNewScreen{
                NewScreen(showNewScreen: $showNewScreen)
                    .padding(.top,90)
                    .transition(.move(edge: .bottom))
                    .animation(.spring())
            }
        }
        .zIndex(2.0)
        
     
        
    }
}

struct Filters : View{
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
struct NewScreens :View{
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
                        .padding()

                          
                          
                      
                      
                  }

                            
                        }
              
            }

struct Themes_Previews: PreviewProvider {
    static var previews: some View {
        Themes()
    }
}

