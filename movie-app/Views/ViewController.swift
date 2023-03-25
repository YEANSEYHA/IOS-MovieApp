//
//  ViewController.swift
//  movie-app
//
//  Created by Yean Seyha on 25/3/23.
//
import UIKit
import AVFoundation
import AVKit
import SwiftUI


class ViewController: UIViewController {
    @IBOutlet weak var videoView: UIView!
    var player : AVPlayer!
    var avpController = AVPlayerViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // do any additional setup after loading the view
        startVideo()
    }
    func startVideo(){
        let url = URL(string: "https://drive.google.com/file/d/1jszq_vWZWmnv7Al-BemUhXDBE0sH9QeT/view?usp=share_link")
        player = AVPlayer(url: url!)
        avpController.player = player
        avpController.view.frame.size.height = videoView.frame.size.height
        avpController.view.frame.size.width = videoView.frame.size.width
        self.videoView.addSubview(avpController.view)
        player.play()
        
    }
}

















//struct ViewController: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct ViewController_Previews: PreviewProvider {
//    static var previews: some View {
//        ViewController()
//    }
//}
