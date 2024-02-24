import Foundation

class Manager {
    
    static let shared = Manager()
    var allBeer: [Beer] = []
    var work: Bool = false
    private init() {}
    
    func CreateBeer(name: String) {
        self.allBeer.append(Beer(name: name))
    }
    func addCountBeer(name: String) {
        allBeer[getIndexBeer(name: name)].Plus()
        
        
    }
    
    func difCountBeer(name: String) {
        allBeer[getIndexBeer(name: name)].Dif()
        
    }
    
    func getIndexBeer(name: String) -> Int {
        for index in 0..<self.allBeer.count {
            if (allBeer[index].name == name) {
                return index
            }
        }
        return -1
    }
    
    func getCountBeer(name: String)->String {
        String(allBeer[getIndexBeer(name: name)].count)
    }
    
    
    func sellBeer()->String {
        var result: String = ""
        for name in allBeer {
            result+="\(name.name)*\(name.count) = \(name.count*3)$  "
            name.count = 0
            
        }
        return result
    }
    func check() -> Bool{
        self.work
    }
    func startDay() {
        for name in allBeer {
            name.remains = name.maxCount
            name.count = 0
        }
        self.work = true
    }
    func endDay() {
        self.work = false
    }
}
