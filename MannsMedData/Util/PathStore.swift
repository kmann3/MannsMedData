//
//  PathStore.swift
//  MannsMedData
//
//  Created by Kennith Mann on 10/2/25.
//

import Foundation
import SwiftUI

@Observable
class PathStore {
    var path: NavigationPath {
        didSet {
            save()
        }
    }

    var selectedTab: MenuOptionsEnum = .apptAndHistory

    enum Route: Hashable {
        case apptHistory_Details//(appointment: Appointment)
        case apptHistory_Edit//(appointment: Appointment)
        case apptHistory_List

        case doctors_Details//(doctor: Doctor)
        case doctors_Edit//(doctor: Doctor)
        case doctors_List

        case export

        case familyMedicalHistory_Details
        case familyMedicalHistory_Edit
        case familyMedicalHistory_List

        case medications_Details
        case medications_Edit
        case medications_List

        case settings

        case surgeriesAndNotableEvents_Details
        case surgeriesAndNotableEvents_Edit
        case surgeriesAndNotableEvents_List
    }

//    func getVariable(route: Route) -> Any? {
//        switch route {
//        case .account_Details(let account):
//            return account
//
//        default:
//            return nil
//        }
//    }

    private let savePath = URL.documentsDirectory.appending(path: "SavedPath")

    init() {
        if let data = try? Data(contentsOf: savePath) {
            if let decoded = try? JSONDecoder().decode(
                NavigationPath.CodableRepresentation.self, from: data)
            {
                path = NavigationPath(decoded)
                return
            }
        }

        // No previous path; Start new
        path = NavigationPath()
    }

    func save() {
        guard let representation = path.codable else { return }

        do {
            let data = try JSONEncoder().encode(representation)
            try data.write(to: savePath)
        } catch {
            print("Failed to save navigation data")
        }
    }

    /// Go backwards once
    public func backUpPath() {
        path.removeLast(1)
    }

    /// Go to the beginning - home / dashboard
    public func clearPathAndGoHome() {
        path.removeLast(path.count)
    }

    // https://tanaschita.com/swiftui-navigationpath/
    public func navigateTo(route: Route) {
        path.append(route)
    }
}
