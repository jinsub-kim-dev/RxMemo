//
//  MemoDetailViewController.swift
//  RxMemo
//
//  Created by Jinsub on 2022/07/10.
//

import UIKit
import RxSwift
import RxCocoa
import Action
import NSObject_Rx

class MemoDetailViewController: UIViewController, ViewModelBindableType {

    @IBOutlet weak var contentTableView: UITableView!
    @IBOutlet weak var deleteButton: UIBarButtonItem!
    @IBOutlet weak var editButton: UIBarButtonItem!
    @IBOutlet weak var shareButton: UIBarButtonItem!
    
    var viewModel: MemoDetailViewModel!
    
    func bindViewModel() {
        viewModel.title
            .drive(navigationItem.rx.title)
            .disposed(by: rx.disposeBag)
        
        viewModel.contents
            .bind(to: contentTableView.rx.items) { tableView, row, value in
                switch row {
                case 0:
                    let cell = tableView.dequeueReusableCell(withIdentifier: "contentCell")!
                    cell.textLabel?.text = value
                    return cell
                case 1:
                    let cell = tableView.dequeueReusableCell(withIdentifier: "dateCell")!
                    cell.textLabel?.text = value
                    return cell
                default:
                    fatalError()
                }
            }
            .disposed(by: rx.disposeBag)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
