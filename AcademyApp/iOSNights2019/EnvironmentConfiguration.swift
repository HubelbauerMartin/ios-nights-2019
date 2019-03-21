//
//  EnvironmentConfiguration.swift
//  iOSNights2019
//
//  Created by Jan Kaltoun on 14/02/2019.
//  Copyright © 2019 STRV. All rights reserved.
//

import Foundation

struct EnvironmentConfiguration: Decodable {
    private enum CodingKeys: String, CodingKey {
        case apiBaseUrl = "API_BASE_URL"
    }

    static let current: EnvironmentConfiguration = {
        EnvironmentConfiguration.readConfiguration()
    }()

    static let configurationFileName = "Info"
    static let configurationFileExtension = "plist"

    let apiBaseUrl: String

    static func readConfiguration() -> EnvironmentConfiguration {
        guard let url = Bundle.main.url(
            forResource: EnvironmentConfiguration.configurationFileName,
            withExtension: EnvironmentConfiguration.configurationFileExtension
        ) else {
            fatalError("Unable to construct the Environment configuration file URL.")
        }

        guard let data = try? Data(contentsOf: url) else {
            fatalError("Unable to read the Environment configuration file.")
        }

        let decoder = PropertyListDecoder()

        guard let configuration = try? decoder.decode(EnvironmentConfiguration.self, from: data) else {
            fatalError("Unable to decode the Environment configuration file.")
        }

        return configuration
    }
}
