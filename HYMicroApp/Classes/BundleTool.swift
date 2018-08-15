//
//  BundleTool.swift
//  HYMicroApp
//
//  Created by Honglin Yi on 8/13/18.
//

extension NSObject {
    func loadImage(_ image:String, _ bundle:String) -> UIImage? {
        let podBundle = Bundle(for: type(of: self))
        if let url = podBundle.url(forResource:bundle, withExtension: "bundle") {
            let bundle = Bundle(url: url)
            return UIImage(named: image, in: bundle, compatibleWith: nil)
        }
        return nil
    }
}

