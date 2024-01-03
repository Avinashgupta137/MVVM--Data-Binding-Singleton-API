//
//  MatchDetailViewModel.swift
//  Test
//
//  Created by avinash on 31/12/23.
//

import Foundation

final class MatchDetailViewModel {
    
    var data: Temperatures?
    var datas : Temperatures?
    var eventHandler: ((_ event: Event) -> Void)? //Data Binding Closure
    func fetchmeatchdetail(){
        self.eventHandler?(.loading)
        DataManager.shared.fetchProducts(baseUrl: Constant.API.MatchdetailsURL) { response in
            self.eventHandler?(.stoploading)
            switch response {
            case .success(let temperatures):
                self.data = temperatures
                self.eventHandler?(.dataLoaded)
            case .failure(let error):
                self.eventHandler?(.error(error))
            }
        }
        DataManager.shared.fetchProducts(baseUrl: Constant.API.MatchdetailURL) { response in
            self.eventHandler?(.stoploading)
            switch response {
            case .success(let temperatures):
                self.datas = temperatures
                self.eventHandler?(.dataLoaded)
            case .failure(let error):
                self.eventHandler?(.error(error))
            }
        }
    }
}

extension MatchDetailViewModel {
    enum Event {
        case loading
        case stoploading
        case dataLoaded
        case error(Error?)
    }
}
