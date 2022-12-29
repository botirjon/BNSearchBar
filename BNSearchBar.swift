//
//  BNSearchBar.swift
//  BNSearchBar
//
//  Created by Botirjon Nasridinov on 29/12/22.
//

import Foundation
import UIKit

open class BNSearchBar: UIControl {
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var searchTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private lazy var cancelButton: UIButton = {
        let button = UIButton()
        return button
    }()
    
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        initSearchBar()
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        initSearchBar()
    }
    
    private func initSearchBar() {
        addSubview(stackView)
        stackView.addArrangedSubview(searchTextField)
        stackView.arrangedSubviews.forEach { view in
            NSLayoutConstraint.activate([
                view.heightAnchor.constraint(equalTo: view.superview!.heightAnchor)
            ])
        }
        
        NSLayoutConstraint.activate([
            stackView.widthAnchor.constraint(equalTo: stackView.superview!.widthAnchor)
        ])
    }
    
    open override var intrinsicContentSize: CGSize {
        .init(width: UIScreen.main.bounds.size.width, height: 40)
    }
}
