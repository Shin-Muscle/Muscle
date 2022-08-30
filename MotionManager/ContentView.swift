//
//  ContentView.swift
//  MotionManager
//
//  Created by cmStudent on 2022/07/22.
//

import SwiftUI

struct ContentView: View {
    // MotionManagerのインスタンスを利用する
    @StateObject var motionManager: MotionManager = .shared
    
    var body: some View {
        PlankView(motionManager: motionManager)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

