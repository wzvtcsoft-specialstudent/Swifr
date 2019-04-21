//函数定义的写法不同
func sum(number1: Int, number2: Int) -> Int {
    let result = number1 + number2
    return result
}
sum(number1: 10, number2: 10)



//Swift有字符串差值功能，可以使输出更加详细
func sayHello(){
    print("你好，我是章三")
}

func sayHelloName(name: String){
    print("你好，我是\(name)" )
}
sayHello()
sayHelloName(name: "章三")
sayHelloName(name: "李四")


//在函数中的参数可以用参数标签代替，更加直观清晰

func filight (frome: String, to:String){
    print("这是一架从\(frome)到\(to)的航班")
}

filight(frome: "温州", to: "上海")

func bus (frome departure: String, to arrival: String){
    print("这是一辆\(departure)到\(arrival)的公交车")
}

bus(frome: "温州职业技术学院", to: "温州南站")


//调用函数时外部参数可以不用显示， 使用_"

func squre(_ number: Int) -> Int {
    let result = number * number
    return result
}

squre(2)


//元组的使用
var mountain: (String, Double, String) = ("珠穆朗玛峰", 8848.43, "位于中国和尼泊尔边境")  //可以去掉括号中的类型定义，因为Swift具有函数推断功能

let (name, height, position) = mountain
print("\(name)高\(height)米，位于\(position)")

 //亦可取出其中几项
let (justName, _, andPosition) = mountain
print("\(name)位于\(andPosition)")


