//
// RouteResponsePath.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public struct RouteResponsePath: Codable {


    /** The total distance, in meters.  */
    public var distance: Double?

    /** The total travel time, in milliseconds.  */
    public var time: Int64?

    /** The total ascent, in meters.  */
    public var ascend: Double?

    /** The total descent, in meters.  */
    public var descend: Double?

    public var points: Object?

    public var snappedWaypoints: Object?

    /** Whether the &#x60;points&#x60; and &#x60;snapped_waypoints&#x60; fields are polyline-encoded strings rather than JSON arrays of coordinates. See the field description for more information on the two formats.  */
    public var pointsEncoded: Bool?

    /** The bounding box of the route geometry. Format: &#x60;[minLon, minLat, maxLon, maxLat]&#x60;.  */
    public var bbox: [Double]?

    /** The instructions for this route. This feature is under active development, and our instructions can sometimes be misleading, so be mindful when using them for navigation.  */
    public var instructions: [RouteResponsePathInstructions]?

    /** Details, as requested with the &#x60;details&#x60; parameter. Consider the value &#x60;{\&quot;street_name\&quot;: [[0,2,\&quot;Frankfurter Straße\&quot;],[2,6,\&quot;Zollweg\&quot;]]}&#x60;. In this example, the route uses two streets: The first, Frankfurter Straße, is used between &#x60;points[0]&#x60; and &#x60;points[2]&#x60;, and the second, Zollweg, between &#x60;points[2]&#x60; and &#x60;points[6]&#x60;. See [here](https://discuss.graphhopper.com/t/2539) for discussion.  */
    public var details: Any?

    /** An array of indices (zero-based), specifiying the order in which the input points are visited. Only present if the &#x60;optimize&#x60; parameter was used.  */
    public var pointsOrder: [Int]?
    public init(distance: Double?, time: Int64?, ascend: Double?, descend: Double?, points: Object?, snappedWaypoints: Object?, pointsEncoded: Bool?, bbox: [Double]?, instructions: [RouteResponsePathInstructions]?, details: Any?, pointsOrder: [Int]?) { 
        self.distance = distance
        self.time = time
        self.ascend = ascend
        self.descend = descend
        self.points = points
        self.snappedWaypoints = snappedWaypoints
        self.pointsEncoded = pointsEncoded
        self.bbox = bbox
        self.instructions = instructions
        self.details = details
        self.pointsOrder = pointsOrder
    }
    public enum CodingKeys: String, CodingKey { 
        case distance
        case time
        case ascend
        case descend
        case points
        case snappedWaypoints = "snapped_waypoints"
        case pointsEncoded = "points_encoded"
        case bbox
        case instructions
        case details
        case pointsOrder = "points_order"
    }

}