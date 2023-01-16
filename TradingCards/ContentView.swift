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
            HStack{
                
                
                
                //Layer 3 Logo
                HStack{
                    Spacer()
                    VStack{
                        ZStack{
                            Circle()
                                .foregroundColor(.white)
                                .frame(width: 100, height: 100)
                                .padding()
                            Image("NadalLogo")
                                .resizable()
                                .frame(width: 60, height: 60)
                            
                        }
                        Spacer()
                        
                        
                        
                    }
                }
                Spacer()
                
                //Name of person
                
                HStack{
                    
                    VStack{
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 30)
                                .foregroundColor(.white)
                                .frame(width: 200, height: 100)
                                .padding()
                            
                            Text("Rafael Nadal")
                                .foregroundColor(Color.black)
                                .font(Font.custom("Copperplate-Bold", size: 25))
                            
                            
                        }
                        Spacer()
                    }
                }
                Spacer()
                    .frame(width: 10)
                
                
                
                
            }
            //Picture of person
            
            VStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.white)
                        .frame(width: 350, height: 300)
                        .padding()
                    
                    Image("NadalPicture")
                        .resizable()
                        .frame(width: 340, height: 300)
                        .scaledToFit()
                        .clipped()
                    
                    
                    
                }
                Spacer()
                    .frame(height: 175)
            }
            
            //Description of person
            
            VStack{
                Spacer()
                    .frame(height: 450)
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.white)
                        .frame(width: 350, height: 200)
                        .padding()
                    
                    Text("Rafael Nadal is one of the greatest tennis players of all time, with 22 grand slams, 209 weeks at number 1 in world rankings, and a record 92 ATP singles titles.")
                        .foregroundColor(Color.black)
                        .font(Font.custom("Copperplate-Bold", size: 20))
                        .padding()
            
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
