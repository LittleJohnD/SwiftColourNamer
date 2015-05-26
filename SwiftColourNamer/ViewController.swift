//
//  ViewController.swift
//  SwiftColourNamer
//
//  Created by John Dyer on 10/02/2015.
//  Copyright (c) 2015 John Dyer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var backgroundColour = UIColor()
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var colourLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var cNamer = segue.destinationViewController as ColourNamerEntry
        cNamer.bgColour = backgroundColour
        cNamer.colourSelector = self
    }
    
    @IBAction func resetColour(sender: AnyObject)
    {
        redSlider.value = 0.5
        blueSlider.value = 0.5
        greenSlider.value = 0.5
        colourMyView()
        self.colourLabel.text = "Mid-Gray"
    }
    
    @IBAction func sliderUpdate(sender: AnyObject)
    {
        colourMyView()
        colourLabel.text = "Unknown"
    }
    
    func calcColor() -> UIColor
    {
        backgroundColour = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(1.0))
        return backgroundColour
    }
    
    func colourMyView()
    {
        self.view.backgroundColor = calcColor()
    }


}

