//
//  TrackOrder.swift
//  Ev
//
//  Created by REOF ALMESHARI on 23/06/1443 AH.
//

import SwiftUI

struct TrackOrder: View {
    var body: some View {
       
        Tracks()
    }
}

struct Tracks:View{
    var body: some View{
        ZStack{
        VStack(alignment: .leading, spacing: 10){
            
            Text("Detalis").font(.system(size: 23, weight: .semibold, design: .rounded)).padding(.leading,130).padding(.bottom,30)
            Text("00359007738060313786")
            Text("In Store").font(.system(size: 12, weight: .semibold, design: .rounded))
            Text("Last update: 3 hours ago").font(.system(size: 12, weight: .regular, design: .rounded)).foregroundColor(.secondary)
            Image("progrss")
            Image("Map").frame(width: 300, height: 300).padding(.leading)
            
            ZStack{
                Image("VLine").resizable().scaledToFit().frame(height: 150).padding(.trailing,290)
                VStack{
                HStack{
                    Image("truck").resizable().scaledToFit().frame(width: 50, height: 50)
                VStack(alignment:.leading,spacing: 3){
                Text("Place Order").font(.system(size: 17, weight: .regular))
                    Text("21.08.2020 - 16:10").foregroundColor(.secondary).font(.system(size: 12, weight: .regular))}
                }.padding(.trailing,170)
            
            HStack{
                ZStack{
                    Image("Oval").resizable().scaledToFit().frame(width: 50, height: 50)
                    Image(systemName: "shippingbox").resizable().scaledToFit().frame(width: 25, height: 25).foregroundColor(.white)
                }
                VStack(alignment:.leading,spacing: 3){
                Text("Order prepared - not yet handed over to the carrier.").font(.system(size: 15, weight: .regular))
                    Text("22.08.2022 - 18:48").foregroundColor(.secondary).font(.system(size: 12, weight: .regular))}
            }
            
            HStack{
                ZStack{
                    Image("Oval").resizable().scaledToFit().frame(width: 50, height: 50)
                    Image("courier").resizable().scaledToFit().frame(width: 25, height: 25).foregroundColor(.white)
                }
                VStack(alignment:.leading,spacing: 3){
                    Text("Order handed over to the carrier.").font(.system(size: 15, weight: .regular)).lineLimit(1)
                    Text("26.08.2022 - 8:23").foregroundColor(.secondary).font(.system(size: 12, weight: .regular))}
            }.padding(.trailing,50)
                    
                }
            
            
        }
        }
        }
        
    }
}//Order handed over to the carrier.

struct TrackOrder_Previews: PreviewProvider {
    static var previews: some View {
        TrackOrder()
    }
}
