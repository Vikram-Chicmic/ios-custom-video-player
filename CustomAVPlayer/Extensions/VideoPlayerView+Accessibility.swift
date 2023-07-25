//
//  VideoPlayerView+Icons.swift
//  CustomAVPlayer
//
//  Created by Nitin on 7/25/23.
//

import UIKit

extension VideoPlayerView {
    // MARK: - change button icon
    public func setResetZoomIcon(icon: UIImage) {
        resetZoomButton.setImage(icon, for: .normal)
    }
    
    // MARK: - show/hide components
    public func hideTimerView(hide: Bool) {
        timeStackView.isHidden = hide
    }
    
    // MARK: - change color
    public func setPlayerTint(color: UIColor) {
        // set main theme for player
        self.view.tintColor = color
    }
    
    public func setTextColor(color: UIColor) {
        videoTitleLabel.textColor = color
        currentTime.textColor = color
        duration.textColor = color
    }
    
    // MARK: - change font
    public func setTextFont(font: UIFont) {
        videoTitleLabel.font = font
        currentTime.font = font
        duration.font = font
    }
}
