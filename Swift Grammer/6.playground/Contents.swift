//
//  6.swift
//  Swift Grammer
//
//  Created by 1 on 2020/12/08.
//클래스와 스트럭트 차이

import Foundation


//memberwise initializer 때문에 좋다.

struct YoutuberStruct{
    var name : String
    var subscribersCount : Int
}

var devJeong = YoutuberStruct(name: "jeongDaeRi", subscribersCount: 99999)
var devJeongClone = devJeong

print("devJeongClone.name : \(devJeongClone.name)")
devJeongClone.name = "hoho"

//값 복사이기 때문에 둘의 값이 다릅니다.
print("struct - devJeongClone.name : \(devJeongClone.name)") //hoho
print("struct - devJeong.name : \(devJeong.name)") //jeonDaeRi

//클래스

class Youtuber{
    var name : String
    var subscribersCount: Int
    
    //init으로 매개변수 가진 생성자 메소드를 만들어야 매개변수 넣고 객체 생성 가능
    init(name: String, subscribersCount: Int){
        self.name = name
        self.subscribersCount = subscribersCount
    }
}

var jeongDaeRi = Youtuber(name: "jeongDaeRi", subscribersCount: 88888)
var me = jeongDaeRi
print("class - me.name \(me.name)")
me.name = "hoho"

//너와 나는 운명 공동체? 서로 연결되어있기 때문에 (참조) 둘다 값이 변경됩니다.
print("class - me.name : \(me.name)") //hoho
print("class - jeongDaeRi.name : \(jeongDaeRi.name)") //hoho
