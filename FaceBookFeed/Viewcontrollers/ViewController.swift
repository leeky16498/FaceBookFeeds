//
//  ViewController.swift
//  FaceBookFeed
//
//  Created by Kyungyun Lee on 17/10/2021.
//

import UIKit

class ViewController: UIViewController {
    
    let tableView = UITableView()
    var userPost : [UserPostModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setItem()
        setView()
        setConstraint()
      
    }
    
    
    func setItem() {
        
        var user = UserPostModel()
        user.username = "홍길동"
        user.title = "여기는 제목입니다"
        user.content = "여기는 내용입니다."
        user.likes = 24
        user.postDate = "방금전"
        user.comments = 5
        userPost.append(user)
        
        user = UserPostModel()
        user.username = "슬라임"
        user.title = "오늘도 말랑말랑"
        user.content = "말랑말랑하다."
        user.likes = 8080
        user.postDate = "오늘"
        user.comments = 5
        user.image = UIImage(named: "slime.png")
        userPost.append(user)
        
    }

    func setConstraint() {
        NSLayoutConstraint.activate([
        
            NSLayoutConstraint(item: tableView, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 0), NSLayoutConstraint(item: tableView, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: 0), NSLayoutConstraint(item: tableView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 0), NSLayoutConstraint(item: tableView, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: 0)
        
        ])
        
        
    }
    
    func setView() {
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(UserFeedcell.self, forCellReuseIdentifier: "UserFeedCell")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = UITableView.automaticDimension
        
    }

}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userPost.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserFeedCell", for : indexPath)as! UserFeedcell
        cell.setCellItem(item: userPost[indexPath.row])
        return cell
    }
    
    

}
