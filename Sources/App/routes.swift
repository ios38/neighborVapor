import Vapor

func routes(_ app: Application) throws {
    
    app.get { req in
        return "It works!"
    }

    app.get("hello") { req -> String in
        return "Hello, world!"
    }

    let adsController = AdsController()
    app.get("adslist", use: adsController.adsList)
    app.get("postAd", use: adsController.postAd)
    app.get("removeAd", use: adsController.removeAd)

}
