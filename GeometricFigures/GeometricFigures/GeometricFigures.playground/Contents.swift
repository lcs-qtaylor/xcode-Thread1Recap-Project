
import Cocoa


struct Cylinder{

    let pie = Double.pi
    var height: Double
    var radius: Double

    var areaOfBase: Double {
        return pie*radius*radius}

    var areaOfLateralSurface: Double {
        return 2*pie*radius }

    var areaOfTotal: Double {
        return 2*areaOfLateralSurface+areaOfBase
        
    var volume: Double{
        return areaOfBase*height/3
    }
    
}
    
let firstFigure = Cylinder(height: 1, radius: 1)
    
firstFigure.height
firstFigure.radius

firstFigure.areaOfBase
firstFigure.areaOfLateralSurface
firstFigure.areaOfTotal
firstFigure.volume


