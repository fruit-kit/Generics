import UIKit

//1. Сделать шаблонные функции для сложения/вычитания/умножения/деления для одинаковых типов (пр. Int+Int).
func addition<T: Numeric>(of firstNum: T, with secondNum: T) -> T {
    firstNum + secondNum
}
func subtraction<T: Numeric>(of firstNum: T, with secondNum: T) -> T {
    firstNum - secondNum
}
func multiply<T: Numeric>(of firstNum: T, with secondNum: T) -> T {
    firstNum * secondNum
}
func devision<T: FloatingPoint>(of firstNum: T, with secondNum: T) -> T {
    firstNum / secondNum
}
func devision<T: BinaryInteger>(of firstNum: T, with secondNum: T) -> T {
    firstNum / secondNum
}

//* Добавить возможность арифмитических действий с разными типами (пр. Int + Double)
func addition<T: Numeric, F: Numeric>(of firstNum: T, with secondNum: F) -> Double {
    (Double("\(firstNum)") ?? 0) + (Double("\(secondNum)") ?? 0)
}
func subtraction<T: Numeric, F: Numeric>(of firstNum: T, with secondNum: F) -> Double {
    (Double("\(firstNum)") ?? 0) - (Double("\(secondNum)") ?? 0)
}
func multiply<T: Numeric, F: Numeric>(of firstNum: T, with secondNum: F) -> Double {
    (Double("\(firstNum)") ?? 0) * (Double("\(secondNum)") ?? 0)
}
func devision<T: Numeric, F: Numeric>(of firstNum: T, with secondNum: F) -> Double {
    (Double("\(firstNum)") ?? 0) / (Double("\(secondNum)") ?? 0)
}
