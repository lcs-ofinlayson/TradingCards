//
//  TennisPlayer.swift
//  TradingCards
//
//  Created by Oliver Finlayson on 2023-01-15.
//

import SwiftUI

struct TennisPlayer: View {
    
    let name: String
    let logoName: String
    let imageName: String
    let description: String
    
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
                            Image(logoName)
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
                            
                            Text(name)
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
                    
                    Image(imageName)
                        .resizable()
                        .frame(width: 200, height: 300)
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
                    
                    Text(description)
                        .foregroundColor(Color.black)
                        .font(Font.custom("Copperplate-Bold", size: 20))
                        .padding()
                        .padding()
            
                }
                
                
            }
        }
    }
}

struct TennisPlayer_Previews: PreviewProvider {
    static var previews: some View {
        TennisPlayer(name: "Roger Federer", logoName: "federerLogo", imageName: "federerImage", description: "Roger Federer is also one of the greatest tennis player of all time, with 21 Grand Slams, 103 ATP singles titles, and 237 consecutive weeks at world number 1. ")
    }
}
