//
//  MedicalEvents.swift
//  MannsMedData
//
//  Created by Kennith Mann on 10/8/25.
//

import Foundation
import SwiftData
import SwiftUI

@Model
final class MedicalEvents: CustomDebugStringConvertible, Identifiable, Hashable {

    public var name: String = ""
    public var dateOfEvent: Date? = nil // A value of nil might mean they don't remember when it was
    public var isAccurate: Bool = false // This would be used if they, for example, say they had a heart attack in their 50's but don't remember when exactly.
    public var notableLocation1: String = "" // This might be where the event happened
    public var notableLocation2: String = "" // This might be the hospital they took you to.
    public var notes: String = ""

    public var createdOnUTC: Date = Date()

    public var debugDescription: String {
        return """
            Doctor:
            - id: \(self.persistentModelID)
            - name: \(name)
            - dateOfEvent: \(String(describing: dateOfEvent?.toDebugDate()))
            - isAccurate: \(isAccurate)
            - notableLocation1: \(notableLocation1)
            - notableLocation2: \(notableLocation2)
            - notes:  \(notes)
            - createdOnUTC: \(createdOnUTC.toDebugDate())
            """
    }

    init(
        name: String = "",
        dateOfEvent: Date? = nil,
        isAccurate: Bool = false,
        notableLocation1: String = "",
        notableLocation2: String = "",
        notes: String = ""
    ) {
        self.name = name
        self.dateOfEvent = dateOfEvent
        self.isAccurate = isAccurate
        self.notableLocation1 = notableLocation1
        self.notableLocation2 = notableLocation2
        self.notes = notes
    }

    init()
    {
    }
}
