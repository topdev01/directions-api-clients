//
// GeocodingLocation.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public struct GeocodingLocation: Codable {


    public var point: GeocodingPoint?

    /** The OSM ID of the entity */
    public var osmId: String?

    /** N &#x3D; node, R &#x3D; relation, W &#x3D; way */
    public var osmType: String?

    /** The OSM key of the entity */
    public var osmKey: String?

    /** The name of the entity. Can be a boundary, POI, address, etc */
    public var name: String?

    /** The country of the address */
    public var country: String?

    /** The city of the address */
    public var city: String?

    /** The state of the address */
    public var state: String?

    /** The street of the address */
    public var street: String?

    /** The housenumber of the address */
    public var housenumber: String?

    /** The postcode of the address */
    public var postcode: String?
    public init(point: GeocodingPoint?, osmId: String?, osmType: String?, osmKey: String?, name: String?, country: String?, city: String?, state: String?, street: String?, housenumber: String?, postcode: String?) { 
        self.point = point
        self.osmId = osmId
        self.osmType = osmType
        self.osmKey = osmKey
        self.name = name
        self.country = country
        self.city = city
        self.state = state
        self.street = street
        self.housenumber = housenumber
        self.postcode = postcode
    }
    public enum CodingKeys: String, CodingKey { 
        case point
        case osmId = "osm_id"
        case osmType = "osm_type"
        case osmKey = "osm_key"
        case name
        case country
        case city
        case state
        case street
        case housenumber
        case postcode
    }

}