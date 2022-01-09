//
//  File.swift
//  UIkitFundamentals
//
//  Created by Uiseop Eom on 2022/01/09.
//

import Foundation
import UIKit

extension NSLayoutConstraint {
    
    /**
     Align top, bottom, leading, trailing constraint to the container view
     - Parameter subView: The target subview.
     - Parameter containerView: The containter view of the target
     
     - Returns: None (Void)
     */
    static func activateFourWayConstraints(subView: UIView, containerView: UIView) {
        
        if subView.translatesAutoresizingMaskIntoConstraints {
            subView.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            subView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            subView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            subView.topAnchor.constraint(equalTo: containerView.topAnchor),
            subView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor)
        ])
    }
    
    /// Align **subView** to the **containerView** by constants
    /// - Parameters:
    ///     - subView: The target subView to be constrained.
    ///     - containerView: The containerView that holds the target subView.
    ///     - top: constant constraint to top from the containerView
    ///     - bottom: ocnstant constraint to bottom from the containverView
    ///     - leading: constant constraint to leading from the containerView
    ///     - trailing: ocnstant constraint to trailing from the containverView
    /// - Returns: Void
    static func activateFourWayConstraints(subView: UIView, containerView: UIView, top: CGFloat, bottom: CGFloat, leading: CGFloat, trailing: CGFloat) {
        
        if subView.translatesAutoresizingMaskIntoConstraints {
            subView.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            subView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: leading),
            subView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: trailing),
            subView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: top),
            subView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: bottom)
        ])
    }
    
    /**
     Set height and width constraint relative to the containerView
     - Parameters:
        - subView: the target subview
        - containerView: the containerView that holds the target subview
        - top: constant to containerView top
        - xCenter: constant to containerView centerXAnchor
     - Returns: Void
     */
    static func activateTwoWayContraints(subView: UIView, containerView: UIView, top: CGFloat, centerX: CGFloat) {
        
        if subView.translatesAutoresizingMaskIntoConstraints {
            subView.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            subView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: top),
            subView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: centerX)
        ])
    }
    
    /**
     Set height and width constraint relative to the containerView
     - Parameters:
        - subView: the target subview
        - containerView: the containerView that holds the target subview
        - top: constant to containerView top
        - left: constant to containerView left
     - Returns: Void
     */
    static func activateTwoWayContraints(subView: UIView, containerView: UIView, top: CGFloat, left: CGFloat) {
        
        if subView.translatesAutoresizingMaskIntoConstraints {
            subView.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            subView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: top),
            subView.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: left)
        ])
    }
    
    /**
     Set height and width constraint relative to the containerView
     - Parameters:
        - subView: the target subview
        - containerView: the containerView that holds the target subview
        - widthMultiply: amount of relative width multiply (should be of decimal float)
        - heightMultiply: amount of relative height mulply (should be of decimal float)
     - Returns: Void
     */
    static func activateTwoWayContraints(subView: UIView, containerView: UIView, widthMultiply: CGFloat, heightMultiply: CGFloat) {
        
        if subView.translatesAutoresizingMaskIntoConstraints {
            subView.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            subView.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: widthMultiply),
            subView.heightAnchor.constraint(equalTo: containerView.heightAnchor, multiplier: heightMultiply)
        ])
    }
    
}
