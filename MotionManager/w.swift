//
//  w.swift
//  MotionManager
//
//  Created by cmStudent on 2022/09/09.
//

import SwiftUI

struct w: View {
    var fruits = ["1","2", "3", "4", "5" ]
       @State private var selectedFruit = 0
    var body: some View {
        VStack {
                    Picker(selection: $selectedFruit,
                           label: Text("")) {
                        ForEach(0..<5) {
                            Text(self.fruits[$0])
                        }
                    }
                }
     
        
    }
}

struct w_Previews: PreviewProvider {
    static var previews: some View {
        w()
    }
}
