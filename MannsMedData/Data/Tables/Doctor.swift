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
    public var contactId: String = ""
    public var notes: String = ""
//    @Relationship(deleteRule: .noAction, inverse: \Medication.doctor) public var medications: [Medication]? = nil
//    @Relationship(deleteRule: .noAction, inverse: \Appointment.doctor) public var appointments: [Appointment]? = nil

    public var createdOnUTC: Date = Date()

    public var debugDescription: String {
        return """
            Doctor:
            - id: \(id.id)
            - name: \(name)
            - notes: \(notes)
            - createdOnUTC: \(createdOnUTC.toDebugDate())
            """
    }

    init(
        id: UUID,
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
