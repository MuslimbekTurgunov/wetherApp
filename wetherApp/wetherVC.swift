//
//  wetherVC.swift
//  wetherApp
//
//  Created by Macbook on 07/06/22.
//

import UIKit
import SnapKit
import SDWebImage

class wetherVC: UIViewController {
    
    let cityNameLbl: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.textAlignment = .center
        lbl.font = .systemFont(ofSize: 16, weight: .semibold)
        return lbl
    }()
    
    
    let containerView: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.layer.cornerRadius = 12
        view.backgroundColor = .gray
        return view
    }()
  
    
    let currentLbl: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .cyan
        lbl.textAlignment = .center
        lbl.font = .systemFont(ofSize: 16, weight: .semibold)
        return lbl
    }()
    
    
    let imageView: UIImageView = {
        let imgView = UIImageView()
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    
    let gradusLbl: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .green
        lbl.textAlignment = .center
        lbl.font = .systemFont(ofSize: 16, weight: .semibold)
        return lbl
    }()

    let cityNameTF: UITextField = {
        let field = UITextField()
        field.borderStyle = .line
        field.placeholder = "in city name"
        field.textColor = .black
        field.textAlignment = .left
        return field
    }()
    
    let goBtn: UIButton = {
        let next = UIButton()
        next.setImage(UIImage(systemName: "arrow.right"), for: .normal )
        next.title(for: .normal)
        next.backgroundColor = .yellow
        next.tintColor = .blue
        next.titleLabel?.font = .systemFont(ofSize: 15, weight: .semibold)
        next.addTarget(self, action: #selector(goBtnTapped), for: .touchUpInside)
        return next
    }()
    
    
    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .secondarySystemBackground
        tableView.isScrollEnabled = true
        tableView.separatorStyle = .none
        tableView.showsVerticalScrollIndicator = false
        tableView.showsHorizontalScrollIndicator = false
        
        return tableView
    }()
    
    let myView: UIView = {
        let myView = UIView()
        myView.backgroundColor = .systemGray4
        return myView
    }()
    
    var stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.alignment = .fill
        stack.spacing = 8
        return stack
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .green
        setUpConstrains()
        
        
    }
    
    
    
    @objc func goBtnTapped() {
        print("Go")
    }

    
    func setUpConstrains() {
        
        self.view.addSubview(myView)
        myView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
     
        myView.addSubview(cityNameLbl)
        
        cityNameLbl.snp.makeConstraints { make in
            make.right.equalTo(myView.snp.right).inset(30)
            make.left.equalTo(myView.snp.left).inset(30)
            make.top.equalTo(myView.snp.top).inset(40)
          
        }
        
        
        
        
        
    }


}
