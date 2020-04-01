//
//  ViewController.swift
//  UISearchBarSample
//
//  Created by satoshi.marumoto on 2020/04/01.
//  Copyright © 2020 satoshi.marumoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let searchBar = UISearchBar()
        searchBar.frame = CGRect(x: 0,y: 0,width: 400,height: 100)
        searchBar.delegate = self
        searchBar.text = "入力ワード"
        searchBar.prompt = "サーチバーのタイトル"
        searchBar.placeholder = "入力してください"
        searchBar.showsCancelButton = true
        searchBar.showsBookmarkButton = false
        searchBar.keyboardType = UIKeyboardType.default
        searchBar.searchBarStyle = UISearchBar.Style.default
        searchBar.barStyle = UIBarStyle.default
        searchBar.tintColor = UIColor.gray
        view.addSubview(searchBar)
    }
    
    // called when text changes (including clear)
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String){
        
    }
    // 入力に変更があった際に呼び出されるメソッド
    func searchBar(_ searchBar: UISearchBar, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool {
        return true
    }
    // フォーカスが当たる際に呼び出されるメソッド
    func searchBarShouldBeginEditing(_ searchBar: UISearchBar) -> Bool {
        return true
    }
    // フォーカスがあたった際に呼び出されるメソッド
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        
    }
    // フォーカスが外れる際に呼び出されるメソッド
    func searchBarShouldEndEditing(_ searchBar: UISearchBar) -> Bool {
        return true
    }
    // フォーカスが外れた際に呼び出されるメソッド
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        
    }
    // called when bookmark button pressed.
    func searchBarBookmarkButtonClicked(_ searchBar: UISearchBar) {
        
    }
    // キャンセルボタンタップ時に呼び出されるメソッド
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
        searchBar.setShowsCancelButton(true, animated: true)
    }
    // 検索キータップ時に呼び出されるメソッド
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
        searchBar.setShowsCancelButton(true, animated: true)
    }
    // called when search results button pressed
    func searchBarResultsListButtonClicked(_ searchBar: UISearchBar) {
        
    }
    
    func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
        
    }

}

extension ViewController:UISearchBarDelegate {
    
}

