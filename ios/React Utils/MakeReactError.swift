//
//  MakeReactError.swift
//  mrousavy
//
//  Created by Marc Rousavy on 15.01.21.
//  Copyright © 2021 mrousavy. All rights reserved.
//

import Foundation

func makeReactError(_ cameraError: String, cause: NSError?) -> [String: Any] {
  var causeDictionary: [String: Any]?
  if let cause = cause {
    causeDictionary = RCTMakeError(cameraError, nil, cause.userInfo)
  }
  return RCTMakeError(
    cameraError,
    nil,
    nil
  )
}

func makeReactError(_ cameraError: String) -> [String: Any] {
  return makeReactError(cameraError, cause: nil)
}
