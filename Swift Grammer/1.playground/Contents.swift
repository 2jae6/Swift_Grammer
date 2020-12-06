//if문의 사용법

import UIKit

var isDarkModeOn : Bool = true

if(isDarkModeOn == true) {
   print("다크모드입니다.")
}

if(isDarkModeOn != true) {
   print("다크모드가 아닙니다.")
}

if isDarkModeOn == true {
   print("다크모드입니다.")
}

if isDarkModeOn{
   print("다크모드입니다.")
}

if !isDarkModeOn{
   print("다크모드입니다.")
}

var myNumber = isDarkModeOn ? 30 : 10

var myNumber2 = isDarkModeOn == false ? 10 : 20
