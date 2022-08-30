//
//  PlankView.swift
//  MotionManager
//
//  Created by 稗田一亜 on 2022/08/21.
//

import SwiftUI

struct PlankView: View {
    @ObservedObject var motionManager : MotionManager
    var body: some View {
        ZStack {
            motionManager.backColor
                .ignoresSafeArea()
            VStack {
                Spacer()
                Image(systemName: motionManager.systemImage)
                    .resizable()
                    .frame(width: 70, height: 70)
                Spacer()
                if (motionManager.trainingSucess) {
                    Text("\(Int(motionManager.countDown))")
                        .opacity(motionManager.buttonOpacity ? 1.0 : 0.0)
                } else {
                    Button("START"){
                        motionManager.trainingSucess = true
                        motionManager.startTimer()
                    }
                    .font(.largeTitle)
                    .opacity(motionManager.buttonOpacity ? 1.0 : 0.0)
                }
                Spacer()
                
            }
        }
        
    }
}
