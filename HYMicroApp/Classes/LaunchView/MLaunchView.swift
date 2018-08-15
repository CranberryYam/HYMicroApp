//
//  MLaunchView.swift
//  RelaxApp2
//
//  Created by Honglin Yi on 3/4/18.
//  Copyright © 2018 Honglin Yi. All rights reserved.
//

import UIKit

class MLaunchView: UIView {
    
    //MARK: UI
    private lazy var contentView: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 127))
        self.addSubview(view)
        return view
    }()
    private lazy var imageV:UIImageView = {
        let view = UIImageView(frame: CGRect(x: 127, y: 11, width: 66, height: 66))
        self.contentView.addSubview(view)
        return view
    }()
    private lazy var nameL:UILabel = {
        let view = UILabel(frame: CGRect(x: 0, y: 93, width: 320, height: 24))
        view.textAlignment = .center;
        self.contentView.addSubview(view)
        return view
    }()
    
    
    //MARK: API
    func setDatas(imageName:String?,title:String?) {
        if let title = title { nameL.text = title }
        guard let imageName = imageName else {return}
        guard let image = self.loadImage(imageName,"HYMicroApp") else {return}
        self.imageV.image = image
    }

    func dismiss() {
        UIView.animate(withDuration: 0.3, animations: {
            self.imageV.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            self.nameL.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        }) { _ in
            self.alpha = 0.5
        }
        UIView.animate(withDuration: 0.1, delay: 0.3, animations:  {
            self.alpha = 0.0
        }){ _ in
            self.removeFromSuperview()
        }
    }
    

    //MARK: Init
    override func awakeFromNib() {
        super.awakeFromNib()
        sharedInit()
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        sharedInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        sharedInit()
    }
    func sharedInit() {
        self.backgroundColor = .white
        self.contentView.center = self.center
    }
}
