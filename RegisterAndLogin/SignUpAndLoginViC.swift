//
//  SignUpAndLogin.swift
//  RegisterAndLogin
//
//  Created by Mac on 8/28/20.
//  Copyright © 2020 beshoy tharwat. All rights reserved.
//

import UIKit

class SignUpAndLoginVC: UIViewController {
    private lazy var segmentC = GFSegmentedControl(item: item)
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .white
        cv.translatesAutoresizingMaskIntoConstraints = false
        //        cv.collectionViewLayout.invalidateLayout()
        cv.dataSource = self
        cv.delegate = self
        cv.isPagingEnabled = true
        return cv
    }()
    
    let item = ["SignUp","Login"]
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        layout()
        registerCells()
        segmentC.addTarget(self, action: #selector(segmentValueChange(_:)), for: .valueChanged)
    }
    
    private func layout() {
        
        let topContainerView = UIView()
        topContainerView.backgroundColor = .white
        view.addSubview(topContainerView)
        topContainerView.translatesAutoresizingMaskIntoConstraints = false
        topContainerView.addSubview(segmentC)
        let secondContainer = UIView()
        secondContainer.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(secondContainer)
        secondContainer.addSubview(collectionView)
        
        NSLayoutConstraint.activate([
            topContainerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 5),
            topContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            topContainerView.heightAnchor.constraint(equalToConstant: 50),
            segmentC.leadingAnchor.constraint(equalTo: topContainerView.leadingAnchor, constant: 30),
            segmentC.trailingAnchor.constraint(equalTo: topContainerView.trailingAnchor, constant: -30),
            segmentC.topAnchor.constraint(equalTo: topContainerView.topAnchor, constant: 2),
            segmentC.bottomAnchor.constraint(equalTo: topContainerView.bottomAnchor, constant: -2),
            secondContainer.topAnchor.constraint(equalTo: topContainerView.bottomAnchor, constant: 5),
            secondContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            secondContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            secondContainer.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            collectionView.topAnchor.constraint(equalTo: secondContainer.topAnchor, constant: 5),
            collectionView.leadingAnchor.constraint(equalTo: secondContainer.leadingAnchor, constant: 10),
            collectionView.trailingAnchor.constraint(equalTo: secondContainer.trailingAnchor, constant: -10),
            collectionView.bottomAnchor.constraint(equalTo: secondContainer.bottomAnchor, constant: -5)
            ])
        
        
        
    }
    
    
    fileprivate func registerCells() {
        collectionView.register(SignupCell.self, forCellWithReuseIdentifier: SignupCell.signupCellId)
        collectionView.register(LoginCell.self, forCellWithReuseIdentifier: LoginCell.loginCellId)
    }
    
    
}
//MARK:- segment target
extension SignUpAndLoginVC  {
    
    
    @objc func segmentValueChange(_ segmentController: UISegmentedControl){
        switch segmentController.selectedSegmentIndex {
        case 0:
            
            navigationItem.title = "Signup"
            let indexpath = IndexPath(item: 0, section: 0)
            collectionView.scrollToItem(at: indexpath, at: .centeredHorizontally, animated: true)
        case 1:
            navigationItem.title = "Login"
            let indexpath = IndexPath(item: 1, section: 0)
            collectionView.scrollToItem(at: indexpath, at: .centeredHorizontally, animated: true)
        default:
            break
        }
        
    }
}

// MARk:- collection view

extension SignUpAndLoginVC : UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return item.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.item == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SignupCell.signupCellId, for: indexPath)
            navigationItem.title = "Signup"
            segmentC.selectedSegmentIndex = 0
            return cell
            
        }else {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: LoginCell.loginCellId, for: indexPath)
            navigationItem.title = "Login"
            segmentC.selectedSegmentIndex = 1
            return cell
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let w = scrollView.frame.width
        let page = (scrollView.contentOffset.x / w)
        segmentC.selectedSegmentIndex = Int(page)
        navigationItem.title = segmentC.titleForSegment(at: Int(page))
    }
    
}
