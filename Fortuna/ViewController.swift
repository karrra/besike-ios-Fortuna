//
//  ViewController.swift
//  Fortuna
//
//  Created by xp on 14/10/25.
//  Copyright (c) 2014年 karra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let delegate = UIApplication.sharedApplication().delegate as AppDelegate
    
    @IBAction func rootViewTapped(sender: UITapGestureRecognizer) {
        displayRandomQuote()
    }
    @IBOutlet weak var quotationTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        println("Hacking in Swift, since iOS 8")
        println("controller: \(self)")
        println("view: \(self.view)")
        println("view's frame: \(self.view.frame)")
        println("viewDidLoad quotationTextView: \(quotationTextView)")
        // Do any additional setup after loading the view, typically from a nib.
        displayRandomQuote()
    }
    
    func displayRandomQuote(){
        var quotes: [String]!
        if arc4random_uniform(2) == 0 {
            quotes = delegate.positiveQuotes
        }
        else {
            quotes = delegate.negativeQuotes
        }
        let a = arc4random_uniform(UInt32(quotes.count))
        var quote = quotes[Int(a)]
        quotationTextView.text = quote
        quotationTextView.editable = false
        quotationTextView.selectable = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

