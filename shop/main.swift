//
//  main.swift
//  shop
//
//  Created by Earth on 4/4/2563 BE.
//  Copyright © 2563 Earth. All rights reserved.
//

import Foundation

class Tshirt {
    var size:String
    var color:String
    var price:Float
    var image:String?
    
    init(size:String,color:String,price:Float,image:String) {
        self.size = size
        self.color = color
        self.price = price
        self.image = image
    }
    
}

class Address {
    var street:String
    var city:String
    var zipCode:String
    
    init(street:String,city:String,zipCode:String) {
        self.street = street
        self.city = city
        self.zipCode = zipCode
    }
}

class ShoppingCart {
    var orderTshirt:[Tshirt]
    var totalCost:Float
    var Address:[String]
  
    init(order:[Tshirt],total:Float,Address:[String]) {
        self.orderTshirt = order
        self.totalCost = total
        self.Address = Address
    }
}


class User {
    var name:String
    var email:String?
    var addressList:[Address] = []
    var tshirtList:[Tshirt] = []
    var shoppingCart:[String] = []
    
    init(name:String,email:String) {
        self.name = name
        self.email = email
    }
    
    func orderShirt(tShirt:Tshirt) {
        tshirtList.append(tShirt)
        print("Your List : \(tshirtList.map{$0.size})")
    }
    
    func total()  {
        print("\(tshirtList.map{$0.price}.reduce(0, +))")
    }
    
    func getAddress(address:Address) {
        addressList.append(address)
        print ("Your city : \(addressList.map{$0.city})")
        print ("Your street : \(addressList.map{$0.street})")
        print ("Your zipCode : \(addressList.map{$0.zipCode})")
    }
    
   
    

}



var people = User(name: "earth", email: "earth@hotmail.com")

let tShirtList = [Tshirt(size: "L", color: "Red", price: 500, image: ""),
                    Tshirt(size: "M", color: "Black", price: 750, image: ""),
                    Tshirt(size: "S", color: "Black", price: 625, image: "")]
tShirtList.forEach{people.orderShirt(tShirt: $0)}

people.getAddress(address: Address(street: "พุทธมณฑล", city: "นครปฐม", zipCode: "10180"))
people.total()












