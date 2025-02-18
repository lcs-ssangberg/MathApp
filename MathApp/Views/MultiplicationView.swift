//
//  MultiplicationView.swift
//  MathApp
//
//  Created by Sebastian on 2025-02-12.
//

import SwiftUI

struct MultiplicationView: View {
    // MARK: Stored properties
    @State private var number1Text: String = ""
    @State private var number2Text: String  = ""
    
    // MARK: Computed properties
    
    private var number1: Int {
        return Int(number1Text) ?? 0
    }
    
    private var number2: Int {
        return Int(number2Text) ?? 0
    }
    
    var multiplicationSolution: Int {
        return number1 * number2
    }
    
    
    var body: some View {
        VStack(alignment: .trailing, spacing: -20) {
            
            Spacer()
            
            TextField("#1", text: $number1Text)
                .font(.system(size: 96))
                .padding()
                .keyboardType(.numberPad)
                .multilineTextAlignment(.trailing)
            
            HStack {
                Text("x")
                    .font(.system(size: 96))
                    .padding()
                
                TextField("#2", text: $number2Text)
                    .font(.system(size: 96))
                    .keyboardType(.numberPad)
                    .multilineTextAlignment(.trailing)
                    .padding()
            }
            
            Rectangle()
                .frame(height: 8)
                .frame(maxWidth: .infinity)
                .foregroundColor(.gray)
                .cornerRadius(4)
                .padding(.horizontal, 20)
            
            HStack {
                Text("=")
                    .font(.system(size: 96))
                    .padding()
                
                Spacer()
                
                Text("\(multiplicationSolution)")
                    .font(.system(size: 96))
                    .padding()
            }
            
            Spacer()
        }
    }
}

#Preview {
    MultiplicationView()
}
