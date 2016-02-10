//
//  ViewController.swift
//  HomeWork3
//
//  Created by Ярослав on 28.01.16.
//  Copyright © 2016 Ярослав. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        task1()
        
        print("2---------------------")
        task2()
        
        print("3---------------------")
        task3()
        
        
        print("4---------------------")
        task4()
        
        print("5---------------------")
        task5()
        
        print("6---------------------")
        task6()
        
        print("7---------------------")
        task7()
        
        
    }
    
    
    
    //    1 создать строку с своим именем
    //    вывести количество символов содержащихся в ней
    func task1() {
        let name = "Ярослав"
        
        
        print("Name \(name) contains \(name.characters.count) characters")
    }
    
    //    2 создать строку с своим отчеством
    //    проверить его на окончание “ич”
    //    (в классе написан метод который позволяет проверить на суффикс или префикс, найдите и используйте его)
    
    func task2() {
        let fatherName = "Владимирович"
        if fatherName.hasSuffix("ич") {
            print("\(fatherName) содержит суфикс ич")
        } else {
            print("\(fatherName) не содержит суфикс ич")
        }
    }
    
    
    
    //    3 создать строку где слитно написано Ваши ИмяФамилия “IvanVasilevich"
    //    разбить на две отдельных строки из предыдущей создать третью где они обе будут разделены пробелом
    //    str1 = “Ivan”
    //    str2 = “Vasilevich”
    //    str3 = “Ivan Vasilevich"
    
    func task3() {
        let name = "YaroslavVladimirovich"
        let firstName = name.substringToIndex(name.endIndex.advancedBy(-13))
        
        let secondName = name.substringFromIndex(name.startIndex.advancedBy(8))
        
        let fullName = "\(firstName) \(secondName)"
        
        
        
        //        print(firstName)
        //        print(secondName)
        print(fullName)
    }
    
    
    
    func isUpper(char: Character) -> Bool {
        if String(char) == String(char).uppercaseString && String(char) != String(char).lowercaseString {
            return true
        }
        return false
    }
    
    
    //    4 вывести строку зеркально Ось -> ьсО
    //    не используя reverse (посимвольно)
    
    func task4() {
        let word = "Ось"
        var reverceWord = ""
        
        for letter in word.characters {
            reverceWord = String(letter) + reverceWord
        }
        
        print("\(word) -> \(reverceWord)")
        
        
        
    }
    
    
    //    5 добавить запятые в строку как их расставляет калькулятор
    //    1234567 -> 1,234,567
    //    12345 -> 12,345
    //    (не использовать встроенный метод для применения формата)
    
    
    
    
    func task5() {
        var num = "1234567891"
        var reverceNum = ""
        var i = 0
        for letter in num.characters {
            if i % 3 != 0 {
                reverceNum = String(letter) + reverceNum
            } else {
                reverceNum = String(letter) + "," + reverceNum
            }
            
            i++
            
        }
        num = ""
        reverceNum = reverceNum.substringToIndex(reverceNum.endIndex.advancedBy(-1))
        for letter in reverceNum.characters {
            num = String(letter) + num
        }
        print("\(reverceNum)")
        
        
        
    }
    
    //    6 проверить пароль на надежность от 1 до 5
    //    a) если пароль содержит числа +1
    //    b) символы верхнего регистра +1
    //    c) символы нижнего регистра +1
    //    d) спец символы +1
    //    e) если содержит все вышесказанное
    //    пример:
    //    123456 - 1 a)
    //    qwertyui - 1 c)
    //    12345qwerty - 2 a) c)
    //    32556reWDr - 3 a) b) c)
    
    
    func task6() {
        
        let pass = "Pass1234!"
        var isLowerCase:Bool
        var isUpperCase:Bool
        var isNumber:Bool
        var isSpec:Bool
        var score:Int
        let spec = "!@#$%^&*()_+-=?/"
        
        
        
        for char in pass.characters {
            if String(char) == String(char).uppercaseString && String(char) != String(char).lowercaseString {
                isUpperCase = true
                print("is upper")
            }
            
            if String(char) != String(char).uppercaseString && String(char) == String(char).lowercaseString {
                isLowerCase = true
                print("is lower")
            }
            
            if Int(String(char)) != nil {
                isNumber = true
                print("is num")
            }
            
            
            for sp in spec.characters{
                if String (char) == String (sp) {
                    isSpec = true
                    print("is spec")
                }
                
            }
        }
    }
    
    //
    //        if isNumber {
    //            score++
    //        }
    //        if isUpperCase {
    //            score++
    //        }
    //        if isLowerCase {
    //            score++
    //        }
    //        if score == 4 {
    //            score++
    //        }
    
    //7 сортировка массива не встроенным методом по возрастанию + удалить дубликаты
    
    
    func task7() {
        
        var testArray2 = [Int]()
        var testArray = [Int]()
        for _ in 0..<20 {
            testArray.append(Int(arc4random_uniform(10)))
        }
        print(testArray)
        print(testArray[0])
        var temp : Int
        for i in 0..<20 {
            for y in 0..<20 {
                if testArray[i] <= testArray[y] {
                    temp = testArray[i]
                    testArray[i] = testArray[y]
                    testArray[y] = temp
                }
            }
        }
        
        
        print(testArray)
        
        for i in 1..<20 {
            if testArray[i] != testArray[i-1] {
                testArray2.append(testArray[i-1])
            }
        }
        //print(testArray2)
        if testArray[19] != testArray2[testArray2.count - 1] {
            testArray2.append(testArray[19])
        }
        
        print(testArray2)
        
        for i in testArray2 {
            print("\(i): ", terminator:"")
            for j in testArray {
                if i == j {
                    
                    
                    print("* ", terminator:"")
                }
            }
            print("")
        }
        
    }
}



