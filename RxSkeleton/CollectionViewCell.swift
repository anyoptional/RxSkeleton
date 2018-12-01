//
//  CollectionViewCell.swift
//  RxSkeleton
//
//  Created by Archer on 2018/12/1.
//  Copyright © 2018 Archer. All rights reserved.
//

import UIKit
import SkeletonView
import SnapKit

class CollectionViewCell: UICollectionViewCell {
    
    lazy var imgView: UIImageView = {
        let v = UIImageView()
        v.isSkeletonable = true
        v.layer.cornerRadius = 10
        v.clipsToBounds = true
        v.contentMode = .scaleAspectFill
        v.image = UIImage(named: "emoticon.png")
        contentView.addSubview(v)
        return v
    }()
    
    lazy var titleLabel: UILabel = {
        let v = UILabel()
        v.isSkeletonable = true
        v.numberOfLines = 0
        contentView.addSubview(v)
        return v
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        isSkeletonable = true
        
        imgView.snp.makeConstraints { (make) in
            make.left.equalTo(25)
            make.top.equalTo(20)
            make.size.equalTo(CGSize(width: 80, height: 80))
        }
        
        titleLabel.snp.makeConstraints { (make) in
            make.left.equalTo(imgView.snp.right).offset(20)
            make.top.equalTo(imgView)
            make.right.equalTo(-25)
            make.height.lessThanOrEqualTo(80)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
