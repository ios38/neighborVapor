//
//  AdsController.swift
//  
//
//  Created by Maksim Romanov on 22.11.2020.
//

import Vapor

class AdsController {
    func adsList(_ req: Request) throws -> EventLoopFuture<[Ad]> {
        //guard let query = try? req.query.get(AdsRequest.self) else {
        //    throw Abort(.badRequest)
        //}
        //print("query.token: \(query.token)")

        let ads = [
            Ad(
                adId : 0,
                userId : 1,
                //date : 626935682.02561605,
                date : "2020-11-24 10:19:17 +0000",
                category : "Информация УК",
                title : "Отключение горячей воды 19 окт. c 9 до 17 часов",
                content : "Уважаемые жильцы! 19 октября с 9.00 до 17.00 будет отключена горячая вода в связи с ремонтом на трассе. Просим извинить за доставленные неудобства!",
                images : ""
            ),
            Ad(
                adId : 1,
                userId : 2,
                //date: 626935737.71717894,
                date: "2020-11-24 10:20:00 +0000",
                category : "Аренда жилья",
                title : "Сниму 1-к квартиру в нашем ЖК на длительный срок",
                content : "Сниму 1-комнатную квартиру в нашем ЖК на длительный срок. Чистоту и порядок гарантирую",
                images : ""
            )
        ]
        
        return req.eventLoop.future(ads)        
    }
    
    func postAd(_ req: Request) throws -> EventLoopFuture<PostAdResponse> {
        guard let query = try? req.query.get(PostAdRequest.self) else {
            throw Abort(.badRequest)
        }
        //print(query)

        let response = PostAdResponse(
                    result: 1,
                    userMessage: "postAd successful",
                    errorMessage: nil
                )

        return req.eventLoop.future(response)
    }

    func removeAd(_ req: Request) throws -> EventLoopFuture<RemoveAdResponse> {
        guard let query = try? req.query.get(RemoveAdRequest.self) else {
            throw Abort(.badRequest)
        }
        //print(query)

        let response = RemoveAdResponse(
                    result: 1,
                    userMessage: "removeAd successful",
                    errorMessage: nil
                )

        return req.eventLoop.future(response)
    }

}
