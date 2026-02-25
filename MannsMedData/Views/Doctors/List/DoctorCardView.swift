//
//  DoctorCardView.swift
//  MannsMedData
//
//  Created by Kenny Mann on 2/25/26.
//

import SwiftUI

struct DoctorCardView: View {
    @Environment(\.colorScheme) var colorScheme
    var isOld: Bool
    var backColor: Color {
        colorScheme == .dark ? Color.black : Color.white
    }
    
    var doctor: Doctor
    init(isOld: Bool = false, doctor: Doctor) {
        self.isOld = isOld
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
            if self.isOld == false {
                Label("Icon Only", systemImage: "archivebox")
                    .font(.title3)
                    .labelStyle(.iconOnly)
                    .accessibilityLabel("Archived doctor")
            }
        }
        .listRowBackground(isOld == false ? self.backColor : Color.gray.opacity(0.3))
    }
}

#Preview("Not old") {
    DoctorCardView(isOld: false, doctor: Doctor(name: "Doctor Name"))
}
#Preview("Old") {
    DoctorCardView(isOld: true, doctor: Doctor(name: "Doctor Name"))
}
