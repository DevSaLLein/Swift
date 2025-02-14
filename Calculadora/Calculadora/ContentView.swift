//
//  ContentView.swift
//  Calculadora
//
//  Created by iredefbmac_22 on 13/02/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var result = 0
    @State var previousResult = 0
    
    @State var operation = 0
    @State var previousOperation = 0
    
    func processDigit(digit: Int) {
        
        if (operation > 0) {
            
            result = 0
            previousOperation = operation
            operation = -1
        }
        result = (result * 10) + digit
    }
    
    func calculate() {
        
        if (previousOperation == 1) {
            
            result += previousResult
            previousOperation = 0
        }
        
        else if (previousOperation == 2) {
            
            result -= previousResult
            previousOperation = 0
        }
        
        else if (previousOperation == 3) {
            
            result *= previousResult
            previousOperation = 0
        }
        
        else if (previousOperation == 4) {
            
            result /= previousResult
            previousOperation = 0
        }
        
        previousResult = result
    }
    
    
    var body: some View {
        
        VStack(alignment: .trailing,  spacing: 0) {
            
            Spacer()
            
            HStack {
                
                Text(String(result))
                    .padding()
                    .font(.system(size: CGFloat(80 / Int((Double(String(result).count) + 10) / 8.0))))
                    .lineLimit(1)
                    .foregroundColor(.white)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical: false)
            }
            
            HStack {
                
                Button("AC") {
                    
                    result = 0
                    
                }
                .padding()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                
                Button("+/-") {
                    
            
                }
                .padding()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
    
                Button("%") {
                    
                    
                }
                .padding()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                
                Button("/") {
                    
                    operation = 4
                    calculate()
                }
                .padding(.vertical, 40)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background(Color.orange)
            
                
            }
            .foregroundStyle(Color.white)
            
            HStack {
                
                Button("7") {
                    processDigit(digit: 7)
                    
                }
                .padding()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                
                Button("8") {
                    processDigit(digit: 8)
            
                }
                .padding()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
    
                Button("9") {
                    processDigit(digit: 9)
                    
                }
                .padding()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                
                Button("X") {
                    
                    operation = 3
                    calculate()
                }
                .padding(.vertical, 40)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background(Color.orange)
            
                
            }
            .foregroundStyle(Color.white)
            
            HStack {
                
                Button("4") {
                    processDigit(digit: 4)
                    
                }
                .padding()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                
                Button("5") {
                    processDigit(digit: 5)
            
                }
                .padding()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
    
                Button("6") {
                    processDigit(digit: 6)
                    
                }
                .padding()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                
                Button("-") {
                    
                    operation = 2
                    calculate()
                }
                .padding(.vertical, 40)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background(Color.orange)
            
                
            }
            .foregroundStyle(Color.white)

            HStack {
                
                Button("1") {
                    
                   processDigit(digit: 1)
                }
                .padding()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                
                Button("2") {
                    
                    processDigit(digit: 2)
                }
                .padding()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
    
                Button("3") {
                    processDigit(digit: 3)
                    
                }
                .padding()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                
                Button("+") {
                        
                    operation = 1
                    calculate()
                }
                .padding(.vertical, 40)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background(Color.orange)
            }
            
            .foregroundStyle(Color.white)
            
            
            GeometryReader { geometry in
                
                HStack {
                    
                    Button("0") {
                        processDigit(digit: 0)
                        
                    }
                    .padding()
                    .frame(minWidth: geometry.size.width / 2)
                    
                    Button(",") {
                        
                        
                    }
                    .padding()
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    
                    Button("=") {
                        
                        calculate()
                        previousOperation = 999
                        operation = 999
                    }
                    .padding(.vertical, 40)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .background(Color.orange)
                    
                }
                .foregroundStyle(Color.white)
                   
            }
            .frame(maxHeight: 92)

            
        }
        
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
    }
}

#Preview {
    ContentView()
}
