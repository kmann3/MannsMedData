//
//  DoctorCardView.swift
//  MannsMedData
//
//  Created by Kenny Mann on 2/25/26.
//

import SwiftUI

struct DoctorCardView: View {
    @Environment(\.colorScheme) var colorScheme
    var backColor: Color {
        colorScheme == .dark ? Color.black : Color.white
    }
    
    var doctor: Doctor
    init(doctor: Doctor) {

        self.doctor = doctor
    }
    var body: some View {
        HStack {
            VStack {
                Text("Dr. Foo Bar")
                Text("Cardiologist")
                Text("Address")
                Text("Phone Number")
                Text("Link to contact")
                Text("Last appointment")
                Text("Next appointment")
                Text("Notes")
            }
            Spacer()
            if self.doctor.isArchived {
                Label("Icon Only", systemImage: "archivebox")
                    .font(.title3)
                    .labelStyle(.iconOnly)
                    .accessibilityLabel("Archived doctor")
            }
        }
        .listRowBackground(self.doctor.isArchived ? Color.gray.opacity(0.3) : self.backColor)
    }
}

#Preview("Not old") {
    DoctorCardView(doctor: Doctor(name: "Doctor Name"))
}
#Preview("Old") {
    DoctorCardView(doctor: Doctor(name: "Doctor Name", isArchived: true))
}
