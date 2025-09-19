//
//  3.swift
//  assignment1
//
//  Created by Adilet Beishekeyev on 19.09.2025.
//

func sum(a: Int, b:Int)-> Int{
    return a + b
}
    
let s = sum(a:1,b:2)
print(s)



let lambda = {(num1: Int, num2: Int) -> Int in
    return num1 * num2
}

print(lambda(5,7))

func applyLambda(num1: Int,num2: Int, lambda: (Int, Int) -> Int) -> Int{
    return lambda(num1,num2)
}

print(applyLambda(num1: 3, num2: 4, lambda: lambda))
