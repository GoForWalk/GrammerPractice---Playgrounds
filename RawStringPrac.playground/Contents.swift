import UIKit

let name: String = "Owen"

var greeting = "Hello, \"안녕!!\" "

print(greeting)

var rawString = #"Hello, "안녕!!""#

print(rawString)

var lineChangeRawString = #"Hello, \#n"안녕!!" "#

print(lineChangeRawString)


lineChangeRawString = ##"Hello \##n\##n\##n"안녕!!" "##

print(lineChangeRawString)


var stringInterpolationRawString = #"Hello, \#n"안녕!! \#(name)" "#

print(stringInterpolationRawString)
