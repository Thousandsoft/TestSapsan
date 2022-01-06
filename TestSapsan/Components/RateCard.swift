//
//  RateCard.swift
//  TestSapsan
//
//  Created by Admin on 04.01.2022.
//

import SwiftUI

struct RateCard: View {
    var period: String
    var cost: Int
    var description: String
    var selected: Bool
    
    var body: some View {
        VStack{
            HStack{
                if (selected){
                    Image("Accept")
                        .padding(.leading)
                        .padding(.trailing, -16)
                }
              Text(period)
                    .font(.system(size: 20))
                    .fontWeight(Font.Weight.bold)
                    .padding()
                    .frame(alignment:.leading)
                Spacer()
              Text(String(cost) + " руб.")
                    .font(.system(size: 24))
                    .fontWeight(Font.Weight.bold)
                    .frame(alignment:.trailing)
                    .padding(.trailing,16)
            }
            Text(description)
                .font(.system(size: 16))
                .frame(maxWidth: .infinity, alignment: .leading)
                .fixedSize(horizontal: false, vertical: true)
                .padding(.bottom)
                .padding(.horizontal)
                .multilineTextAlignment(.leading)
                .foregroundColor(selected ? Color.black : Color(red: 109 / 255, green: 120 / 255, blue: 133 / 255))
                
        }
        
        .background(selected ? Color(red: 36 / 255, green: 217 / 255, blue: 119 / 255) : Color(red: 236 / 255, green: 240 / 255, blue: 243 / 255))
        
        .cornerRadius(10)

    }
}

struct RateCard_Previews: PreviewProvider {
    static var previews: some View {
        RateCard(period: "6 месяцев", cost: 1999, description:"Пробный период три дня, бесплатная отмена", selected: true)
    }
}
