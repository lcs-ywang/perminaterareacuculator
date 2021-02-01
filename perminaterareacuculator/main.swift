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
print("Sbp: Squared-based pyramid")
print("Rp: Rectangualr prism")
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
case "Sbp":
    print("Which part do you want to cauculate?")
    print("Sbp base: The base of the Squared-based pyramid")
    print("Sbp triangle: The lateral surface of the Squared-based pyramid")
    print("Sbp total: The total surface of the Squared-based pyramid")
    thearea = readLine()!
case "Rp":
    print("You selected the Rectangular Prism.")
    thearea = "Rp"
case "Tp":
print("Which part do you want to cauculate?")
print("Tp base: The base of the triangular prism")
print("Tp rectangle: The rectangular surface of the triangular prism")
print("Tp total: The total surface of the triangular prism")
    thearea = readLine()!

default:
    print("Please enter a valid selection next time.")
} //the default case

print("")

//MARK: Process

/// find the base area of Cylinder
/// - Parameters:
///   - height: The height of a cylinder is the distance between the two circular bases.
///   - radius: The distance from the center of a cylinder to its edge.
/// - Returns:base area of Cylinder
func BaseAreaOfCylinder(height: Double, radius: Double) -> Double {
    
    return Double.pi * radius * radius
}

/// // the function to calculate the lateral area of Cylinder
/// - Parameters:
///   - height: The height of a cylinder is the distance between the two circular bases.
///   - radius: The distance from the center of a cylinder to its edge.
/// - Returns: the lateral area of Cylinde
func LateralSurfaceAreaOfCylinder(height: Double, radius: Double) -> Double {
    
    return 2 * Double.pi * radius * height
}

/// the function to calculate the total area of Cylinder
/// - Parameters:
///   - height: The height of a cylinder is the distance between the two circular bases.
///   - radius: The distance from the center of a cylinder to its edge.
/// - Returns:  the total area of Cylinde
func TotalSurfaceAreaOfCylinder(height: Double, radius: Double) -> Double {
    
    return 2 * Double.pi * radius * height + Double.pi * radius * radius
}

/// the function to calculate surface area of Sphere
/// - Parameter radius: A radius of a circle or sphere is any of the line segments from its center to its perimeter.
/// - Returns: surface area of Sphere
func SurfaceAreaOfSphere(radius: Double) -> Double {
    
    return 4 * Double.pi * radius *  radius
}

/// the function to calculate the base area of Cone
/// - Parameter radius: A radius is the distance from the circle's middle to its perimeter, which is known as its circumference. The radius of a cone is the radius of its circular base.
/// - Returns: the base area of Cone
func BaseAreaOfCone(radius: Double) -> Double {

    return Double.pi * radius * radius
}

/// the function to calculate the lateral area of Cone
/// - Parameters:
///   - side: the apex to the edge of the base is the side of a cone
///   - radius: A radius is the distance from the circle's middle to its perimeter, which is known as its circumference. The radius of a cone is the radius of its circular base.
/// - Returns: the lateral area of Cone
func LateralSurfaceAreaOfCone(side: Double, radius: Double) -> Double {
    
    return Double.pi * radius * side
}

/// the function to calculate the total area of Cone
/// - Parameters:
///   - side: the apex to the edge of the base is the side of a cone
///   - radius: A radius is the distance from the circle's middle to its perimeter, which is known as its circumference. The radius of a cone is the radius of its circular base.
/// - Returns: the total area of Cone
func TotalSurfaceAreaOfCone(side: Double, radius: Double) -> Double {
    
    return Double.pi * radius * side + Double.pi * radius * radius
    
}


/// the function to calculate base surface area of Squared-based pyramid.
/// - Parameter base: the length of the four sides of the base in  a Squared-based pyramid
/// - Returns: base surface area of Squared-based pyramid
func baseAreaOfSquaredbasedpyramid(base: Double) -> Double {
    
    return base * base
}

/// the function to calculate the triangular surface area of Squared-based pyramid.
/// - Parameters:
///   - side: the apex to the edge of the base is the side of a Squared-based pyramid.
///   - base: the length of the four sides of the base in  a Squared-based pyramid
/// - Returns: triangular surface area of Squared-based pyramid
func triangularAreaOfSquaredbasedpyramid(side: Double, base: Double) -> Double {
    
    return (base * side)/2
}

/// The function to calculate the total surface area of Squared-based pyramid.
/// - Parameters:
///   - side: the apex to the edge of the base is the side of a Squared-based pyramid.
///   - base: the length of the four sides of the base in  a Squared-based pyramid
/// - Returns: total surface area of Squared-based pyramid
func TotalSurfaceAreaOfSquaredbasedpyramid(side: Double, base: Double) -> Double {
    
    return (base * side)/2 + base * base
    
}


/// The function to calculate the total surface area of rectungular prism.
/// - Parameters:
///   - length: the length of the side of the base in a rectangular prism
///   - width: length of the other side of the base in a rectangular prism
///   - height: the length between the top surface to the bottom surface in a rectangular prism.
/// - Returns: the total surface area of rectungular prism
func areaOfRectungularPrism(length: Double, width: Double, height:Double) -> Double {
    
    return length * width * height
    
}

/// The function to calculate the total base area of triangular prism.
/// - Parameters:
///   - baseB: one side of the bottom of a triangular prism
///   - length: the length between the opposite point of the base B to the side b
/// - Returns: the total base area of triangular prism
func BaseAreaTriangularPrism(baseB: Double, length: Double) -> Double {
    return (baseB * length)/2
}

/// The function to calculate the triangular area of triangular prism
/// - Parameters:
///   - baseA: the length of one side of the base in the triangular prism
///   - baseB: the length of one side of the base in the triangular prism
///   - baseC: the length of one side of the base in the triangular prism
///   - height: the length between the top surface to the bottom surface in a triangular prism.
/// - Returns: the triangular base area of triangular prism
func RectangularAreasTriangularPrism(baseA: Double, baseB: Double, baseC: Double, height: Double) -> Double {
    return baseA * height + baseB * height + baseC * height
}

/// The function to calculate the total area of triangular prism
/// - Parameters:
///   - baseA: the length of one side of the base in the triangular prism
///   - baseB: the length of one side of the base in the triangular prism
///   - baseC: the length of one side of the base in the triangular prism
///   - height: the length between the top surface to the bottom surface in a triangular prism.
///   - length: the length between the opposite point of the base B to the side b
/// - Returns: the total surface area of the triangular prism
func TotalAreasTriangularPrism(baseA: Double, baseB: Double, baseC: Double, height: Double, length: Double) -> Double {
    return baseA * height + baseB * height + baseC * height + (baseB * length)/2
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

//the base area of Cone
    case "Sbp base":
        // Input
        print("You selected the base area of Squared-based pyramid.")
        print("")
        print("Please enter the base: ", terminator: "")
        let givenbase = Double(readLine()!)!
        // Process
        let result = baseAreaOfSquaredbasedpyramid(base: givenbase)
        // Output
        print("")
        print("The base area of the Squared-based pyramid is \(result) square units.")
   
//the lateral surface area of Cylinder
case "Sbp triangle":
        // Input
        print("You selected the triangular surface area of Squared-based pyramid.")
        print("")
        print("Please enter the base: ", terminator: "")
        let givenbase = Double(readLine()!)!
        print("Please enter the side: ", terminator: "")
        let givenside = Double(readLine()!)!
        // Process
        let result = triangularAreaOfSquaredbasedpyramid(side: givenside, base: givenbase)
        // Output
    print("")
        print("The triangular area of the Cone is \(result) square units.")
   
//the total area of Cylinder
case "Sbp total":
        // Input
        print("You selected the total surface area of Squared-based pyramid.")
        print("")
    print("Please enter the base: ", terminator: "")
    let givenbase = Double(readLine()!)!
    print("Please enter the side: ", terminator: "")
    let givenside = Double(readLine()!)!
        // Process
        let result = TotalSurfaceAreaOfSquaredbasedpyramid(side: givenside, base: givenbase)
    // Output
    print("")
        print("The total area of the Cone is \(result) square units.")
//the area of rectangular prism
case "Rp":
        // Input
        print("")
    print("Please enter the length: ", terminator: "")
       let givenLength = Double(readLine()!)!
       print("Please enter the width: ", terminator: "")
       let givenWidth = Double(readLine()!)!
    print("Please enter the height: ", terminator: "")
       let givenheight = Double(readLine()!)!
        // Process
    let result = areaOfRectungularPrism(length: givenLength, width: givenWidth, height:givenheight)
        // Output
    print("")
        print("The surface area of the Sphere is \(result) square units.")
    
case "Tp base":
        // Input
    print("You selected the base area of the Triangular Prism.")
        print("")
    print("Please enter the lenth of the side B of the base: ", terminator: "")
       let givenbaseB = Double(readLine()!)!
       print("Please enter the length: ", terminator: "")
       let givenlength = Double(readLine()!)!
        // Process
    let result = BaseAreaTriangularPrism(baseB:givenbaseB, length: givenlength)
        // Output
    print("")
        print("The base area of the Triangular Prism is \(result) square units.")

case "Tp rectangle":
        // Input
    print("You selected the rectangular areas of the Triangular Prism.")
        print("")
    print("Please enter the lenth of the side A of the base: ", terminator: "")
       let givenbaseA = Double(readLine()!)!
    print("Please enter the lenth of the side B of the base: ", terminator: "")
       let givenbaseB = Double(readLine()!)!
    print("Please enter the lenth of the side C of the base: ", terminator: "")
       let givenbaseC = Double(readLine()!)!
       print("Please enter the height: ", terminator: "")
       let givenheight = Double(readLine()!)!
        // Process
    let result = RectangularAreasTriangularPrism(baseA:givenbaseA, baseB:givenbaseB, baseC: givenbaseC, height: givenheight)
        // Output
    print("")
        print("The rectangular areas of the Triangular Prism is \(result) square units.")

case "Tp total":
        // Input
    print("You selected the total area of the Triangular Prism.")
        print("")
    print("Please enter the lenth of the side A of the base: ", terminator: "")
       let givenbaseA = Double(readLine()!)!
    print("Please enter the lenth of the side B of the base: ", terminator: "")
       let givenbaseB = Double(readLine()!)!
    print("Please enter the lenth of the side C of the base: ", terminator: "")
       let givenbaseC = Double(readLine()!)!
       print("Please enter the height: ", terminator: "")
       let givenheight = Double(readLine()!)!
    print("Please enter the length: ", terminator: "")
    let givenlength = Double(readLine()!)!
        // Process
    let result = TotalAreasTriangularPrism(baseA:givenbaseA, baseB:givenbaseB, baseC: givenbaseC, height: givenheight, length: givenlength)
        // Output
    print("")
        print("The total area of the Triangular Prism is \(result) square units.")

default:
    print("Please enter a valid selection next time.")
}

