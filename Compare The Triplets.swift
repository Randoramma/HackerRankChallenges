//
//  Compare The Triplets.swift
//  
//
//  Created by Randy McLain on 10/1/16. Code was written sometime in 2015. 
//
//
import foundation
// Enter your code here
let firstline = readLine()!.characters.split(" ").map{ Int(String($0))! }
let secondline = readLine()!.characters.split(" ").map{ Int(String($0))! }

var returnArray = [0,0]

for i in 0 ..< firstline.count {
  
  if firstline[i] > secondline[i] {
    returnArray[0] += 1
  } else if firstline[i] < secondline[i] {
    returnArray[1] += 1
  }
}
print ("\(returnArray[0]) \(returnArray[1])")
