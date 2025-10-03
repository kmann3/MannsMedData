//
//  MenuOptionsEnum.swift
//  MannsMedData
//
//  Created by Kennith Mann on 10/2/25.
//

import Foundation
import SwiftUI

enum MenuOptionsEnum: Int, CaseIterable {
    case apptAndHistory
    case doctors
    case export
    case familyMedicalHistory
    case medications
    case settings
    case surgeriesAndNotableEvents


    var title: String{
        switch self {
        case .apptAndHistory: return "Appointments & History"
        case .doctors: return "Doctors"
        case .export: return "Export"
        case .familyMedicalHistory: return "Family Medical History"
        case .medications: return "Medications"
        case .settings: return "Settings"
        case .surgeriesAndNotableEvents: return "Surgeries & Notable Events"
        }
    }

    var iconName: String {
        switch self {
        case .apptAndHistory: return "list.bullet"
        case .doctors: return "facemask"
        case .export: return "square.and.arrow.up"
        case .familyMedicalHistory: return "figure.2.and.child.holdinghands"
        case .medications: return "pill"
        case .settings: return "gear"
        case .surgeriesAndNotableEvents: return "clock"
        }
    }


    var tabId: String {
        switch self {
        case .apptAndHistory: return "Tab.AppointmentsAndHistory"
        case .doctors: return "Tab.Doctors"
        case .export: return "Tab.Export"
        case .familyMedicalHistory: return "Tab.FamilyMedicalHistory"
        case .medications: return "Tab.Medications"
        case .settings: return "Tab.Settings"
        case .surgeriesAndNotableEvents: return "Tab.SurgeriesAndNotableEvents"
        }
    }
}
