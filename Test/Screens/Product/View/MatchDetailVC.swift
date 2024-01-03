//
//  MatchDetailVC.swift
//  Test
//
//  Created by avinash on 31/12/23.
//

import UIKit

class MatchDetailVC: UIViewController {

    private var viewModel = MatchDetailViewModel()
    private var dataArray:[Any] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        configuration()

    }

}
extension MatchDetailVC {
    
    func configuration(){
        observeEvent()
        initViewModel()
    }
    func initViewModel (){
        viewModel.fetchmeatchdetail()
    }
    
    func observeEvent(){
        viewModel.eventHandler = { [weak self] event in
            guard let self else {return}
            
            switch event {
            case .loading: 
               print(".....Data loading")
            case .stoploading: 
                print(".....Stop loading")
            case .dataLoaded:
                print(".....Data loaded")
                DispatchQueue.main.async {
                    self.dataArray.append(self.viewModel.data)
                    print(self.dataArray.count)
                    print(self.viewModel.data)
                }
            case .error(let error):
                print(error)
            }
        }
    }
}

