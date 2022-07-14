import Foundation

class Monster {
    var clothes: String
    var speed: Double
    var power: Int
    var expoint: Int
    
    init(clothes: String, speed: Double, power: Int, expoint: Int) {
        self.clothes = clothes
        self.speed = speed
        self.power = power
        self.expoint = expoint
    }
}


var easyMonster = Monster(clothes: "오렌지", speed: 40.0, power: 500, expoint: 4000) // 초기화(인스턴스)

easyMonster.power
easyMonster.expoint
easyMonster.speed
easyMonster.clothes


