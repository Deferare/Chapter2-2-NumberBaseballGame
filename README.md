
# **요구 사항**
### 필수 구현 기능

- Lv0
    - 요구사항별로 상세 기능을 생각해요
    - 사용하면서 발생할 수 있는 예외사항들을 생각해요
- Lv1
    - 1에서 9까지의 서로 다른 임의의 수 3개를 정하고 맞추는 게임입니다
    - 정답은 랜덤으로 만듭니다(1에서 9까지의 서로 다른 임의의 수 3자리)
- Lv2
    - 정답을 맞추기 위해 3자리수를 입력하고 힌트를 받습니다
        - 힌트는 야구용어인 **볼**과 **스트라이크**입니다.
        - 같은 자리에 같은 숫자가 있는 경우 **스트라이크**, 다른 자리에 숫자가 있는 경우 **볼**입니다
        - ex) 정답 : 456 인 경우
            - 435를 입력한 경우 → 1스트라이크 1볼
            - 357를 입력한 경우 → 1스트라이크
            - 678를 입력한 경우 → 1볼
            - 123를 입력한 경우 → Nothing
        - 만약 올바르지 않은 입력값에 대해서는 오류 문구를 보여주세요
    - 3자리 숫자가 정답과 같은 경우 게임이 종료됩니다
    - 실행 예시(정답 : 456)
        
        ```swift
        < 게임을 시작합니다 >
        숫자를 입력하세요
        435
        1스트라이크 1볼
        
        숫자를 입력하세요
        357
        1스트라이크
        
        숫자를 입력하세요
        123
        Nothing
        
        숫자를 입력하세요
        dfg // 세 자리 숫자가 아니어서 올바르지 않은 입력값
        올바르지 않은 입력값입니다
        
        숫자를 입력하세요
        199 // 9가 두번 사용되어 올바르지 않은 입력값
        올바르지 않은 입력값입니다
        
        숫자를 입력하세요
        103 // 0이 사용되어 올바르지 않은 입력값
        올바르지 않은 입력값입니다
        
        숫자를 입력하세요
        456
        정답입니다!
        ```
        
    

### 선택 구현 기능

- Lv3
    - 정답이 되는 숫자를 0에서 9까지의 서로 다른 3자리의 숫자로 바꿔주세요
        - 맨 앞자리에 0이 오는 것은 불가능합니다
            - 092 → 불가능
            - 870 → 가능
            - 300 → 불가능
- Lv4
    - 프로그램을 시작할 때 안내문구를 보여주세요
        
        ```swift
        // 예시
        환영합니다! 원하시는 번호를 입력해주세요
        1. 게임 시작하기  2. 게임 기록 보기  3. 종료하기
        ```
        
    - 1번 게임 시작하기의 경우 **“필수 구현 기능”** 의 예시처럼 게임이 진행됩니다
        - 정답을 맞혀 게임이 종료된 경우 위 안내문구를 다시 보여주세요
        
        ```swift
        // 예시
        환영합니다! 원하시는 번호를 입력해주세요
        1. 게임 시작하기  2. 게임 기록 보기  3. 종료하기
        1 // 1번 게임 시작하기 입력
        
        < 게임을 시작합니다 >
        숫자를 입력하세요
        .
        .
        .
        ```
        
- Lv5
    - 2번 게임 기록 보기의 경우 완료한 게임들에 대해 시도 횟수를 보여줍니다
        
        ```swift
        // 예시
        환영합니다! 원하시는 번호를 입력해주세요
        1. 게임 시작하기  2. 게임 기록 보기  3. 종료하기
        2 // 2번 게임 기록 보기 입력
        
        < 게임 기록 보기 >
        1번째 게임 : 시도 횟수 - 14
        2번째 게임 : 시도 횟수 - 9
        3번째 게임 : 시도 횟수 - 12
        .
        .
        .
        ```
        
- Lv6
    - 3번 종료하기의 경우 프로그램이 종료됩니다
        - 이전의 게임 기록들도 초기화됩니다
        
        ```swift
        // 예시
        환영합니다! 원하시는 번호를 입력해주세요
        1. 게임 시작하기  2. 게임 기록 보기  3. 종료하기
        3 // 3번 종료하기 입력
        
        < 숫자 야구 게임을 종료합니다 >
        ```
        
    - 1, 2, 3 이외의 입력값에 대해서는 오류 메시지를 보여주세요
        
        ```swift
        // 예시
        환영합니다! 원하시는 번호를 입력해주세요
        1. 게임 시작하기  2. 게임 기록 보기  3. 종료하기
        4
        
        올바른 숫자를 입력해주세요!
        ```
        

###
