//
//  NavViewEnum.swift
//  MannsMedData
//
//  Created by Kennith Mann on 10/2/25.
//

import Foundation
import SwiftUI

enum NavView: Hashable, CaseIterable {
    case apptHistory_Details
    case apptHistory_Edit
    case apptHistory_List

    case doctors_Details
    case doctors_Edit
    case doctors_List

    case export

    case familyMedicalHistory_Details
    case familyMedicalHistory_Edit
    case familyMedicalHistory_List

    case medications_Details
    case medications_Edit
    case medications_List

    case settings

    case surgeriesAndNotableEvents_Details
    case surgeriesAndNotableEvents_Edit
    case surgeriesAndNotableEvents_List
}
