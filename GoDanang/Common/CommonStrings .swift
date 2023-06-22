//
//  CommonStrings .swift
//  GoDanang
//
//  Created by Марк Пушкарь on 16.06.2023.
//

import Foundation

class CommonStrings {
    
    static let danangGenInfo = "Da Nang (Đà Nẵng) is Vietnam's third largest city, and is located on the Eastern Sea coast, midway between Hanoi and Ho Chi Minh City and the largest city of Central Vietnam. The city itself has neither the atmosphere of Hanoi nor the hustle-bustle of Ho Chi Minh City, but has its share of sights and is close to the ancient cities of charming Hoi An and the imperial capital of Hue, making it a popular vacationing spot for those looking to explore the attractions of central Vietnam or soak up some rays while hanging out on the city's beaches."
    
    static let danangCoordinates = "16.047079,108.206230"
    
    
    struct Recipe {
        
        var title: Recipies
        
        var descripption: String
        
        var origin: String
        
        var ingridients: String
        
        var instructions: String
        
        enum Recipies: String {
            case bunCha = "Bun Cha"
            case caoLau = "Cao Lau"
            case banhMi = "Banh Mi Kep"
            case bunBo = "Bun Bo"
            case capheSua = "Ca phe sua"
        }
        
        
        
    }
}
