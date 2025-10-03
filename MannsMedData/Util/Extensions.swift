//
//  Extensions.swift
//  MannsMedData
//
//  Created by Kennith Mann on 10/2/25.
//

import Foundation
import SwiftData

extension Double {
    func toDecimal() -> Decimal {
        return Decimal(self)
    }
}

extension Decimal {

    static func fromDisplayString(_ string: String) -> Decimal? {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale.current

        if let number = formatter.number(from: string) {
            return number.decimalValue
        } else {
            return nil
        }
    }

    func toDouble() -> Double {
        return NSDecimalNumber(decimal: self).doubleValue
    }

    func toDisplayString() -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale.current
        return formatter.string(from: self as NSDecimalNumber) ?? "\(self)"
    }
}

extension Date? {
    /// Sat, Jan 11
    func toSummaryDateMMMDEEE() -> String {
        if self == nil {
            return "n/a"
        }

        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale.current
        dateFormatter.setLocalizedDateFormatFromTemplate("MMM d - EEE")
        return dateFormatter.string(from: self!)
    }

    /// Jan 11
    func toSummaryDateMMMDD() -> String {
        if self == nil {
            return "n/a"
        }

        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale.current
        dateFormatter.setLocalizedDateFormatFromTemplate("MMM dd")
        return dateFormatter.string(from: self!)
    }
}

extension Date {
    /// Sat, Jan 11
    func toSummaryDateMMMDEEE() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale.current
        dateFormatter.setLocalizedDateFormatFromTemplate("MMM d - EEE")
        return dateFormatter.string(from: self)
    }

    /// Jan 11, 2025
    func toSummaryDateMMMDY() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale.current
        dateFormatter.setLocalizedDateFormatFromTemplate("MMM d y")
        return dateFormatter.string(from: self)
    }

    /// Jan 11
    func toSummaryDateMMMDD() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale.current
        dateFormatter.setLocalizedDateFormatFromTemplate("MMM dd")
        return dateFormatter.string(from: self)
    }

    /// Jan 05 @ 08:31:50
    func toShortDetailString() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale.current
        dateFormatter.setLocalizedDateFormatFromTemplate("MMM dd @ HH:mm:ss")
        return dateFormatter.string(from: self)
    }

    /// Sat, Jan 11, 2025 at 02:24:59 -0600
    func toDebugDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale.current
        dateFormatter.setLocalizedDateFormatFromTemplate(
            "EEE, dd MMM yyyy HH:mm:ssZ")
        return dateFormatter.string(from: self)
    }
}

extension NumberFormatter {
    static var localCurrencyFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale.current
        formatter.maximumFractionDigits = 2
        formatter.minimumFractionDigits = 2
        formatter.generatesDecimalNumbers = true
        formatter.usesGroupingSeparator = true
        return formatter
    }
}
