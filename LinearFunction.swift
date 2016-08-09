//  Write some awesome Swift code, or import libraries like "Foundation",
//  "Dispatch", or "Glibc"

class LinearFunction{

    var m:Double
    var x:Double
    var b:Double
    private var mDescription:String?
    var description:String {
        
        if let descr = mDescription{
            return descr
        }else{
            return "There's no description yet"
        }
    }
        
    
    
    
    init(slope: Double = 1, x: Double, originSlope: Double = 0, description:String? = nil){
    
        self.m = slope
        self.x = x
        self.b = originSlope
        self.mDescription = description
        
    }
    
    
    init(firstCoords:(x: Double, y: Double), secondCoords:(x: Double, y:Double), description:String? = nil){
        
        self.m = (secondCoords.y - firstCoords.y)/(secondCoords.x - firstCoords.x)
        self.b = firstCoords.y - (firstCoords.x * self.m)
        self.x = (-self.b) / (self.m)
        self.mDescription = description
    }
    
}

