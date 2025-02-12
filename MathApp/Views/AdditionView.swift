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
            VStack(alignment: .trailing, spacing: -20) {
                
                Spacer()
                
                Text("\(number1)")
                    .font(.system(size: 96))
                    .padding()

                
                HStack {
                    TextField("Second Number", text: "\($number2)")
                        .font(.system(size: 96))
                        .padding()
                }
                
                Divider()
                    .padding()
                
                HStack {
                    Text("= \(additionSolution)")
                        .font(.system(size: 96))
                        .padding()
                }
                
                Spacer()
            }
    }
}

#Preview {
    AdditionView()
}
