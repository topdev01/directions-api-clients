//
// RouteOptimizationAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class RouteOptimizationAPI {
    /**
     Retrieve solution
     - parameter jobId: (path) Request solution with jobId 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSolution(jobId: String, completion: @escaping ((_ data: ModelResponse?,_ error: Error?) -> Void)) {
        getSolutionWithRequestBuilder(jobId: jobId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Retrieve solution
     - GET /vrp/solution/{jobId}
     - This endpoint returns the solution of posted vehicle routing or traveling salesman problems. You can fetch it with the job_id, you have been sent. 
     - API Key:
       - type: apiKey key (QUERY)
       - name: api_key
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int), X-RateLimit-Credits(Int)]
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int), X-RateLimit-Credits(Int)]
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int), X-RateLimit-Credits(Int)]
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int), X-RateLimit-Credits(Int)]
     - examples: [{contentType=application/json, example={
  "$ref" : "examples/routeOptimizationResponse.json"
}}]
     - parameter jobId: (path) Request solution with jobId 

     - returns: RequestBuilder<ModelResponse> 
     */
    open class func getSolutionWithRequestBuilder(jobId: String) -> RequestBuilder<ModelResponse> {
        var path = "/vrp/solution/{jobId}"
        let jobIdPreEscape = "\(jobId)"
        let jobIdPostEscape = jobIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{jobId}", with: jobIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<ModelResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Solve vehicle routing problem
     - parameter body: (body) Request object that contains the problem to be solved 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func solveVRP(body: Request, completion: @escaping ((_ data: JobId?,_ error: Error?) -> Void)) {
        solveVRPWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Solve vehicle routing problem
     - POST /vrp/optimize
     -  ### Getting Started  This tutorial - [Getting Started with the Optimization API](https://www.graphhopper.com/blog/2019/05/17/getting-started-with-the-optimization-api-traveling-salesman-problem/) - illustrates the very basic steps and building blocks to model your vehicle routing problem.  This only shows you an excerpt of what is possible with our API. You can find the entire specification of the required request (Request Body Schema) as well as the response below. It is an interactive documentation of nested objects. By default, you only see the root objects such as \"vehicles\", \"vehicle_types\", \"objectives\" etc.. To unfold detailed information about each root object, you just need to click on it as shown here  ![Nested Doc](./img/nested-doc.gif)  To explore the specification, we can recommend you to extend the problem in the tutorial above and either use our [route editor](https://www.graphhopper.com/blog/2015/07/21/graphhoppers-new-route-optimization-editor/) in the Directions API dashboard or the REST clients such as Insomnia or Postman as described [here](https://docs.graphhopper.com/#section/Explore-our-APIs). Additionally, you can find a ready-to-use example in the Request Samples Panel on the right (or below). You can easily unfold it by clicking the + or you can just copy it all and paste it to our route editor or your REST client.  Furthermore, we provide [a number of tutorials](https://www.graphhopper.com/tutorial/) illustrating how to use this API and how to model your vehicle routing problems. Here, you can find a list of tutorials that might help you to get started quickly:  - [Getting Start with the Optimization API - Traveling Salesman Problem](https://www.graphhopper.com/blog/2019/05/17/getting-started-with-the-optimization-api-traveling-salesman-problem/) - [How to solve a traveling salesman problem with a week-planning horizon?](https://www.graphhopper.com/blog/2016/05/30/how-to-solve-a-traveling-salesman-problem-with-a-week-planning-horizon/) - [How to schedule technicians with skills and multiple dependencies between tasks?](https://www.graphhopper.com/blog/2016/06/03/how-to-route-technicians-with-skills-and-multiple-dependencies-between-tasks/) - [What is the difference between the min. of completion time and min. transport time?](https://www.graphhopper.com/blog/2016/06/20/what-is-the-difference-between-the-minimization-of-completion-time-and-minimizing-transport-time/) - [How to model multiple delivery routes with a single vehicle?](https://www.graphhopper.com/blog/2016/07/21/how-to-model-multiple-delivery-routes-with-a-single-vehicle/) 
     - API Key:
       - type: apiKey key (QUERY)
       - name: api_key
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int), X-RateLimit-Credits(Int)]
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int), X-RateLimit-Credits(Int)]
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int), X-RateLimit-Credits(Int)]
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int), X-RateLimit-Credits(Int)]
     - examples: [{contentType=application/json, example={
  "job_id" : "44886560-b584-4da5-b245-768151dacd8f"
}}]
     - parameter body: (body) Request object that contains the problem to be solved 

     - returns: RequestBuilder<JobId> 
     */
    open class func solveVRPWithRequestBuilder(body: Request) -> RequestBuilder<JobId> {
        let path = "/vrp/optimize"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<JobId>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
