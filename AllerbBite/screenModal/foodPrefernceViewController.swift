//
//  foodPrefernceViewController.swift
//  screenModal
//
//  Created by student on 25/04/24.
//

import UIKit

class foodPrefernceViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        foodPreferenceView()
    }
//    func foodPreferenceView(){
//        forLabel(val: "Are you Vegetarian or Non-Vegetarian")
//        addHorizontalStackView()
//        
//    }
//    func forLabel(val: String ){
//        let label = UILabel(frame: CGRect(x: 20, y: 70, width: view.frame.width - 40, height: 20))
//        label.text = val
//        label.textAlignment = .center
//        label.font = .systemFont(ofSize: 20)
//        view.addSubview(label)
//    }
//    func addHorizontalStackView() {
//        let horizontalStackView = UIStackView()
//        horizontalConfigureStackView(horizontalStackView)
//        
//        let verticalStackView = UIStackView()
//        verticalConfigureStackView(verticalStackView)
//        
//        for imageData in category {
//            if let image = UIImage(named: imageData.images) {
//                let imageView = UIImageView(image: image)
//                let subheadingLabel = UILabel()
//                subheadingLabel.text = imageData.subhead
//                subheadingLabel.textAlignment = .center
//                verticalStackView.addArrangedSubview(imageView)
//                verticalStackView.addArrangedSubview(subheadingLabel)
//            } else {
//                print("Error: Unable to load image named \(imageData.images)")
//            }
//        }
//        
//        let scrollView = UIScrollView()
//        scrollView.addSubview(verticalStackView)
//        horizontalStackView.addArrangedSubview(scrollView)
//        view.addSubview(horizontalStackView)
//        
//        // Adjust frame for horizontalStackView
//        horizontalStackView.translatesAutoresizingMaskIntoConstraints = false
//        horizontalStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
//        horizontalStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
//        horizontalStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
//    }
//
//    
//    
//    func horizontalConfigureStackView(_ stackView: UIStackView) {
//            stackView.axis = .horizontal
//            stackView.spacing = 10
//            stackView.alignment = .center
//            stackView.distribution = .fillEqually
//            stackView.frame = CGRect(x: 20, y: 150, width: view.frame.width - 40, height: 100)
//        }
//    func verticalConfigureStackView(_ stackView: UIStackView) {
//            stackView.axis = .vertical
//            stackView.spacing = 10
//            stackView.alignment = .center
//            stackView.distribution = .fillEqually
//        }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
