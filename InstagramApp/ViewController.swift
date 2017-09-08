//
//  ViewController.swift
//  InstagramApp
//
//  Created by Ebinuma Kenichi on 2017/09/03.
//  Copyright © 2017年 kenichi ebinuma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myScrollView: UIScrollView!

    let coverView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()

        coverView.frame = CGRect(x: 0, y: 0, width: myImageView.frame.width, height: myImageView.frame.height)
        myImageView.addSubview(coverView)

        myScrollView.contentSize = CGSize(width: 730, height: 150)

        setEffectGroup(x: CGFloat(10), action: #selector(ViewController.tappedOriginalButton(sender:)), color: UIColor.clear, text: "Original")
        setEffectGroup(x: CGFloat(100), action: #selector(ViewController.tappedRedButton(sender:)), color: UIColor.red, text: "Red")
        setEffectGroup(x: CGFloat(190), action: #selector(ViewController.tappedGreenButton(sender:)), color: UIColor.green, text: "Green")
        setEffectGroup(x: CGFloat(280), action: #selector(ViewController.tappedBlueButton(sender:)), color: UIColor.blue, text: "Blue")
        setEffectGroup(x: CGFloat(370), action: #selector(ViewController.tappedYellowButton(sender:)), color: UIColor.yellow, text: "Yellow")
        setEffectGroup(x: CGFloat(460), action: #selector(ViewController.tappedPurpleButton(sender:)), color: UIColor.purple, text: "Purple")
        setEffectGroup(x: CGFloat(550), action: #selector(ViewController.tappedCyanButton(sender:)), color: UIColor.cyan, text: "Cyan")
        setEffectGroup(x: CGFloat(640), action: #selector(ViewController.tappedWhiteButton(sender:)), color: UIColor.white, text: "White")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeButton(_ x: CGFloat, action: Selector) -> UIButton {
        let button = UIButton()
        button.frame = CGRect(x: x, y: 30, width: 80, height: 80)
        button.setBackgroundImage(UIImage(named: "cat.png"), for: UIControlState.normal)
        button.layer.cornerRadius = 3.0
        button.clipsToBounds = true
        button.addTarget(self, action: action, for: UIControlEvents.touchUpInside)

        return button
    }

    func makeButtonCoverView(_ color: UIColor) -> UIView {
        let buttonCoverView = UIView()
        buttonCoverView.frame = CGRect(x: 0, y: 0, width: 80, height: 80)
        buttonCoverView.backgroundColor = color
        buttonCoverView.alpha = 0.1
        buttonCoverView.isUserInteractionEnabled = false

        return buttonCoverView
    }

    func makeEffectLabel(_ x: CGFloat, text: String) -> UILabel {
        let effectLabel = UILabel()
        effectLabel.frame = CGRect(x: x, y: 110, width: 80, height: 20)
        effectLabel.text = text
        effectLabel.font = UIFont(name: "Helvetica-Light", size: CGFloat(15))
        effectLabel.textAlignment = NSTextAlignment.center
        effectLabel.textColor = UIColor.white

        return effectLabel
    }

    func setEffectGroup(x: CGFloat, action: Selector, color: UIColor, text: String) {
        let myButton = makeButton(x, action: action)
        myScrollView.addSubview(myButton)

        let myButtonCoverView = makeButtonCoverView(color)
        myButton.addSubview(myButtonCoverView)

        let myLabel = makeEffectLabel(x, text: text)
        myScrollView.addSubview(myLabel)
    }

    func tappedOriginalButton(sender: UIButton) {
        coverView.backgroundColor = UIColor.clear
    }
    func tappedRedButton(sender: UIButton) {
        coverView.backgroundColor = UIColor.red
        coverView.alpha = 0.1
    }
    func tappedGreenButton(sender: UIButton) {
        coverView.backgroundColor = UIColor.green
        coverView.alpha = 0.1
    }
    func tappedBlueButton(sender: UIButton) {
        coverView.backgroundColor = UIColor.blue
        coverView.alpha = 0.1
    }
    func tappedYellowButton(sender: UIButton) {
        coverView.backgroundColor = UIColor.yellow
        coverView.alpha = 0.1
    }
    func tappedPurpleButton(sender: UIButton) {
        coverView.backgroundColor = UIColor.purple
        coverView.alpha = 0.1
    }
    func tappedCyanButton(sender: UIButton) {
        coverView.backgroundColor = UIColor.cyan
        coverView.alpha = 0.1
    }
    func tappedWhiteButton(sender: UIButton) {
        coverView.backgroundColor = UIColor.white
        coverView.alpha = 0.1
    }
}
