import Foundation

let config = URLSessionConfiguration.default
let session = URLSession(configuration: config)

let url = URL(string: "https://httpbin.org/anything")!

func getMethod() {
    
    let task = session.dataTask(with: url) { data, response, error in

        // ensure there is no error for this HTTP response
        guard error == nil else {
            print ("error: \(error!)")
            return
        }
        
        // ensure there is data returned from this HTTP response
        guard let content = data else {
            print("No data")
            return
        }
        
        // serialise the data / NSData object into Dictionary [String : Any]
        guard let json = (try? JSONSerialization.jsonObject(with: content, options: JSONSerialization.ReadingOptions.mutableContainers)) as? [String: Any] else {
            print("Not containing JSON")
            return
        }
        
        print("gotten json response dictionary is \n \(json)")
        // update UI using the response here
    }

    // execute the HTTP request
    task.resume()
}

func postMethod() {
    
    var urlRequest = URLRequest(url: url)
    urlRequest.httpMethod = "POST"
    
    let postDict : [String : Any] = ["name":"Allen" , "coding" : "swift"]
    
    guard let postData = (try? JSONSerialization.data(withJSONObject: postDict, options:[])) else {
        return
    }
    
    urlRequest.httpBody = postData
    
    let dataTask = session.uploadTask(with: urlRequest, from: postData) { (data, response, error) in
        if error != nil{
            print("error while posting data.")
            return
        }
        
        guard let content = data else {
            print("No Data")
            return
        }
        
        guard let json = (try? JSONSerialization.jsonObject(with: content, options: JSONSerialization.ReadingOptions.mutableContainers)) as? [String: Any] else {
            print("Not containing json data.")
            return
        }
        
        print("the data is \(json)")
    }
    dataTask.resume()
}
getMethod()
postMethod()

