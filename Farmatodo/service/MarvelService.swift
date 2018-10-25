
import Foundation
import Alamofire
import SwiftyJSON


class Service: NSObject {
    static let shared = Service()
    var marvelViewModels = [MarvelViewModel]()
    
    func fetchData(with parameter: [String],completion: @escaping ([MarvelViewModel]?, Error?) -> ()) {
        
        marvelViewModels.removeAll()
        var urlString  = String()
        
        if(parameter[1]=="List"){
             urlString = restApi.endPoint()+parameter[0]+restApi.auth()
        }else{
             urlString = restApi.endPoint()+parameter[0]+"/"+parameter[1]+restApi.auth()
        }
        //print(urlString)
        DispatchQueue.main.async {
            Alamofire.request(urlString).responseJSON(completionHandler: { (response) in
                switch response.result{
                case .success(let value):
                    let json = JSON(value)
                    let data = json["data"]
                    //print(data["results"])
                    data["results"].array?.forEach({ (result) in
                        let thumbnail = result["thumbnail"]
                        let thumbnailFinal = thumbnail["path"].stringValue + "/portrait_xlarge." + thumbnail["extension"].stringValue
                        
                        let marvelViewModels = MarvelViewModel(marvel: mMarvel(id:result["id"].intValue,title:result["title"].stringValue,description:result["description"].stringValue,thumbnail:thumbnailFinal,modified:result["modified"].stringValue))
                        self.marvelViewModels.append(marvelViewModels)
                    })
                    completion(self.marvelViewModels, nil)
                case .failure(let error):
                    print(error.localizedDescription)
                }
            })
        }
    }
    
}





