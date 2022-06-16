extension Legacy {
    
    /**
     Represents data-points of a chart as shown on a member's profile-page.
     
     Each data-point is an array of 2 integer-values. The first value is on the x-axis, the second-value is on the y-axis.
     
     ## Website
     
     The data is shown as a graph on a member's profile-page on https://members.iracing.com/membersite/member/CareerStats.do.
     
     ## Backend
     
     The backend-endpoint requires a GET-request to https://members.iracing.com/memberstats/member/GetChartData and has
     the parameters
     
     - `custid`, the member's customer-ID.
     - `catid`, the category of racing, 1=oval, 2=road, 3=dirt-oval, 4=dirt-road
     - `chartType`, the type of data, 1=iRating, 2=ttRating, 3=license-class
     
     In case the parameter-values are outside their range, the response-body was `{"ok":false}`.
     
     In any case, the x-axis is a timestamp in millis, while the y-axis is either iRating, ttRating or the license-class
     encoded as License + Safety Rating:
     
     * License
     * Rookie: 1 * 1000
     * D: 2 * 1000
     * C: 3 * 1000
     * B: 4 * 1000
     * A: 5 * 1000
     * Safety Rating * 100
     
     Example: A4.99 has a value of 5499.
     */
    public struct ChartData {
        /**
         Each data-point is an array of 2 integer-values. The first value is on the x-axis, the second-value is on the y-axis.
         */
        public let dataPoints: [[Int]]
        
        /**
         Initialize CartData with given data-points.
         
         - Parameter dataPoints: Each data-point is an array of 2 integer-values. The first value is on the x-axis, the
         second-value is on the y-axis.
         */
        public init(
            dataPoints: [[Int]]
        ) {
            self.dataPoints = dataPoints
        }
        
        // There's no coding-keys, as the received data actaully is an Array<Array<Int>>.
    }
}
