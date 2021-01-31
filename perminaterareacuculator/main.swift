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


//get the type of the geometric feature
print("What Geometric Feature do you want to cauculate?")
print("Cy: Cylinder")
print("Sp: Sphere")
print("Co: Cone")
print("Sp: Squared-based pyramid")
print("Rp: Rectangualr prism")
print("Sp: Squared-based pyramid")
print("Tp: Triangular prism")//keep following output on the same line
let type = readLine()!

print("")

//get the part that need to be cauculated
var thearea:String = ""
switch type{
case "Cy":
    print("Which part do you want to cauculate?")
    print("Cy base: The base of the Cylender")
    print("Cy lateral: The lateral surface of the Cylender")
    print("Cy total: The total surface of the Cylender")
    thearea = readLine()!
case "Sp":
    print("You selected the Sphere.")
    thearea = "Sp"
case "Co":
    print("Which part do you want to cauculate?")
    print("Co base: The base of the Cone")
    print("Co lateral: The lateral surface of the Cone")
    print("Co total: The total surface of the Cone")
    thearea = readLine()!
    
    
default:
    print("Please enter a valid selection next time.")
}

print("")

//MARK: Process

// the function to calculate the base area of Cylinder
func BaseAreaOfCylinder(height: Double, radius: Double) -> Double {
    
    return Double.pi * radius * radius
}

// the function to calculate the lateral area of Cylinder
func LateralSurfaceAreaOfCylinder(height: Double, radius: Double) -> Double {
    
    return 2 * Double.pi * radius * height
}

// the function to calculate the total area of Cylinder
func TotalSurfaceAreaOfCylinder(height: Double, radius: Double) -> Double {
    
    return 2 * Double.pi * radius * height + Double.pi * radius * radius
}

//the function to calculate surface area of Sphere
func SurfaceAreaOfSphere(radius: Double) -> Double {
    
    return 4 * Double.pi * radius *  radius
}

// the function to calculate the base area of Cone
func BaseAreaOfCone(radius: Double) -> Double {
    
    return Double.pi * radius * radius
}

// the function to calculate the lateral area of Cone
func LateralSurfaceAreaOfCone(side: Double, radius: Double) -> Double {
    
    return Double.pi * radius * side
}

// the function to calculate the total area of Cone
func TotalSurfaceAreaOfCone(side: Double, radius: Double) -> Double {
    
    return Double.pi * radius * side + Double.pi * radius * radius
    
}

    
 

//the switch statemnet of cases
switch thearea {
//the base area of Cylinder
    case "Cy base":
        // Input
        print("You selected the base area of Cylender.")
        print("")
        print("Please enter the radius: ", terminator: "")
        let givenradius = Double(readLine()!)!
        print("Please enter the height: ", terminator: "")
        let givenheight = Double(readLine()!)!
        // Process
        let result = BaseAreaOfCylinder(height: givenheight, radius: givenradius)
        // Output
        print("")
        print("The base area of the Cylinder is \(result) square units.")
   
//the lateral surface area of Cylinder
case "Cy lateral":
        // Input
        print("You selected the lateral surface area of Cylender.")
        print("")
        print("Please enter the radius: ", terminator: "")
        let givenradius = Double(readLine()!)!
        print("Please enter the height: ", terminator: "")
        let givenheight = Double(readLine()!)!
        // Process
        let result = LateralSurfaceAreaOfCylinder(height: givenheight, radius: givenradius)
        // Output
    print("")
        print("The lateral area of the Cylinder is \(result) square units.")
   
//the total area of Cylinder
case "Cy total":
        // Input
        print("You selected the total surface area of Cylender.")
        print("")
        print("Please enter the radius: ", terminator: "")
        let givenradius = Double(readLine()!)!
        print("Please enter the height: ", terminator: "")
        let givenheight = Double(readLine()!)!
        // Process
        let result = TotalSurfaceAreaOfCylinder(height: givenheight, radius: givenradius)
        // Output
    print("")
        print("The total area of the Cylinder is \(result) square units.")

//the area of sphere
case "Sp":
        // Input
        print("")
        print("Please enter the radius: ", terminator: "")
        let givenradius = Double(readLine()!)!
        // Process
    let result = SurfaceAreaOfSphere(radius: givenradius)
        // Output
    print("")
        print("The surface area of the Sphere is \(result) square units.")
    
//the base area of Cone
    case "Co base":
        // Input
        print("You selected the base area of Cone.")
        print("")
        print("Please enter the radius: ", terminator: "")
        let givenradius = Double(readLine()!)!
        // Process
        let result = BaseAreaOfCone(radius: givenradius)
        // Output
        print("")
        print("The base area of the Cone is \(result) square units.")
   
//the lateral surface area of Cylinder
case "Co lateral":
        // Input
        print("You selected the lateral surface area of Cone.")
        print("")
        print("Please enter the radius: ", terminator: "")
        let givenradius = Double(readLine()!)!
        print("Please enter the side: ", terminator: "")
        let givenside = Double(readLine()!)!
        // Process
        let result = LateralSurfaceAreaOfCone(side: givenside, radius: givenradius)
        // Output
    print("")
        print("The lateral area of the Cone is \(result) square units.")
   
//the total area of Cylinder
case "Co total":
        // Input
        print("You selected the total surface area of Cone.")
        print("")
        print("Please enter the radius: ", terminator: "")
        let givenradius = Double(readLine()!)!
        print("Please enter the height: ", terminator: "")
        let givenside = Double(readLine()!)!
        // Process
        let result = TotalSurfaceAreaOfCone(side: givenside, radius: givenradius)
        // Output
    print("")
        print("The total area of the Cone is \(result) square units.")



default:
    print("Please enter a valid selection next time.")
}
