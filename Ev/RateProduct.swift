//
//  RateProduct.swift
//  Ev
//
//  Created by REOF ALMESHARI on 23/06/1443 AH.
//

import SwiftUI

struct RateProduct: View {
    var body: some View {
        VStack(alignment: .center, spacing: 15){
            Button(action: {}){
                Text("Home")
            }
        
        Button(action: {}){
            Text("Car")
        }
    
         Button(action: {}){
        Text("Blue")
    }
        }.background(Color.white)
            .cornerRadius(15)
        
    }}


struct RateProduct_Previews: PreviewProvider {
    static var previews: some View {
        RateProduct()
    }
}
