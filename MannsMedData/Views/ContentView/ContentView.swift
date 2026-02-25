//
//  ContentView.swift
//  MannsMedData
//
//  Created by Kennith Mann on 10/1/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @State private var selection: String? = nil

    var body: some View {
        NavigationSplitView {
            List(selection: $selection) {
                NavigationLink("Appointments & History", destination:
                                AppointmentsView())

                Text("Doctors")

                Text("Medications")

                NavigationLink("Medical Events", destination:
                                MedicalEventsView())
                Text("Family Medical History")

                Text("Export")
                
                Text("Settings")
            }
#if os(macOS)
            .navigationSplitViewColumnWidth(min: 180, ideal: 200)
#endif
            .toolbar {
            }
        } detail: {
            if let selectedItem = selection {
                Text(selectedItem)
            }
            else {
                Text("Select item")
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
