//
//  CameraQueues.swift
//  VisionCamera
//
//  Created by Marc Rousavy on 22.03.21.
//  Copyright © 2021 mrousavy. All rights reserved.
//

import Foundation

@objc
public class ArViewerCameraQueues: NSObject {
  /// The serial execution queue for the camera preview layer (input stream) as well as output processing of photos.
  @objc public static let cameraQueue = DispatchQueue(label: "pqt/VisionCamera.main",
                                                      qos: .userInteractive,
                                                      attributes: [],
                                                      autoreleaseFrequency: .inherit,
                                                      target: nil)

  /// The serial execution queue for output processing of videos for recording.
  @objc public static let videoQueue = DispatchQueue(label: "pqt/VisionCamera.video",
                                                     qos: .userInteractive,
                                                     attributes: [],
                                                     autoreleaseFrequency: .inherit,
                                                     target: nil)

  /// The serial execution queue for output processing of videos for frame processing.
  @objc public static let frameProcessorQueue = DispatchQueue(label: "pqt/VisionCamera.frame-processor",
                                                              qos: .userInteractive,
                                                              attributes: [],
                                                              autoreleaseFrequency: .inherit,
                                                              target: nil)

  /// The serial execution queue for output processing of audio buffers.
  @objc public static let audioQueue = DispatchQueue(label: "pqt/VisionCamera.audio",
                                                     qos: .userInteractive,
                                                     attributes: [],
                                                     autoreleaseFrequency: .inherit,
                                                     target: nil)
}
