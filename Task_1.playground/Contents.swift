// Задача № 1 / Проверка символов строки на уникальность

//Заданние: Написать функцию, которая принимает строку как свой единственный параметр и возвращает true если строка содержит только уникальные символы.

//Решение:

let a = "Hello, world"

func uniqueSymbol(string: String) -> Bool {
    
    var chekedSymbols = [Character]()
    
    for symbol in string {
        if chekedSymbols.contains(symbol){
            return false
        }
        chekedSymbols.append(symbol)
    }
    
    return true
}

uniqueSymbol(string: a)


//Решение 2: Set возвращает только уникальные значения и удаляет их повторения, поэтому будем проверять по длине строке и если они одинаковы то значения только уникальные в данной строке.
//Решение лучше тем что не нужно каждый символ сравнивать с тем что хранится в строке, и Set рабоатет быстрее

func uniqueSymbol2(input: String) -> Bool {
    return Set(input).count == input.count
}

Set(a)
uniqueSymbol2(input: a)
uniqueSymbol2(input: "LABQW")

