//
//  StartViewController.swift
//  HomeWork 2.6
//
//  Created by Филипп Слабодецкий on 16.02.2021.
//

import UIKit

//protocol SendColorDeligate {
//    func color(red: CGFloat, green: CGFloat, blue: CGFloat) -> (CGFloat, CGFloat, CGFloat)
//}

class StartViewController: UIViewController, BackgroundColorDeligate {
  
    // MARK:- Pravat Properties
    private var viewColor = Color()
        
    // MARK:- View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.init(red: viewColor.red, green: viewColor.green, blue: viewColor.blue, alpha: viewColor.alpha)
    }
    
    // MARK:- Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let settingsVC = segue.destination as! SettingsViewController
        settingsVC.viewColor = viewColor
        settingsVC.deligate = self
    }
    
    // MARK:- IB Action
    
    @IBAction func unwin(segue: UIStoryboardSegue) {
        
    }
    
    // MARK:- Methods
    func backgroundColor(color: Color) {
    
        view.backgroundColor = UIColor.init(red: color.red, green: color.green, blue: color.blue, alpha: color.alpha)
        
        viewColor.newValue(red: color.red, green: color.green, blue: color.blue)
    }
    
    
    
// end
}
