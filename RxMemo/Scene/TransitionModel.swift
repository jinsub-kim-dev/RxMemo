//
//  TransitionModel.swift
//  RxMemo
//
//  Created by Jinsub on 2022/07/10.
//

import Foundation

enum TransitionStyle {
    case root
    case push
    case modal
}

enum TransitionError: Error {
    case navigationControllerMissing
    case cannotPop
    case unknown
}
