//
//  ViewController.swift
//  varticalCustomCell
//
//  Created by Eriko Ichinohe on 2017/12/04.
//  Copyright © 2017年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var articles: [(title: String, userName:String)] = []
    
    @IBOutlet weak var varticalTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.varticalTable.register(UINib(nibName: "customCell", bundle: nil), forCellReuseIdentifier: "Cell")
        
        self.varticalTable.estimatedRowHeight = 90
        self.varticalTable.rowHeight = UITableViewAutomaticDimension
        
        articles = [
            (title: "私わたくしはその人を常に先生と呼んでいた。だからここでもただ先生と書くだけで本名は打ち明けない。", userName: "夏目漱石"),
            (title: "この書の世に出づるにいたりたるは、函館にある秦慶治氏、及び信濃にある神津猛氏のたまものなり。労作終るの日にあたりて、このものがたりを二人の恩人のまへにさゝぐ。", userName: "島崎藤村"),
            (title: "散文に二種あると考へてゐるが、一を小説、他を作文とかりに言つておく。", userName: "坂口安吾"),
            (title: "機敏な晩熟児といふべき此の男が、現に存するのだから僕は機敏な晩熟児が如何にして存るママかその様を語らうと思ふ。", userName: "中原中也")
        ]

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: customCell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! customCell
        cell.varticalLabel.text = articles[indexPath.row].title
        cell.layoutIfNeeded()
        return cell
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

