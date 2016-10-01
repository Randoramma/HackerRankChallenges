//
//  Time_Conversion.swift
//  
//
//  Created by Randy McLain on 10/1/16.
//
//

import Foundation
/*
 Randoramma
 2016/10/01
 Language: Swift
 GitHub: https://github.com/Randoramma
 */
// Read the string
var s = readLine()!
let meridians = Set("PAM".characters)

let rangeOfDomain = s.endIndex.advancedBy(-2)..<s.endIndex
let domain = s[rangeOfDomain]
let truncatedS = String(s.characters.filter { !meridians.contains($0) })

//seperate the string by :
let theTimeString = truncatedS.characters.split(":").map({String($0)})
// the first element = hours
let hours = theTimeString[0]
let minutes = theTimeString[1]
let seconds = theTimeString[2]

if domain == "PM" && hours != "12" {
  if let totalHours:String? = String(Int(hours)! + 12) {
    // print out the concatenated hours + minutes + strings
    print ("\(totalHours!):\(minutes):\(seconds)")
  }
}else if domain == "AM" && hours == "12" {
  if let totalHours:String? = String(Int(hours)! - 12) {
    // print out the concatenated hours + minutes + strings
    print ("00:\(minutes):\(seconds)")
  }
} else {
  // print out the concatenated hours + minutes + strings
  print ("\(hours):\(minutes):\(seconds)")
}

