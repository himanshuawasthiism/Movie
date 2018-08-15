//
//  DetailsViewController.swift
//  MovieWebService
//
//
//  Copyright © 2018 TestCompany. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController, DetailsViewInput, TappableLabelDelegate {

    var output: DetailsViewOutput!
    public var director: Director?

    var directorName: UILabel!
    var directorNameValue: UILabel!
    var tapToShowMore: TappableLabel!
    var actorName: UILabel!
    var actorNameValue: UILabel!
    var actorScreenName: UILabel!
    var actorScreenNameValue: UILabel!

    // MARK: Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
        setupBackButton()
        view = UIView()
        view.backgroundColor = .white
       
        directorName = UILabel()
        view.addSubview(directorName)
        directorName.frame = CGRect(x: 20, y: 100, width: 200, height: 30)
        directorName.text = "Director Name"

        directorNameValue = UILabel()
        view.addSubview(directorNameValue)
        directorNameValue.frame = CGRect(x: 20, y: 150, width: 200, height: 30)
        directorNameValue.text = director?.name;

        tapToShowMore = TappableLabel()
        view.addSubview(tapToShowMore)
        tapToShowMore.frame = CGRect(x: 20, y: 200, width: 200, height: 30)
        tapToShowMore.text = "Tap here to show more"
        tapToShowMore.delegate = self

        actorName = UILabel()
        view.addSubview(actorName)
        actorName.frame = CGRect(x: 20, y: 250, width: 200, height: 30)
        actorName.text = "Actor Name"

        
        actorNameValue = UILabel()
        view.addSubview(actorNameValue)
        actorNameValue.frame = CGRect(x: 20, y: 300, width: 200, height: 30)

        actorScreenName = UILabel()
        view.addSubview(actorScreenName)
        actorScreenName.frame = CGRect(x: 20, y: 350, width: 200, height: 30)
        actorScreenName.text = "Actor Screen Name"

        
        actorScreenNameValue = UILabel()
        view.addSubview(actorScreenNameValue)
        actorScreenNameValue.frame = CGRect(x: 20, y: 400, width: 200, height: 30)
        
        actorName.isHidden = true
        actorScreenName.isHidden = true
        actorNameValue.isHidden = true
        actorScreenNameValue.isHidden = true
        
        if let actor = director?.film?.cast.first {
            actorNameValue.text = actor.name
            actorScreenNameValue.text = actor.screenName
        }

    }
    
    func setupBackButton() {
        let backButton = UIBarButtonItem()
        backButton.title = "Back"
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
    }


    // MARK: DetailsViewInput

    func didReceiveTouch() {
        actorName.isHidden = false
        actorScreenName.isHidden = false
        tapToShowMore.isHidden = true
        actorNameValue.isHidden = false
        actorScreenNameValue.isHidden = false
    }

}
