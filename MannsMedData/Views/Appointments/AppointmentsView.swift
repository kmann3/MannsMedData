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

        let oldDate = Calendar.current.date(byAdding: .day, value: -7, to: Date())
        previousAppointments.append(Appointment(title: "Cardio", date: oldDate!))
        previousAppointments.append(Appointment(title: "Cardio", date: oldDate!))
        previousAppointments.append(Appointment(title: "Cardio", date: oldDate!))
        previousAppointments.append(Appointment(title: "Cardio", date: oldDate!))
        previousAppointments.append(Appointment(title: "Cardio", date: oldDate!))
        previousAppointments.append(Appointment(title: "Cardio", date: oldDate!))
        previousAppointments.append(Appointment(title: "Cardio", date: oldDate!))

    }

    var body: some View {
        Section(header: Text("Upcoming").font(.largeTitle)) {
        List(futureAppointments) { appt in

            AppointmentCardView(appointment: appt)
            }
        }
        Section(header: Text("History").font(.largeTitle)) {
            List(previousAppointments) { appt in

                AppointmentCardView(appointment: appt)
            }
            
        }
    }
}

#Preview {
    AppointmentsView()
}
