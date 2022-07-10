//
//  MemoListViewModel.swift
//  RxMemo
//
//  Created by Jinsub on 2022/07/10.
//

import Foundation
import RxSwift
import RxCocoa

class MemoListViewModel: CommonViewModel {

    var memoList: Observable<[Memo]> {
        return storage.memoList()
    }
}
