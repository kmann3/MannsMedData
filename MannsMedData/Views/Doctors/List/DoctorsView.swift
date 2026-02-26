//
//  DoctorsView.swift
//  MannsMedData
//
//  Created by Kenny Mann on 2/25/26.
//

import SwiftUI

struct DoctorsListView: View {
    var body: some View {
        List {
            DoctorCardView(doctor: Doctor(name: "Foo"))
            DoctorCardView(doctor: Doctor(name: "Foo"))
            DoctorCardView(doctor: Doctor(name: "Foo"))
            DoctorCardView(doctor: Doctor(name: "Foo"))
            DoctorCardView(doctor: Doctor(name: "Foo"))
        }
    }
}

#Preview {
    DoctorsListView()
}
