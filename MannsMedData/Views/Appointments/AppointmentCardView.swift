//
//  AppointmentCardView.swift
//  MannsMedData
//
//  Created by Kennith Mann on 10/4/25.
//

import SwiftUI

struct AppointmentCardView: View {
    @Environment(\.colorScheme) var colorScheme
    var isOld: Bool
    var backColor: Color {
        colorScheme == .dark ? Color.black : Color.white
    }
    init(isOld: Bool = false) {
        self.isOld = isOld
    }


    var body: some View {
        HStack {
            VStack {
                Text("Dr. Foo Bar")
                Text("Cardiologist")
                Text("November 5th, Thursday 5pm")
            }
            Spacer()
            if self.isOld == true {
                Label("Icon Only", systemImage: "archivebox")
                    .font(.title3)
                    .labelStyle(.iconOnly)
                    .accessibilityLabel("Archived appointment")
            }
        }
        .listRowBackground(isOld == false ? self.backColor : Color.gray.opacity(0.3))

    }
}

#Preview {
    AppointmentCardView()
}
#Preview {
    AppointmentCardView(isOld: true)
}
