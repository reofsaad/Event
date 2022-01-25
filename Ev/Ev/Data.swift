//
//  Data.swift
//  Ev
//
//  Created by REOF ALMESHARI on 22/06/1443 AH.
//


import Foundation
import UIKit
import SwiftUI


struct Data :Codable,Identifiable ,Hashable{
    
   public  let id=UUID()
   public let OrderImage : String
   public  let OrderName : String
   public let OrderInfo : String
   public var frame : String
  public var Status : String
}

struct OrderList{
   static  let Orders=[
        Data(OrderImage: "Drink", OrderName: "Signature Juice", OrderInfo: "Service at Home",frame:"WhiteButton",Status: "Deliverd"),
        Data(OrderImage: "WeddingTable", OrderName: "Wedding Setup", OrderInfo: "Service at Home",frame:"GreenButton",Status: "Track"),
        Data(OrderImage: "PianoResturaunt", OrderName: "Piano Lounge", OrderInfo: "Service at Home",frame:"WhiteButton",Status: "Accepted")
    ]
}

struct PlaceData :Codable,Identifiable ,Hashable{
    
   public  let id=UUID()
   public let Image : String
   public  let Name : String
   public let Info : String
   public var Price : Int
 
}

struct PlaceList{
   static  let Places=[
        PlaceData(Image: "Drink", Name: "Signature Juice", Info: "Start at",Price:500),
        PlaceData(Image: "Drink", Name: "Signature Juice", Info: "Start at",Price:500),
        PlaceData(Image: "Drink", Name: "Signature Juice", Info: "Start at",Price:500),
        PlaceData(Image: "Drink", Name: "Signature Juice", Info: "Start at",Price:500),
        PlaceData(Image: "Drink", Name: "Signature Juice", Info: "Start at",Price:500),
        PlaceData(Image: "Drink", Name: "Signature Juice", Info: "Start at",Price:500),
        PlaceData(Image: "Drink", Name: "Signature Juice", Info: "Start at",Price:500),
        PlaceData(Image: "Drink", Name: "Signature Juice", Info: "Start at",Price:500),
        PlaceData(Image: "Drink", Name: "Signature Juice", Info: "Start at",Price:500),
        PlaceData(Image: "Drink", Name: "Signature Juice", Info: "Start at",Price:500),
        
    ]
}
