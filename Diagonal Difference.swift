//
//  Diagonal Difference.swift
//  
//
//  Created by Randy McLain on 10/1/16.
//
//
import foundataion

// read the first line that gives the N
let Nline = readLine()!.characters.split(" ").map{ Int(String($0))! }

// then for loop through each of the remaining N lines
var sum1:Int = 0
var sum2:Int = 0
let N:Int = Nline[0]
var x:Int = 0
// for each line
for i in 0 ..< N {
  // read line and split into ints
  let matrixLine = readLine()!.characters.split(" ").map{ Int(String($0))! }
  // take the ith number based on N for the \ line and add to sum
  sum1 += Int(matrixLine[i])
  // take the N-i-1 line for the / line and add to sum
  x = (N - i - 1)
  sum2 += Int(matrixLine[x])
}

// print the difference of the abs of \ and /
print (abs(sum1 - sum2))


