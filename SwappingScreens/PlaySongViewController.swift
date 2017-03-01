//
//  PlaySongViewController.swift
//  SwappingScreens
//
//  Created by Munir Wanis on 01/03/17.
//  Copyright © 2017 Munir Wanis. All rights reserved.
//

import UIKit

class PlaySongViewController: UIViewController {

    @IBOutlet weak var songTitleLbl: UILabel!
    private var _selectedSong: String!
    
    var selectedSong: String {
        get { return _selectedSong }
        set { _selectedSong = newValue }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        songTitleLbl.text = _selectedSong
    }

    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
