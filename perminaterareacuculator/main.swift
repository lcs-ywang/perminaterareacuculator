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

/// Finds the area of a rectangle
/// - Parameter length: length of rectangle
/// - Parameter width: width of rectangle
/// - Returns: area of the rectangle
func areaOfRectangle(length: Double, width: Double) -> Double {
    
    return length * width
    
}

func areaOfCircle(radius: Double) -> Double {
    return Double.pi * pow(radius, 2.0)
}



//MARK: Input
let givenlength = 10.0
let givenwidth = 2.0



//MARK: Process
let area = areaOfRectangle(length: givenlength, width: givenwidth)


//MARK: Output
print ("The area is \(area) square units")
