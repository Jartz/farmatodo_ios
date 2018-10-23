
import Foundation
import Alamofire
import SwiftyJSON


class Service: NSObject {
    static let shared = Service()
    var marvelViewModels = [MarvelViewModel]()
    
    func fetchCourses(with typeApi: String,completion: @escaping ([MarvelViewModel]?, Error?) -> ()) {
        
        let authUrl = "?ts=1&apikey=dec7f80f06d17153585da30e7053afd3&hash=d30fe2332c3b53e4893ae11e0c2de567"
        let urlString = "https://gateway.marvel.com/v1/public/"+typeApi+authUrl
        
        // url imagen
        //http://i.annihil.us/u/prod/marvel/i/mg/9/40/51ca10d996b8b/portrait_xlarge.jpg
        
        print(urlString)
        
        DispatchQueue.main.async {
            Alamofire.request(urlString).responseJSON(completionHandler: { (response) in
                switch response.result{
                case .success(let value):
                    let json = JSON(value)
                    let data = json["data"]
                    let result = data["results"]
                    print(result)
                    data["results"].array?.forEach({ (result) in
                        
                        let thumbnail = result["thumbnail"]
                        let thumbnailFinal = thumbnail["path"].stringValue + "/portrait_xlarge." + thumbnail["extension"].stringValue
                        
                        let marvelViewModels = MarvelViewModel(marvel: mMarvel(id:result["id"].intValue,title:result["title"].stringValue,description:result["description"].stringValue,thumbnail:thumbnailFinal))
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





