//
//  SquareView.swift
//  MathApp
//
//  Created by Sebastian on 2025-02-12.
//

import SwiftUI

struct SquareView: View {
        // MARK: Stored properties
        @State var base: Int = 1
            
        // MARK: Computed properties
        var squared: Int {
                return base * base
            }
            
            
            var body: some View {
                VStack {
                    
                    Spacer()
                    
                    HStack(alignment: .top) {
                        
                        Text("(\(base))")
                            .font(.system(size: 96))
         
                        Text("2")
                            .font(.system(size: 44))
         
                        Text("=")
                            .font(.system(size: 96))
         
                        Text("\(squared)")
                            .font(.system(size: 96))
                    }
                    
                    Rectangle()
                        .frame(height: 8)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.gray)
                        .cornerRadius(4)
                        .padding(.horizontal, 20)
                        
                    
                    
                    HStack {
                        Stepper(value: $base, label: {
                            Text("Base")
                                .padding()
                        })
                    }
                                        
                    Spacer()
                }
                .padding()
        }
}

#Preview {
    SquareView()
}
