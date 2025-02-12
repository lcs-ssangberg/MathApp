//
//  AdditionView.swift
//  MathApp
//
//  Created by Sebastian on 2025-02-12.
//

import SwiftUI

struct AdditionView: View {
    // MARK: Stored properties
    @State var number1: Int = 1
    @State var number2: Int = 1
    
    // MARK: Computed properties
    var additionSolution: Int {
            return number1 + number2
        }
        
        var body: some View {
            VStack(alignment: .trailing) {
                Text("\(number1)")
                
                HStack {
                    Image(systemName: "plus")
                    Text("\(number2)")
                }
                
                Divider()
                
                HStack {
                    Image(systemName: "equal")
                    Text("\(additionSolution)")
                }
                
            }
    }
}

#Preview {
    AdditionView()
}
