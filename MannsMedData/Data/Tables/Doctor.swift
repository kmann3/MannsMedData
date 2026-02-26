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
final class Doctor: Identifiable, Hashable {

    public var name: String = ""
    public var doctorContactId: String = ""
    public var notes: String = ""
    public var isArchived: Bool = false
    public var createdOn: Date = Date()
    @Relationship(deleteRule: .noAction, inverse: \Medication.doctor) public var medications: [Medication] = []
    @Relationship(deleteRule: .nullify, inverse: \Appointment.doctor) public var appointments: [Appointment] = []
    
    // Consider using MapKit to show location?
    
    init(
        name: String = "",
        notes: String = "",
        isArchived: Bool = false
    ) {
        self.name = name
        self.notes = notes
        self.isArchived = isArchived
    }

    init()
    {
    }
}

@MainActor
extension Doctor: CustomDebugStringConvertible {
    public var debugDescription: String {
        return """
            Doctor:
            - id: \(self.persistentModelID)
            - name: \(name)
            - contactId: \(doctorContactId)
            - notes: \(notes)
            - isArchived: \(isArchived)
            - Appointments:
                - Count: \(appointments.count.formatted())
            - createdOn \(createdOn.toDebugDate())
            """
    }
}
