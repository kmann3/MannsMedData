//
//  Medication.swift
//  MannsMedData
//
//  Created by Kennith Mann on 10/4/25.
//

import Foundation
import SwiftData
import SwiftUI

@Model
final class Medication: CustomDebugStringConvertible, Identifiable, Hashable {

    public var name: String = ""
    public var dosage: String = "" // TODO: Create enum and fill this out properly, this will probably mean two fields - amount and measurement (e.g. g, mg, ml, etc - 50 in one field and milligram in another)
    public var regularity: String = "" // TODO: Create enum and fill this out properly (this will probably mean two fields: frequency and regularity (e.g. 3 pills twice per day
    public var doctorContactId: String = ""
    public var notes: String = ""
    public var isDiscontinued: Bool = false
    @Relationship(deleteRule: .nullify) public var doctor: Doctor? = nil

    public var createdOnUTC: Date = Date()

    public var debugDescription: String {
        return """
            Appointment:
            - id: \(self.persistentModelID)
            - name: \(name)
            - dosage: \(dosage)
            - regularity: \(regularity)
            - contactId: \(doctorContactId)
            - Doctor:
                - \(doctor != nil ? doctor!.name : "nil")
            - notes: \(notes)
            - isDiscontinued: \(isDiscontinued)
            - createdOnUTC: \(createdOnUTC.toDebugDate())
            """
    }

    init(name: String,
         dosage: String = "",
         regularity: String = "",
         contactId: String = "",
         doctor: Doctor? = nil,
         notes: String = "",
         isDiscontinued: Bool = false
    ) {
        self.name = name
        self.dosage = dosage
        self.regularity = regularity
        self.doctorContactId = contactId
        self.doctor = doctor
        self.notes = notes
        self.isDiscontinued = isDiscontinued
    }

    init()
    {
    }
}
