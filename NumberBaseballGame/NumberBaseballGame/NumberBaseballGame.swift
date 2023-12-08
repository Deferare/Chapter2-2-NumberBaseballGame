class NumberBaseballGame {
    private var history: [Int] = []
    
    init() {
        gameStream()
    }
    
    private func gameStream() {
        while true {
            print(
            """
            환영합니다! 원하시는 번호를 입력해주세요
            1. 게임 시작하기  2. 게임 기록 보기  3. 종료하기
            """)
            
            while true {
                guard let inputValue = readLine() else { return }
                if inputValue == "1" {
                    history.append(play())
                    break
                } else if inputValue == "2" {
                    showHistory()
                    break
                } else if inputValue == "3" {
                    quit()
                    break
                } else {
                    print("\n", "올바른 숫자를 입력해주세요!")
                }
            }
        }
    }
}

extension NumberBaseballGame {
    private func play() -> Int {
        print("\n", "< 게임을 시작합니다 >")
        
        let set: Set<Character> = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
        let correctNums = getNumbers()
        var tryNum = 0
        
        while true {
            print("숫자를 입력하세요")
            
            guard let choseBall = readLine() else { return 0 }
            
            if checkBallCondition(choseBall) {
                tryNum += 1
                let gameResult = judgeTheNums(choseBall, correctNums)
                print(gameResult, "\n")
                if choseBall == correctNums { break }
            } else {
                print("\n", "올바르지 않은 입력값입니다")
            }
        }
        
        func checkBallCondition(_ choseBall: String) -> Bool {
            return choseBall.count == 3 && choseBall[0] != "0" && set.contains(choseBall[0]) && set.contains(choseBall[1]) && set.contains(choseBall[2]) && choseBall[0] != choseBall[1] && choseBall[0] != choseBall[2] && choseBall[1] != choseBall[2]
        }
        
        return tryNum
    }
    
    private func showHistory() {
        print("\n", "< 게임 기록 보기 >")
        if history.count == 0 {
            print("시도 한 게임이 없습니다")
        }
        for i in 0..<history.count {
            print("\(i+1)번째 게임 : 시도 횟수 - \(history[i])")
        }
        print()
    }
    
    private func quit() {
        print("\n", "< 숫자 야구 게임을 종료합니다 >", "\n")
        history.removeAll()
    }
}

// MARK: - Helpers
extension NumberBaseballGame {
    private func getNumbers() -> String {
        var cache:Set<Int> = []
        
        while cache.count < 3 { cache.insert((0...9).randomElement()!) }
        
        let result = String(cache.map { return Character(String($0)) })
        
        if result[0] == "0" { return String(result.reversed()) }
        
        return result
    }
    
    private func judgeTheNums(_ nums: String,_ correct: String) -> String {
        if nums == correct { return "정답입니다!" }
        
        var strike = 0, ball = 0
        
        for i in 0..<3 {
            for j in 0..<3 {
                if nums[i] == correct[j] {
                    if i == j { strike += 1 }
                    else { ball += 1 }
                }
            }
        }
        
        var result = ""
        
        if strike > 0 { result += "\(strike)스트라이크" }
        if ball > 0 { result += "\(ball)볼" }
        if result == "" { result = "Nothing" }
        
        return result
    }
}
