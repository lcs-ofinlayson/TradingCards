//
//  ContentView.swift
//  TradingCards
//
//  Created by Oliver Finlayson on 2023-01-12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            
            // Layer 1
            Rectangle()
                .foregroundColor(.blue)
                .ignoresSafeArea()
            
            // Layer 2
            
            RoundedRectangle(cornerRadius: 50)                .foregroundColor(.black)
                .frame(width: 375, height: 750)
            
            //Layer 3 Logo
            HStack{
                Spacer()
                VStack{
                    
                    Circle()
                        .foregroundColor(.white)
                        .frame(width: 100, height: 100)
                        .padding()
                    Spacer()
                    
                    
                }
            }
            
            
            //Name of athlete
            
            HStack{
                
                VStack{
                    
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.white)
                        .frame(width: 200, height: 100)
                        .padding()
                   Spacer()
                    
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
