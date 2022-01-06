//
//  ContentView.swift
//  TestSapsan
//
//  Created by Admin on 04.01.2022.
//

import SwiftUI

struct ContentView: View {
    @State var loading = false
    @State var firstButtonSelected = true
    @State var secondButtonSelected = false
    @State var thirdButtonSelected = false
    
    
    var body: some View {
        VStack{
            VStack{
            Text("Приложение платное")
                .font(.system(size: 26))
                .fontWeight(Font.Weight.heavy)
                .padding()
            Text("Выберите удобный для вас способ оплаты")
                .font(.system(size: 18))
                .foregroundColor(Color(red: 109 / 255, green: 120 / 255, blue: 133 / 255))
                .multilineTextAlignment(.center)
                .padding(.horizontal, 40)
                .padding(.leading,16)
                .padding(.bottom)
                .fixedSize(horizontal: false, vertical: true)
            }
            .frame(maxWidth: .infinity)
            .padding()
            VStack{
                Button {
                    firstButtonSelected = true
                    secondButtonSelected = false
                    thirdButtonSelected = false
                } label: {
                    RateCard(period: "6 месяцев", cost: 1990, description: "Пробный период три дня, бесплатная отмена", selected: firstButtonSelected)
                        
                        
                        
                }
                .padding(.horizontal)
                .foregroundColor(Color.black)
                .padding(.bottom,16)
                Button {
                    firstButtonSelected = false
                    secondButtonSelected = true
                    thirdButtonSelected = false
                } label: {
                    RateCard(period: "1 месяц", cost: 499, description: "Ежемесячная подписка", selected: secondButtonSelected)
                        
                        
                        
                }
                
                .padding(.horizontal)
                .foregroundColor(Color.black)
                .padding(.bottom,16)
                Button {
                    firstButtonSelected = false
                    secondButtonSelected = false
                    thirdButtonSelected = true
                } label: {
                    RateCard(period: "Навсегда", cost: 4990, description: "Один платеж", selected: thirdButtonSelected)
                        
                        
                        
                }
                .padding(.horizontal)
                .foregroundColor(Color.black)
                
                
            }
            Spacer()
            VStack{
            Button {
                loading = true
            } label: {
                if(!loading){
                Text("Оформить подписку").bold()
                    .padding()
                    .frame(maxWidth:.infinity)
                    .font(.system(size: 16))
                    
            }
                else{
                        ProgressView()
                        .padding()
                        .frame(maxWidth:.infinity)
                        .font(.system(size: 16))
                        .progressViewStyle(CircularProgressViewStyle(tint: Color.white))
                        
                }
                    
            }
            .foregroundColor(Color.white)
            .background(Color.black)
            .contentShape(Rectangle())
            .cornerRadius(25)
            .padding()
            
            Button {
                
            } label: {
                
                Text("Восстановить покупки").bold()
                    .font(.system(size: 16))
                    .foregroundColor(Color(red: 153 / 255, green: 162 / 255, blue: 173 / 255))
                
            }
            
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
