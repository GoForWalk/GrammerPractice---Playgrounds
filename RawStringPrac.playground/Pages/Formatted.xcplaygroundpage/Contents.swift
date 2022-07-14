import Foundation

// Date Format
let date = Date()


print(date)
print(date.formatted())
print(date.formatted(date: .long, time: .standard))
print(date.formatted(date: .abbreviated, time: .standard))
print(date.formatted(date: .complete, time: .omitted))
print(date.formatted(date: .numeric, time: .complete))
print(date.formatted(date: .omitted, time: .shortened))

let locale = Locale(identifier: "ko-KR")


print("---------------------------------date.formatted(안에 점 접근법 초기화)---------------------------------------------")
let result = date.formatted(.dateTime.locale(locale).day().month(.twoDigits).year())
print(result)

let result2 = date.formatted(.dateTime.day(.defaultDigits).month(.wide).year(.defaultDigits))
print(result2)

let result3 = date.formatted(.dateTime.day().month(.twoDigits).year())
print(result3)

let result4 = date.formatted(.dateTime.dayOfYear(.defaultDigits))
print(result4)

let result5 = date.formatted(.dateTime.day(.twoDigits).month(.narrow).year(.extended()))
print(result5)

let result6 = date.formatted(.dateTime.day().month(.defaultDigits).year(.relatedGregorian()))
print(result6)

print("------------------------------------------String, Number--------------------------------------------------")

print(50.formatted(.percent))

print(123345456.formatted())

print(45657345463.formatted(.currency(code: "krw"))) //iso

let resultString = ["a", "b", "c"].formatted()

print(resultString)

print("------------------------------------------------------")

var now = Date.now

let formatter = DateFormatter()

formatter.locale = Locale(identifier: "ko_kr")
formatter.dateFormat = "yy년 M월 d일 hh:mm:ss"
formatter.timeZone = TimeZone(abbreviation: "KST")

print(formatter.string(from: now))
