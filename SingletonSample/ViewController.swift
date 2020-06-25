//
//  ViewController.swift
//  SingletonSample
//
//  Created by yaiwamoto on 25/06/2020.
//  Copyright © 2020 Yasutaka Iwamoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var contentTextView: UITextView!
    
    let singleton = Singleton.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loadButtonDidTap(_ sender: Any) {
        titleTextField.text = singleton.getTitle()
        contentTextView.text = singleton.getContents()
    }
    
    @IBAction func saveButtonDidTap(_ sender: Any) {
        guard
            let title = titleTextField.text,
            let content = contentTextView.text else { return }

        singleton.saveTitle(title: title)
        singleton.saveContents(content: content)
    }
    
}

