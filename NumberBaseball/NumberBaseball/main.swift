//
//  NumberBaseball - main.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import Foundation



let initialNumbers = makeRandomNumbers()

enum inputError : Error {
    case notOnlyNumber
    case outOfRange
    case sameNumber
    case numberOfInput
}

func makeRandomNumbers() -> [Int] {
    var resultNumbers: Set<Int> = []
    let numbers = Array(1...9)
    
    while resultNumbers.count < 3 {
        guard let randomElement = numbers.randomElement() else {
            continue
        }
        resultNumbers.insert(randomElement)
    }
    return Array(resultNumbers)
}

func playGame() {
    var leftChances = 9
    
    while leftChances > 0 {
        var inputNumbers : Array<Int> = []
        var result : Array<Int> = []
        
        print("숫자 3개를 띄어쓰기로 구분하여 입력해주세요.")
        print("중복 숫자는 허용하지 않습니다.")
        print("입력 :", terminator: " ")
        
        guard let userInput = readLine() else {
            continue
        }
        
        do {
            inputNumbers = try checkAvailability(userInput: userInput)
        } catch inputError.notOnlyNumber {
            print("입력 형식이 잘못 되었습니다! 숫자만 입력해 주세요.")
        } catch inputError.numberOfInput {
            print("입력 갯수가 잘못 되었습니다.")
        } catch inputError.outOfRange {
            print("범위를 벗어 났습니다!")
        } catch inputError.sameNumber {
            print("중복된 숫자가 있습니다!")
        } catch {
            print(error.localizedDescription)
        }
        
        guard inputNumbers.isEmpty == false else {
            continue
        }
        
        result = checkStrikeBall(numbers: inputNumbers)
        
        let strike = result[0]
        let ball = result[1]
        
        if strike == 3 {
            print("사용자 승리!")
            return
        }
        
        leftChances -= 1
        
        print("\(strike) 스트라이크, \(ball) 볼")
        print("남은 기회 : \(leftChances)", terminator: "\n\n")
    }
    print("컴퓨터의 승리입니다.")
}

func checkStrikeBall(numbers: [Int]) -> [Int] {
    var strike = 0
    var ball = 0
    
    for index in 0...2 {
        if initialNumbers[index] == numbers[index] {
            strike += 1
        } else if initialNumbers.contains(numbers[index]) {
            ball += 1
        }
    }
    return [strike,ball]
}

func checkAvailability(userInput: String) throws -> [Int] {
    
    let userInput = userInput.split(separator: " ")
    
    for number in userInput {
        guard Int(number) != nil else {
            throw inputError.notOnlyNumber
        }
    }
    
    guard userInput.count == 3 else {
        throw inputError.numberOfInput
    }
    
    let inputNumbers = userInput.compactMap { number in Int(number) }
    
    for number in inputNumbers {
        guard number > 0 && number < 10 else {
            throw inputError.outOfRange
        }
    }
    
    guard Set(inputNumbers).count == 3 else {
        throw inputError.sameNumber
    }
    
    return inputNumbers
}

func menuPrint() {
    while true {
        print("1. 게임시작")
        print("2. 게임종료")
        print("원하는 기능을 선택해주세요 : ", terminator: " ")
        guard let userInput = readLine() else {
            continue
        }
        
        switch userInput {
        case "1" :
            playGame()
        case "2" :
            print("게임을 종료합니다")
            return
        default :
            print("입력이 잘못되었습니다")
            continue
        }
    }
}

menuPrint()
