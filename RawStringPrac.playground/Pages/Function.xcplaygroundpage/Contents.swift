import Foundation

var email: String = "atcgsp912@gmail.com" // 초기화를 동시에 진행

var email2: String?

email2 = "atcgsp912@gmail.com"

type(of: email)
type(of: email2)

var array: [Int] = Array(repeatElement(0, count: 100))
print(array)

var array2: [Int]? = [Int](0...100)
type(of: array2)

var result = ""

// 삼항연산자
// 조건(Bool) ? ㅇㅇ : ㄴㄴ
result = array2 == nil ? "값이 없습니다." : "값이 있습니다."


func bmiResult() -> Double {
    
    let result = Double.random(in: 1...30)
    
    if result < 18.5 {
        return 1.0
    } else if result >= 18.5, result < 23 {
        return 2.0
    }
    
    return 3.0
}

print(bmiResult())

// 리턴 생략 (Swift 5.1)
// 함수 내 코드가 한 줄이면, 리턴값 생략 가능
func randomNumber() -> Int {
    Int.random(in: 1...100)
}

// 닉네임: 손님
// 매게변수 기본값
// 함수이름이 같음 함수 > 오버로딩
func sayHello(nickname: String? = "Owen", gender: Int? = 2) -> String {
    return nickname! + " 님 반갑습니다!"
}



func sayHello(nickname: String? = "Owen", gender: Int? = 2, overrideBool: Bool) -> String {
    if overrideBool {
        return nickname! + "오버라이드"
    }
    
    return "안됨"
}

sayHello(overrideBool: true)

enum Gender {
    case man
    case woman
    case nothing
}

var gender: Gender = Gender.man // 남자 여자 선택 안함

//if gender == 0 {
//
//} else if gender == 1 {
//
//
//} else if gender == 2 {
//
//
//}

switch gender {
case .man: print("남성입니다.")
case .woman: print("여성입니다.")
case .nothing: print("아직 선택하지 않았습니다.")
default:
    print("오류입니다")
}

enum HTTPCode: Int {
    case OK
    case NO_PAGE
    case NOT_FOUND = 404
    case SERVER_ERROR
    
}

var networkStatus: HTTPCode = .NO_PAGE

//switch networkStatus {
//case .OK
//    
//}


