//
//  AppointmentCardView.swift
//  MannsMedData
//
//  Created by Kennith Mann on 10/4/25.
//

import SwiftUI

struct AppointmentCardView: View {
    @Environment(\.colorScheme) var colorScheme
    
    var appointment: Appointment
    
    var backColor: Color {
        colorScheme == .dark ? Color.black : Color.white
    }
    
    init(appointment: Appointment) {
        self.appointment = appointment
    }

    var body: some View {
        HStack {
            VStack {
                Text("Dr. Foo Bar")
                Text("Cardiologist")
                Text("November 5th, Thursday 5pm")
                Text("5710 Nowhere St, Austin TX, 90872")
            }
            Spacer()
            if self.appointment.isArchived {
                Label("Icon Only", systemImage: "archivebox")
                    .font(.title3)
                    .labelStyle(.iconOnly)
                    .accessibilityLabel("Archived appointment")
            }
        }
        .listRowBackground(self.appointment.isArchived ? Color.gray.opacity(0.3) : self.backColor)

    }
}

#Preview("Not Archived") {
    AppointmentCardView(appointment: Appointment())
}
#Preview("Is Archived") {
    let oldDate = Calendar.current.date(byAdding: .day, value: -7, to: Date())
    AppointmentCardView(appointment: Appointment(date: oldDate!))
}
