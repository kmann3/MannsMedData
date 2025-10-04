//
//  Appointment.swift
//  MannsMedData
//
//  Created by Kennith Mann on 10/4/25.
//

import Foundation
import SwiftData
import SwiftUI

@Model
final class Appointment: CustomDebugStringConvertible, Identifiable, Hashable {

    public var title: String = ""
    public var subTitle: String = ""
    public var date: Date = Date()
    public var doctorContactId: String = ""
    public var notes: String = ""
    @Relationship(deleteRule: .nullify) public var doctor: Doctor? = nil

    public var createdOnUTC: Date = Date()

    public var debugDescription: String {
        return """
            Appointment:
            - id: \(self.persistentModelID)
            - title: \(title)
            - subTitle: \(subTitle)
            - date: \(date.toDebugDate())
            - contactId: \(doctorContactId)
            - Doctor:
                - \(doctor != nil ? doctor!.name : "nil")
            - notes: \(notes)
            - createdOnUTC: \(createdOnUTC.toDebugDate())
            """
    }

    init(title: String = "",
         subTitle: String = "",
         date: Date = Date(),
         doctorContactId: String = "",
         doctor: Doctor? = nil,
         notes: String = ""
    ) {
        self.title = title
        self.subTitle = subTitle
        self.date = date
        self.doctorContactId = doctorContactId
        self.doctor = doctor
        self.notes = notes
    }

    init()
    {
    }
}
