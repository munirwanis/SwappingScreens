//
//  MusicListViewController.swift
//  SwappingScreens
//
//  Created by Munir Wanis on 01/03/17.
//  Copyright © 2017 Munir Wanis. All rights reserved.
//

import UIKit

class MusicListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func load3rdScreenPressed(_ sender: Any) {
        let songTitle = "The Less I Know The Better"
        performSegue(withIdentifier: "PlaySongViewControllerSegue", sender: songTitle)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let description = segue.destination as? PlaySongViewController {
            if let song = sender as? String {
                description.selectedSong = song
            }
        }
    }

}
