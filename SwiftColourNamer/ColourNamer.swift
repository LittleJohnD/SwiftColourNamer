//
//  ColourNamer.swift
//  SwiftColourNamer
//
//  Created by John Dyer on 10/02/2015.
//  Copyright (c) 2015 John Dyer. All rights reserved.
//

import UIKit

class ColourNamerEntry: ViewController
{
    weak var colourSelector: ViewController?
    var bgColour = UIColor.grayColor()
    override func viewDidLoad()
    {
        super.viewDidLoad()
        view.backgroundColor = bgColour//
    }
    
    func textFieldShouldReturn(nameEntry: UITextField) -> Bool
    {
        colourSelector?.colourLabel.text = nameEntry.text
        nameEntry.resignFirstResponder()
        dismissViewControllerAnimated(true, completion: nil)
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
