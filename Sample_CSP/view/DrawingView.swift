//
//  DrawingView.swift
//  Sample_CSP
//
//  Created by Cortez, Jairo on 12/5/17.
//  Copyright © 2017 Cortez, Jairo. All rights reserved.
//

import UIKit

public class DrawingView: UIView
{
    override public func draw(_ rect: CGRect)
    {
        drawStrickFigure().stroke()
        drawTurtlePath()
    }
    private func drawStrickFigure() -> UIBezierPath
    {
        let stickFigure = UIBezierPath()
        
        UIColor.blue.setStroke()
        stickFigure.lineWidth = 3.0
        
        stickFigure.addArc(withCenter:CGPoint(x: 200, y:200),
                        radius: CGFloat(20),
                        startAngle: CGFloat(0),
                        endAngle: CGFloat(2) * CGFloat.pi,
                        clockwise: true)
        stickFigure.move(to: CGPoint(x: 200, y: 220))
        stickFigure.addLine(to: CGPoint(x: 200, y: 270))
        stickFigure.move(to: CGPoint(x: 180, y: 240))
        stickFigure.addLine(to: CGPoint(x: 220, y: 240))
        stickFigure.move(to: CGPoint(x: 200, y: 220))
        stickFigure.addLine(to: CGPoint(x: 180, y: 300))
        stickFigure.move(to: CGPoint(x: 200, y: 270))
        stickFigure.addLine(to: CGPoint(x: 220, y: 300))
        
        return stickFigure
    }
    private func drawTurtlePath()
    {
        
    let logo = UIBezierPath()
    UIColor.white.setFill()
    logo.move(to: CGPoint (x: 100, y: 300))
    logo.addLine(to: CGPoint (x: 100, y: 300))
    logo.addLine(to: CGPoint (x: 50, y: 350))
    logo.close()
    logo.fill()
    }
    public func drawHAppyTree() -> Void
    {
        let bobRoss = UIBezierPath()
        
        bobRoss.move(to: CGPoint(x: 80, y: 50))
        bobRoss.addLine(to: CGPoint(x: 120, y: 150))
        bobRoss.addLine(to: CGPoint(x: 40, y: 150))
        bobRoss.close()
        UIColor(patternImage: UIImage(named:"tree")!).setFill()
        UIColor.brown.setStroke()
        bobRoss.lineWidth = 2.0
        bobRoss.fill()
        bobRoss.stroke()
    }
}






