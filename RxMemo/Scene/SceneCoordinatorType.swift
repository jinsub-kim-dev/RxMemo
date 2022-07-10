//
//  SceneCoordinatorType.swift
//  RxMemo
//
//  Created by Jinsub on 2022/07/10.
//

import Foundation
import RxSwift

protocol SceneCoordinatorType {
    @discardableResult
    func transition(to scene: Scene, using style: TransitionStyle, animated: Bool) -> Completable
    
    @discardableResult
    func close(animated: Bool) -> Completable
}
