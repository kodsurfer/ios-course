import SwiftUI

struct CalculatorView: View {
    @State private var input: String = ""
    @State private var result: String = ""
    private let calculator = Calculator()

    var body: some View {
        VStack(spacing: 20) {
            TextField("Enter number", text: $input)
                .keyboardType(.decimalPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            HStack(spacing: 20) {
                Button("+") { performOperation("+") }
                Button("-") { performOperation("-") }
                Button("*") { performOperation("*") }
                Button("/") { performOperation("/") }
                Button("=") { calculateResult() }
            }
            .padding()
            
            Text("Result: \(result)")
                .padding()
        }
        .padding()
    }
    
    private func performOperation(_ operation: String) {
    }
    
    private func calculateResult() {
        guard let number = Double(input) else { return }
    }
}
