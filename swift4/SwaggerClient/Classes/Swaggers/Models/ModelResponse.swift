//
// ModelResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public struct ModelResponse: Codable {

    public enum Status: String, Codable { 
        case waitingInQueue = "waiting_in_queue"
        case processing = "processing"
        case finished = "finished"
    }
    public var copyrights: [String]?

    /** UUID. Unique identifier of job - which you get when posting your request to the large problem solver */
    public var jobId: UUID?
    /** Indicates the current status of the job */
    public var status: Status?

    /** Waiting time in ms */
    public var waitingTimeInQueue: Int64?

    /** Processing time in ms. If job is still waiting in queue, processing_time is 0 */
    public var processingTime: Int64?

    public var solution: Solution?
    public init(copyrights: [String]?, jobId: UUID?, status: Status?, waitingTimeInQueue: Int64?, processingTime: Int64?, solution: Solution?) { 
        self.copyrights = copyrights
        self.jobId = jobId
        self.status = status
        self.waitingTimeInQueue = waitingTimeInQueue
        self.processingTime = processingTime
        self.solution = solution
    }
    public enum CodingKeys: String, CodingKey { 
        case copyrights
        case jobId = "job_id"
        case status
        case waitingTimeInQueue = "waiting_time_in_queue"
        case processingTime = "processing_time"
        case solution
    }

}
