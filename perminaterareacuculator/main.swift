//
//  main.swift
//  perminaterareacuculator
//
//  Created by Yining Wang on 2021-01-29.
//

import Foundation

print("Hello, World!")

//
//  main.swift
//  perimeter area volume helper
//
//  Created by Yining Wang on 2021-01-29.
//

import Foundation

//MARK: Functions

///// Finds the area of a rectangle
///// - Parameter length: length of rectangle
///// - Parameter width: width of rectangle
///// - Returns: area of the rectangle
//func areaOfRectangle(length: Double, width: Double) -> Double {
//
//    return length * width
//
//}
//
///// find the area of the circle
///// - Parameter radius: the distance from the zenter of a circle to its outer edge
///// - Returns: description
//func areaOfCircle(radius: Double) -> Double {
//    return Double.pi * pow(radius, 2.0)
//}





//MARK: Input

print("What Geometric Feature do you want to cauculate?")
print("Cy: Cylender")
print("Sp: Sphere")
print("Co: Cone")
print("Sp: Squared-based pyramid")
print("Rp: Rectangualr prism")
print("Sp: Squared-based pyramid")
print("Tp: Triangular prism")//keep following output on the same line
let type = readLine()!

print("What part of surface area do you want to cauculate?")
print("B: Base")
print("L: Lateral Surface")
print("T: Total")
let part = readLine()!

print("What is the length?")
let length = readLine()!

print("What is the side?")
let s = readLine()!

print("What is the heigh?")
let h = readLine()!


//MARK: Process
func SurfaceAreaFormulasCaculation (height: Double, side: Double, length: Double) -> Double {
    
    
    
}



//MARK: Output

