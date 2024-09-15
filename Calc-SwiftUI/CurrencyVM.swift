//
//  CurrencyVM.swift
//  CurrencyAppMVVM
//
//  Created by RamanLakshmanan on 11/22/22.
//

import Foundation

class CurrencyVM: ObservableObject {
    @Published var dollarAmount: String
    @Published var euroAmount: String
    
    let currencyModel = CurrencyModel()
    
    init () {
        dollarAmount = "100.00"
        euroAmount = "0.00"
    }
    
    func convertCurrency () {
        if let amount = Double(dollarAmount) {
            let result = currencyModel.convertDollarToEuro(dollarAmount: amount)
            euroAmount = String (format: "%.2f", result)
        }
    }
    
}
