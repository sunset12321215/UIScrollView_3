//
//  ViewController.swift
//  UIScrollView_3
//
//  Created by CuongVX-D1 on 6/14/19.
//  Copyright © 2019 CuongVX-D1. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
    
    private struct Constant {
        static let minimumZoomScale: CGFloat = 0.5
        static let maximumZoomScale: CGFloat = 4
    }
    
    //  MARK: - Outlet
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    
    //  MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScrollView()
    }
    
    //  MARK: - Set up Views
    private func setupScrollView() {
        scrollView.delegate = self
        scrollView.minimumZoomScale = Constant.minimumZoomScale
        scrollView.maximumZoomScale = Constant.maximumZoomScale
    }
    
    //  MARK: - Action
    @IBAction func zoomInOut(_ sender: UIButton) {
        let zoomScale: CGFloat = sender.tag == 0 ? 0.5 : -0.5
        scrollView.zoomScale += zoomScale
    }
}

extension ViewController: UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
}
