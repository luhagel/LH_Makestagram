//
//  PostTableViewCell.swift
//  Makestagram
//
//  Created by Luca Hagel on 6/23/16.
//  Copyright © 2016 Make School. All rights reserved.
//

import UIKit
import Bond
import Parse

class PostTableViewCell: UITableViewCell {
    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var likesIconImageView: UIImageView!
    @IBOutlet weak var likesLabel: UILabel!
    
    
    @IBOutlet weak var moreButton: UIButton!
    @IBOutlet weak var likeButton: UIButton!
    
    
    @IBAction func moreButtonTapped(sender: UIButton) {
    }
    @IBAction func likeButtonTapped(sender: UIButton) {
        post?.toggleLikePost(PFUser.currentUser()!, post: post!)
    }
    
    
    var post: Post? {
        didSet {
            if let post = post {
                post.image.bindTo(postImageView.bnd_image)
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
