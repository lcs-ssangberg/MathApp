//
//  DivisionView.swift
//  MathApp
//
//  Created by Sebastian on 2025-02-12.
//

import SwiftUI

struct DivisionView: View {
    // MARK: Stored properties
    @State private var number1Text: String = ""
    @State private var number2Text: String  = ""
    
    // MARK: Computed properties
    
    private var number1: Double {
        return Double(number1Text) ?? 0
    }
    
    private var number2: Double {
        return Double(number2Text) ?? 0
    }
    
    var divisionSolution: Double {
        return number1 / number2
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
                Text("÷")
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
                
                Text("\(divisionSolution.formatted())")
                    
                    .font(.system(size: 96))
                    .padding()
            }
            
            Spacer()
        }
    }
}

#Preview {
    DivisionView()
}
