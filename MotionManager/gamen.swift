//
//  gamen.swift
//  MotionManager
//
//  Created by cmStudent on 2022/09/02.
//

import SwiftUI

struct gamen: View {

    var body: some View {
        ZStack{
            
            
            VStack{
                Text("第○セット 0回目")
                    .font(.largeTitle)
                
                Image("cat")
                    .resizable()
                    .frame(width: 300, height: 300)
                
                
               
                HStack(spacing: 30) {
                 
                    
                    VStack {
                        Spacer()
                        Text("一時停止")
                        Button(action: {
                            print("Button")
                        }) {
                            Text("| |")
                                .font(.largeTitle)
                                .bold()
                                .padding()
                                .frame(width: 100, height: 100)
                            
                                .foregroundColor(Color.black)
                                .overlay(
                                    Circle()
                                        .stroke(Color.yellow, lineWidth: 3)
                                )
                        }
                        Spacer()
                        
                    }
                    VStack {
                        Text("中止")
                        Button(action: {
                            print("Button")
                        }) {
                            Text("■")
                                .font(.largeTitle)
                                .bold()
                                .padding()
                                .frame(width: 100, height: 100)
                            
                                .foregroundColor(Color.black)
                                .overlay(
                                    Circle()
                                        .stroke(Color.red, lineWidth: 3)
                                )
                        }
                    }
                    
                    
                    
                }
                
                
            }
        }
    }
}

struct gamen_Previews: PreviewProvider {
    static var previews: some View {
        gamen()
    }
}
