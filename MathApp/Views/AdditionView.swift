//
//  AdditionView.swift
//  MathApp
//
//  Created by Sebastian on 2025-02-12.
//

import SwiftUI

struct AdditionView: View {
    // MARK: Stored properties
    @State private var number1Text: String = "1"
    @State private var number2Text: String  = "1"
    
    // MARK: Computed properties
    
    var number1: Int {
        return Int(number1Text) ?? 0
    }
    
    var number2: Int {
        return Int(number2Text) ?? 0
    }
    
    var additionSolution: Int {
            return number1 + number2
    }
    
        
        var body: some View {
            VStack(alignment: .trailing, spacing: -20) {
                
                Spacer()
                
                TextField("First Number", text: $number1Text)
                        .font(.system(size: 96))
                        .padding()
                        .keyboardType(.numberPad)
                
                TextField("Second Number", text: $number2Text)
                        .font(.system(size: 96))
                        .padding()
                        .keyboardType(.numberPad)
                
                Rectangle()
                    .frame(height: 8)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.gray)
                    .cornerRadius(4)
                    .padding(.horizontal, 20)
                
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
