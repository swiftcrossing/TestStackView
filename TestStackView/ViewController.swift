//
//  ViewController.swift
//  TestStackView
//
//  Created by ノーランワーナー on 2015/11/09.
//  Copyright © 2015年 test. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let viewModel = ViewModel(5)
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 115
    }
}

extension ViewController : ViewCellDelegate {
    func pressedInfoButton(viewCell: ViewCell) {
        print("DataObject: \(viewCell.dataObject)")
    }
    
    func pressedAction1Button(viewCell: ViewCell) {
        print("DataObject: \(viewCell.dataObject)")
    }
    
    func pressedAction2Button(viewCell: ViewCell) {
        print("DataObject: \(viewCell.dataObject)")
    }
}

extension ViewController : UITableViewDataSource {
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.dataObjectArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let viewCell = tableView.dequeueReusableCellWithIdentifier("ViewCell") as! ViewCell
        viewCell.delegate = self
        viewCell.setContents(viewModel.dataObjectArray[indexPath.row])
        
        return viewCell
    }
}

extension ViewController : UITableViewDelegate {
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
}
