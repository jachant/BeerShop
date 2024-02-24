import Foundation

class Beer {
    let name: String
    var count: Int = 0
    let maxCount: Int = 100
    var remains: Int = 100
    init(name: String) {
        self.name = name
    }
    
    func Plus() {
        if (self.remains>0) {
            self.count+=1
            self.remains-=1
        }
    }
    func Dif() {
        if (self.count>0) {
            self.count-=1
            self.remains+=1
        }
    }
    
    
}
