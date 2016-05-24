//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Habib Miranda on 5/24/16.
//  Copyright © 2016 littleJohns. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        
        let alertController = UIAlertController(title: "Three Card Monte!", message: "Pick a card! Any card!", preferredStyle: UIAlertControllerStyle.Alert)
        
        let destructiveAction = UIAlertAction(title: "Nice!", style: .Destructive) {
            destructiveAlert -> Void in
            self.youWin()
        }
        
        let defaultAction = UIAlertAction(title: "Yo!", style: .Default) {
            destructiveAlert -> Void in
            self.youLose()
        }
        
        let cancelAction = UIAlertAction(title: "Sup!", style: .Cancel) {
            cancelAlert -> Void in
            self.youLose()
        }
        
        alertController.addAction(cancelAction)
        alertController.addAction(defaultAction)
        alertController.addAction(destructiveAction)
        
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    func youWin() {
        
        let alertController = UIAlertController(title: "You Win!", message: "Let's do it again!", preferredStyle: UIAlertControllerStyle.Alert)
        
        let defaultAction = UIAlertAction(title: "No", style: .Default) {
            defaultAlert -> Void in
            print("You stopped!")
        }
        
        let cancelAction = UIAlertAction(title: "Yes", style: .Cancel) {
            cancelAlert -> Void in
            self.viewDidAppear(true)
        }
        
        alertController.addAction(cancelAction)
        alertController.addAction(defaultAction)
        
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    
    
    func youLose() {
    
        let alertController = UIAlertController(title: "You lose!", message: "Try Again!", preferredStyle: UIAlertControllerStyle.Alert)
    
        let defaultAction = UIAlertAction(title: "No", style: .Default) {
            defaultAlert -> Void in
            print("You Stopped!")
        }
    
        let cancelAction = UIAlertAction(title: "Yes", style: .Cancel) {
            cancelAlert -> Void in
            self.viewDidAppear(true)
        }
    
    alertController.addAction(cancelAction)
    alertController.addAction(defaultAction)
    
    presentViewController(alertController, animated: true, completion: nil)
    }
}

