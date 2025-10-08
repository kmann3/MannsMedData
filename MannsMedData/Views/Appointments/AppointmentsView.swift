//
//  AppointmentsView.swift
//  MannsMedData
//
//  Created by Kennith Mann on 10/4/25.
//

import SwiftUI

struct AppointmentsView: View {
    var futureAppointments: [Appointment] = []
    var previousAppointments: [Appointment] = []

    init() {
        futureAppointments.append(Appointment(title: "Cardio", date: Date()))
        futureAppointments.append(Appointment(title: "Cardio", date: Date()))
        futureAppointments.append(Appointment(title: "Cardio", date: Date()))

        previousAppointments.append(Appointment(title: "Cardio", date: Date()))
        previousAppointments.append(Appointment(title: "Cardio", date: Date()))
        previousAppointments.append(Appointment(title: "Cardio", date: Date()))
        previousAppointments.append(Appointment(title: "Cardio", date: Date()))
        previousAppointments.append(Appointment(title: "Cardio", date: Date()))
        previousAppointments.append(Appointment(title: "Cardio", date: Date()))
        previousAppointments.append(Appointment(title: "Cardio", date: Date()))

    }

    var body: some View {
        Section(header: Text("Upcoming").font(.largeTitle)) {
        List(futureAppointments) { appt in

                AppointmentCardView()
            }
        }
        Section(header: Text("History").font(.largeTitle)) {
            List(previousAppointments) { appt in

                AppointmentCardView(isOld: true)
            }
            
        }
    }
}

#Preview {
    AppointmentsView()
}
