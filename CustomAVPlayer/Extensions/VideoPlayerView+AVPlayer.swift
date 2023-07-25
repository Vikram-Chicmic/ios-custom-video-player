//
//  VideoPlayerView+AVPlayer.swift
//  CustomAVPlayer
//
//  Created by Himanshu on 7/25/23.
//

import UIKit
import AVFoundation

extension VideoPlayerView {
    
    // MARK: - ui setup for av player
    func setAvPlayerLayer() {
        avPlayerLayer.frame = CGRect(origin: .zero, size: self.videoContainer.bounds.size)
        
        if !videoTitle.isEmpty {
            videoTitleLabel.isHidden = false
            videoTitleLabel.text = videoTitle
        }
        
        let player = AVPlayer(url: url)
        avPlayerLayer.player = player
        
        self.videoContainer.layer.addSublayer(avPlayerLayer)
        setPinchToZoomGesture()
        
        avPlayerLayer.player?.play()
    }
    
    // MARK: - av player ui interactions
    func setPinchToZoomGesture() {
        let pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(pinchedView))
        self.videoContainer.isUserInteractionEnabled = true
        self.videoContainer.addGestureRecognizer(pinchGesture)
    }
    
    // MARK: - target methods
    @objc func pinchedView(sender: UIPinchGestureRecognizer) {
        resetZoomButton.isHidden = false
        if sender.scale > 0.75 && sender.scale < 4.0 {
            self.videoContainer.transform = CGAffineTransformScale(
                CGAffineTransformIdentity, sender.scale, sender.scale
            )
        }
    }
}
