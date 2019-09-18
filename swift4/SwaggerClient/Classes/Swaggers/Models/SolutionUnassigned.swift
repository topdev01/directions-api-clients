//
// SolutionUnassigned.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public struct SolutionUnassigned: Codable {


    /** An array of ids of unassigned services */
    public var services: [String]?

    /** An array of ids of unassigned shipments */
    public var shipments: [String]?

    /** An array of ids of unassigned breaks */
    public var breaks: [String]?

    /** An array of details, i.e. reason for unassigned services or shipments */
    public var details: [Detail]?
    public init(services: [String]?, shipments: [String]?, breaks: [String]?, details: [Detail]?) { 
        self.services = services
        self.shipments = shipments
        self.breaks = breaks
        self.details = details
    }

}
