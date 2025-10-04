//
//  Doctor.swift
//  MannsMedData
//
//  Created by Kennith Mann on 10/2/25.
//

import Foundation
import SwiftData
import SwiftUI

@Model
//final class Doctor: ObservableObject, CustomDebugStringConvertible, Identifiable, Hashable {
final class Doctor: CustomDebugStringConvertible, Identifiable, Hashable {

    public var name: String = ""
    public var doctorContactId: String = ""
    public var notes: String = ""
//    @Relationship(deleteRule: .noAction, inverse: \Medication.doctor) public var medications: [Medication]? = nil
    @Relationship(deleteRule: .nullify, inverse: \Appointment.doctor) public var appointments: [Appointment]? = nil
    // Consider using MapKit to show location?

    public var createdOnUTC: Date = Date()

    public var debugDescription: String {
        return """
            Doctor:
            - id: \(self.persistentModelID)
            - name: \(name)
            - contactId: \(doctorContactId)
            - notes: \(notes)
            - Appointments:
                - Count: \(appointments?.count.formatted() ?? "0")
            - createdOnUTC: \(createdOnUTC.toDebugDate())
            """
    }

    init(
        name: String = "",
        notes: String = ""
    ) {
        self.name = name
        self.notes = notes
    }

    init()
    {
    }
}
