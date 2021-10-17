//
//  UserFeedCell.swift
//  FaceBookFeed
//
//  Created by Kyungyun Lee on 17/10/2021.
//

import Foundation
import UIKit

class UserFeedcell : UITableViewCell {
    
    let topContentView = UIView()
    let userProfileImageView = UIImageView()
    let moreButton = UIButton(type:  . system)
    let profileStackView = UIStackView()
    let userProfileLabel = UILabel()
    let postDateLabel = UILabel()
    let contentsLabel = UILabel()
    let contentsStaciView = UIStackView()
    let postImageView = UIImageView()
    let bottomStackView = UIStackView()
    let likeButton = UIButton(type:  .system)
    let commentButton = UIButton(type : .system)
    
    let middleStackView = UIStackView()
    let likesCountLabel = UILabel()
    let commentCountLabel = UILabel()
    
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder : aDecoder)
    }
    
    override init(style : UITableViewCell.CellStyle, reuseIdentifier : String?) {
        super.init(style : style, reuseIdentifier : reuseIdentifier)
        setView()
        setConstraint()
    }
    
    @objc private func pressedMoreButton() {
        
    }
    
    func setView() {
        contentView.addSubview(topContentView)
        topContentView.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(userProfileImageView)
        userProfileImageView.translatesAutoresizingMaskIntoConstraints = false
        userProfileImageView.image = UIImage(named: "user.png")
        userProfileImageView.layer.cornerRadius = 56*0.5
        
        contentView.addSubview(moreButton)
        moreButton.translatesAutoresizingMaskIntoConstraints = false
        moreButton.addTarget(self, action: #selector(pressedMoreButton), for: .touchUpInside)
        moreButton.setImage(UIImage(named: "more.png"), for: .normal)
        moreButton.tintColor = UIColor.black
        
        contentView.addSubview(profileStackView)
        profileStackView.translatesAutoresizingMaskIntoConstraints = false
        profileStackView.addArrangedSubview(userProfileLabel)
        profileStackView.addArrangedSubview(postDateLabel)
        profileStackView.distribution = .fill
        profileStackView.axis = .vertical
        profileStackView.spacing = 2
        
        userProfileLabel.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        postDateLabel.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        postDateLabel.textColor = UIColor.darkGray
        
        contentView.addSubview(contentsLabel)
        contentsLabel.translatesAutoresizingMaskIntoConstraints = false
        contentsLabel.font = UIFont.systemFont(ofSize: 14, weight : .medium)
        contentsLabel.numberOfLines = 0
        
        contentView.addSubview(contentsStaciView)
        contentsStaciView.translatesAutoresizingMaskIntoConstraints = false
        contentsStaciView.addArrangedSubview(postImageView)
        contentsStaciView.addArrangedSubview(middleStackView)
        contentsStaciView.addArrangedSubview(bottomStackView)
        contentsStaciView.axis = .vertical
        contentsStaciView.distribution = .fill
        
        middleStackView.translatesAutoresizingMaskIntoConstraints = false
        middleStackView.addArrangedSubview(likesCountLabel)
        middleStackView.addArrangedSubview(commentCountLabel)
        middleStackView.axis = .horizontal
        middleStackView.distribution = .fillEqually
        
        likesCountLabel.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        likesCountLabel.textColor = UIColor.lightGray
        
        commentCountLabel.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        commentCountLabel.textColor = UIColor.lightGray
        
        
        bottomStackView.translatesAutoresizingMaskIntoConstraints = false
        bottomStackView.addArrangedSubview(likeButton)
        bottomStackView.addArrangedSubview(commentButton)
        bottomStackView.axis = .horizontal
        bottomStackView.distribution = .fillEqually
        
        likeButton.setTitle("Like", for: .normal)
        likeButton.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .bold)
        
        commentButton.setTitle("Comments", for: .normal)
        commentButton.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .bold)
        
        
        
    }
    
    func setConstraint() {
        
        //TopContentView
        NSLayoutConstraint.activate([
        
            NSLayoutConstraint(item: topContentView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 80), NSLayoutConstraint(item: topContentView, attribute: .top, relatedBy: .equal, toItem: contentView, attribute: .top, multiplier: 1, constant: 0), NSLayoutConstraint(item: topContentView, attribute: .leading, relatedBy: .equal, toItem: contentView, attribute: .leading, multiplier: 1, constant: 0), NSLayoutConstraint(item: topContentView, attribute: .trailing, relatedBy: .equal, toItem: contentView, attribute: .trailing, multiplier: 1, constant: 0)
        ])
        
        //UserProfileImageView
        NSLayoutConstraint.activate([
        
            NSLayoutConstraint(item: userProfileImageView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 32), NSLayoutConstraint(item: userProfileImageView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 32), NSLayoutConstraint(item: userProfileImageView, attribute: .leading, relatedBy: .equal, toItem: topContentView, attribute: .leading, multiplier: 1, constant: 16), NSLayoutConstraint(item: userProfileImageView, attribute: .top, relatedBy: .equal, toItem: topContentView, attribute: .top, multiplier: 1, constant: 8)
        ])
        
        //MoreButton
        
        NSLayoutConstraint.activate([
        
            NSLayoutConstraint(item: moreButton, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 17), NSLayoutConstraint(item: moreButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 17), NSLayoutConstraint(item: moreButton, attribute: .trailing, relatedBy: .equal, toItem: topContentView, attribute: .trailing, multiplier: 1, constant: -16), NSLayoutConstraint(item: moreButton, attribute: .top, relatedBy: .equal, toItem: moreButton, attribute: .top, multiplier: 1, constant: 10)
        
        ])
        
        //ProfilestackView
        
        NSLayoutConstraint.activate([
        
            NSLayoutConstraint(item: profileStackView, attribute: .leading, relatedBy: .equal, toItem: userProfileImageView, attribute: .trailing, multiplier: 1, constant: 17), NSLayoutConstraint(item: profileStackView, attribute: .trailing, relatedBy: .equal, toItem: moreButton, attribute: .leading, multiplier: 1, constant: -17), NSLayoutConstraint(item: profileStackView, attribute: .top, relatedBy: .equal, toItem: topContentView, attribute: .top, multiplier: 1, constant: 8)
        
        ])
        
        //contentLabel
        NSLayoutConstraint.activate([
        
        NSLayoutConstraint(item: contentsLabel, attribute: .leading, relatedBy: .equal, toItem: contentView, attribute: .leading, multiplier: 1, constant: 17), NSLayoutConstraint(item: contentsLabel, attribute: .trailing, relatedBy: .equal, toItem: contentView, attribute: .trailing, multiplier: 1, constant: -17), NSLayoutConstraint(item: contentsLabel, attribute: .top, relatedBy: .equal, toItem: topContentView, attribute: .bottom, multiplier: 1, constant: 0)
        
        ])
        
        //contentsStackView
        
        NSLayoutConstraint.activate([
        
            NSLayoutConstraint(item: contentsStaciView, attribute: .leading, relatedBy: .equal, toItem: contentView, attribute: .leading, multiplier: 1, constant: 0), NSLayoutConstraint(item: contentsStaciView, attribute: .trailing, relatedBy: .equal, toItem: contentView, attribute: .trailing, multiplier: 1, constant: 0), NSLayoutConstraint(item: contentsStaciView, attribute: .top, relatedBy: .equal, toItem: contentsLabel, attribute: .bottom, multiplier: 1, constant: 16), NSLayoutConstraint(item: contentsStaciView, attribute: .bottom, relatedBy: .equal, toItem: contentView, attribute: .bottom, multiplier: 1, constant: 0)
        
        ])
        
        //PostimageView
        
        NSLayoutConstraint.activate([
        
            NSLayoutConstraint(item: postImageView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 200)
        
        ])
        
        NSLayoutConstraint.activate([
        
            NSLayoutConstraint(item: bottomStackView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 40)
        
        ])
        
        // middlestackView
        
        NSLayoutConstraint.activate([
        
            NSLayoutConstraint(item: middleStackView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 40)
        
        ])
        
    }
    
    func setCellItem(item : UserPostModel) {
        
        contentsLabel.text = item.content
        userProfileLabel.text = item.username
        postDateLabel.text = item.postDate
        
        if let image = item.userProfileImage {
            userProfileImageView.image = image
        } else {
            userProfileImageView.image = UIImage(named: "user.png")
        }
        
        if let image = item.image {
            postImageView.isHidden = false
            postImageView.image = image
        } else {
            postImageView.isHidden = true
            postImageView.image = nil
        }
        
        commentCountLabel.text = String(item.comments)
        likesCountLabel.text = String(item.likes)
        
    }
}
