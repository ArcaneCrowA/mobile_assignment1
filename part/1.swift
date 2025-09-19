
func part1() {
    let x1: Int = 10
    print(x1)
    let x2: Double = -10.0
    print(x2)
    let x3: String = "Ten"
    print(x3)
    let x4: Bool = true
    print(x4)
    
    if x1 > 0 {
        print("positive")
    }
    for i in 1...3 {
        print(i)
    }
    
    let arr = [1,2,3,4,5]
    print(arr.reduce(0, +))
    
    
}



part1()

