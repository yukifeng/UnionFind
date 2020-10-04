//
//  ViewController.swift
//  UnionFind
//
//  Created by 段峰 on 2020/10/1.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let uf = UnionFindObj<NSInteger>()
        uf.makeSet(e: 1)
        uf.makeSet(e: 2)
        uf.union(e1: 1, e2: 2)
    }


}

