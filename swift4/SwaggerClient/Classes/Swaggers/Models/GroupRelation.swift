//
// GroupRelation.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public struct GroupRelation: Codable {


    /** Specifies the type of relation. It must be either of type &#x60;in_sequence&#x60; or &#x60;in_direct_sequence&#x60;.  */
    public var type: String

    /** An array of groups that should be related */
    public var groups: [String]
    public init(type: String, groups: [String]) { 
        self.type = type
        self.groups = groups
    }

}
