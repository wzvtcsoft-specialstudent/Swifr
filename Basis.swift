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




//范围
let closeRange = 1...5  //1-5的整数
let halfRange = 1..<5 //1-5的整数（但不包括5）
let rangeToMax = 1... //1-无穷大
let rangeToMin = ...10 // 无穷小到10
    //范围的使用可以搭配switch使用
var scroe = 75
switch scroe {
case 0...60:
    print("不及格")
case 60..<80:
    print("良好")
case 80...100:
    print("优秀")
default:
    print("成绩无效，请重新输入")
}



//for-in 循环
for i in 1...10{
    print("第\(i)次循环")
}

var result = 1
for _ in 1...10{
    result *= 2
}
print("2的十次方是\(result)")


//guard和if语句的区别使用


func Text_1(real: Bool, date: Bool, place: Bool) -> String{
    if !date {  return "商品过期"  }
    if !real { return "假冒产品" }
    if !place { return "产地不明"  }
    return "商品合格"
}



func Text_2(real: Bool, date: Bool, place: Bool) -> String{
    guard date == true else { return "商品过期" }
    guard real == true else { return "假冒产品" }
    guard place == true else { return "产地不明" }
    return "商品合格"
}

Text_1(real: false, date: true, place: true)
Text_2(real: false, date: true, place: true)



//可选类型的声明和使用场景

var optionalNumber: Int? = 2 //类型后面加上 ？则是可选类型。 可选类型不能被类型推断
var sum = optionalNumber! + 3 //可选类型进行展开后（加上“ ！”），才能进行正常的加减运算
print(optionalNumber!)       //应对其进行展开后，才能正常输出，否则会黄色报错。虽然可以运行，但应干掉黄色报警

/*
 当一个可选类型没有值时，显示为nil
 这时并不能对其进行展开，因为其没有值
 
 var job: String?
 print(job!)
 */




//空合运算符
var job: String?
print(job ?? "job没有值") //空合运算符指的是当指定的数据没有值的时候（及值nil），输出后面的默认值；当有值的时候，自动对其进行展开并且使用它
job = "job有值"
print(job ?? "job没有值")


//以上对可选类型的展开为强制解析
//还有隐式解析
var optionalDecimal: Double! = 2.5
optionalDecimal + 3       //隐式解析使用可选类型时，Switf自动进行展开。



optionalDecimal = nil
//optionalDecimal + 3  //正因为隐式解析会自动展开，所以需要小心空的可选类型
if optionalDecimal != nil {
    print("可选类型optionalDecimal有值，值为\(optionalDecimal!)")
}


// 可选绑定
//对可选类型进行判断，如果有值的话则会将其展开并将值赋一个常量，这个常量是局部变量只能在花括号内使用。
//与上一段代码的效果相同
var optionalDouble: Double? = 2.5
if let optionalDouble = optionalDouble {
    print("可选类型optionalDecimal有值，值为\(optionalDouble)")
}


//使用可选绑定
func register_1(username: String?, password:String?) -> String{
    if let username = username {
        if let password = password {
           return ("注册成功，用户名\(username),密码\(password)")
        } else {
            return "密码未填写"
        }
    } else {
        return "用户名未填写"
    }
}
//上面的if嵌套语句过于眼花缭乱，可以使用下面的guard语句
func register_2(username: String?, password:String?) -> String {
    guard let username = username else { return "用户名未填写" }
    guard let password = password else { return "密码未填写" }
    return ("注册成功，用户名\(username),密码\(password)")
}

register_1(username: "admin", password: nil)
register_1(username: "admin", password: "admin")
register_2(username: "admin", password: nil)
register_2(username: "admin", password: "admin")




//枚举
enum Direction{
    case east
    case west
    case south
    case north
}

enum AppleOS {
    case iOS, macOS, watchOS,tvOS
}

var walk: Direction = Direction.north
walk = .east

