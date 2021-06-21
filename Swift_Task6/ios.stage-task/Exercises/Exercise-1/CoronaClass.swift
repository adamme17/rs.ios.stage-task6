import Foundation

class CoronaClass {
 
     var seats = [Int]()
     var x: Int = 0
     init(n: Int) {
        
        self.x = n
        
     }
     
     func seat() -> Int {
        
        var dist: Dictionary<Int, Int> = [:]
        var distance = [Int]()
        var element: Int = 0
        
        if seats.isEmpty {
            seats.append(0)
            return 1
        }
        
        if (seats.count == 1 && x > 1) {
            seats.append(x - 1)
            return 1
        }
        
        if (seats.count >= 2 && x > 2) {
//            seats.append((x - 1) / 2)
            
            var hh: Int = 0
            
            for i in 0 ..< seats.count - 1 {
                    hh = seats[i+1] - seats[i]
                    dist[hh] = seats[i]
                    distance.append(hh)
            }
            
            
//            for j in 0 ..< distance.count - 1 where distance[j+1] == distance[j]{
//
//                    distance.removeFirst()
//
//            }
//
//            if distance[0] > 1 {
//
//                seats.append(distance[0] / 2)
//            } else {
//                seats.append(1)
//            }
//            seats.append((x - 1) / 2)
        }
        distance.sort(by: {$0 > $1})
        
//        for j in 0 ..< distance.count - 1 where distance[j+1] == distance[j] - 1{
//            distance.removeFirst()
//        }
        
//        if distance.count > 1 && distance[0] == distance[1] + 1 {
//            distance.removeFirst()
//        }
        
        if distance.dropFirst().allSatisfy({ $0 == distance.first }) == true {
            element = 0
        } else {
            element = dist[distance[0]]!
        }
            
        seats.append(element + (distance[0] / 2))
        seats.sort()
        return 1
        
     }
     
     func leave(_ p: Int) {
        for object in seats
        {
            if object == p {
                seats.remove(at: seats.firstIndex(of: p)!)
            }
        }
     }
}
