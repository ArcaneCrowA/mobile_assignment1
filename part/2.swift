class Person{
    var name: String
    var age: Int
    var email: String = "empty"
    init(name: String, age: Int, email: String){
        self.name = name
        self.age = age
        self.email = email
    }
    func display(){
        print("\(name) is \(age) years old")
    }
}
class Employee:Person{
    var salary: Int
    init(name: String, age: Int, email: String, salary: Int){
        self.salary = salary
        super.init(name:name, age:age, email:email)
    }
    override func display(){
        print("\(name) is \(age) years old has a salary of \(salary)")
    }
}
class BankAccount{
    private var balance: Double = 0.0
    init(balance: Double) {
        self.balance = balance
    }
    func deposit(value:Double){
        self.balance += value
    }
    func display(){
        print(self.balance)
    }
    func withdraw(value:Double){
        if value < 0 {
            print("Negative withdrawal amount")
        }
        else if value > self.balance{
            print("Withdrawal amount is larger than balance")
        }
        else{
            self.balance -= value
        }
    }
}

func part2(){
    let person = Person(name: "s", age: 10, email: "email")
    person.display()
    let employee = Employee(name: "Adilet", age: 24, email: "akbtu.kz", salary: 24)
    employee.display()
    let account = BankAccount(balance: 102)
    account.deposit(value: 2)
    account.display()
}
part2()
