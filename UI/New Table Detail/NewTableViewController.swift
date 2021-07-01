//
//  NewTableViewController.swift
//  UI
//
//  Created by Asad on 01/07/2021.
//

import UIKit

class NewTableViewController: UIViewController {

    var studentSiblings = [NewSiblings(title: "Asad Malik", kind: "2nd Grade", image: UIImage(named: "kidimage")),NewSiblings(title: "Khan Sahib", kind: "3rd Grade", image: UIImage(named: "kidimage1")),NewSiblings(title: "ShafiUllah  Khan", kind: "5th Grade", image: UIImage(named: "kidimage2")), NewSiblings(title: "Ali Zafar", kind: "2nd Grade", image: UIImage(named: "kidimage3"))]
    
    
    
    
    var credentialsViewModel = [CredentialsModal(kind: "Email", text: "iamasadmalik210@gmail.com", kindImage: UIImage(named: "email")?.withTintColor(.systemGray, renderingMode: .automatic)),CredentialsModal(kind: "Phone ", text: "+9203002104445", kindImage: UIImage(named: "phone")?.withTintColor(.systemGray, renderingMode: .automatic)),CredentialsModal(kind: "Address", text: "Mo1hallah Loharbanda, Mansehra, Pakistan", kindImage: UIImage(named: "location1")?.withTintColor(.systemGray, renderingMode: .automatic))]
    
    private let myTableView: UITableView = {
        let tableView = UITableView(frame: .zero,style: .grouped)
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        tableView.register(CredentialsTableViewCell.self, forCellReuseIdentifier: CredentialsTableViewCell.identifier)
        
        tableView.register(NewSiblingsTableViewCell.self, forCellReuseIdentifier: NewSiblingsTableViewCell.identifier)
        
        tableView.register(TextTableViewCell.self, forCellReuseIdentifier: TextTableViewCell.identifier)


        tableView.backgroundColor = .systemBackground
        
        
        
        return tableView
      
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Profile"
        view.addSubview(myTableView)
        myTableView.delegate = self
        myTableView.dataSource = self
        
        
        
        myTableView.separatorStyle = .none
        
        myTableView.tableHeaderView = MyTableHeaderView(frame: CGRect(x: 0, y: 0, width: view.width, height: view.width/3))


    }
    

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        myTableView.frame = view.bounds
        
        
    }

}


extension NewTableViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        
        if section == 0 {
            return credentialsViewModel.count
        }
        if section == 1{
            return studentSiblings.count

        }
        else if section == 2{
            return studentSiblings.count
        }
        
       return 1
        
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        
    
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
      print(indexPath.section)
        
        switch indexPath.section {
        case 0:
            
            guard let cell = myTableView.dequeueReusableCell(withIdentifier: CredentialsTableViewCell.identifier) as? CredentialsTableViewCell else {
                print("Error fetching cell")
                fatalError()
            }
            cell.configure(credentialsViewModel[indexPath.row])
            return cell
            
        case 1:
            
            guard let cell = myTableView.dequeueReusableCell(withIdentifier: NewSiblingsTableViewCell.identifier) as? NewSiblingsTableViewCell else {
                print("Error fetching cell")
                fatalError()
            }
            cell.configure(studentSiblings[indexPath.row])

            return cell
            
            
        case 2:
            
            guard let cell = myTableView.dequeueReusableCell(withIdentifier: NewSiblingsTableViewCell.identifier) as? NewSiblingsTableViewCell else {
                print("Error fetching cell")
                fatalError()
            }
            cell.configure(studentSiblings[indexPath.row])

            return cell
            


        case 3:
            
            guard let cell = myTableView.dequeueReusableCell(withIdentifier: TextTableViewCell.identifier) as? TextTableViewCell else {
                print("Error fetching cell")
                fatalError()
            }
            cell.titleLabel.text = "1883,Linocod Avenue,Michigan,USA"
            return cell
            
        case 4:
            
            guard let cell = myTableView.dequeueReusableCell(withIdentifier: TextTableViewCell.identifier) as? TextTableViewCell else {
                print("Error fetching cell")
                fatalError()
            }
            cell.titleLabel.text = "The quick brown fox jumps over the lazy dog"
            cell.myImageView.image = nil
            return cell
            
            
            
            
        default:
            return UITableViewCell()
        }
        
       
        
        
       
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 70
    }
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
////
////        switch section {
////        case 1 :
////            return "Children"
////        case 2 :
////            return "Siblings"
////        case 3 :
////            return "Dismissal Notes"
////        default:
////            return ""
////        }
//        return ""
//    }
//
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        if section == 0 {
            
                    let v = UIView(frame: CGRect(x: 0, y:0, width: tableView.frame.width, height: 30))
                    v.backgroundColor = .systemBackground
                    let label = UILabel(frame: CGRect(x: 8.0, y: 4.0, width: v.bounds.size.width - 16.0, height: v.bounds.size.height - 8.0))
                    label.autoresizingMask = [.flexibleWidth, .flexibleHeight]
                    label.text = ""
            label.textColor = .secondaryLabel

                    return v
                }
            else if section == 1 {
                let v = UIView(frame: CGRect(x: 0, y:0, width: tableView.frame.width, height: 30))
                v.backgroundColor = .systemBackground
                let label = UILabel(frame: CGRect(x: 8.0, y: 4.0, width: v.bounds.size.width - 16.0, height: v.bounds.size.height - 8.0))
                label.autoresizingMask = [.flexibleWidth, .flexibleHeight]
                label.text = "Children"
                v.addSubview(label)
                label.font = UIFont.systemFont(ofSize: 17,weight: .medium)
                label.textColor = .secondaryLabel

                return v
            }
        
        
        
        
        else if section == 2 {
                let v = UIView(frame: CGRect(x: 0, y:0, width: tableView.frame.width, height: 30))
                v.backgroundColor = .systemBackground
                let label = UILabel(frame: CGRect(x: 8.0, y: 4.0, width: v.bounds.size.width - 16.0, height: v.bounds.size.height - 8.0))
                label.autoresizingMask = [.flexibleWidth, .flexibleHeight]
                label.text = "Siblings"
                v.addSubview(label)
            label.font = UIFont.systemFont(ofSize: 17,weight: .medium)
            label.textColor = .secondaryLabel

                return v
            }
        
        
        
        else if section == 3 {
            let v = UIView(frame: CGRect(x: 0, y:0, width: tableView.frame.width, height: 30))
            v.backgroundColor = .systemBackground
            let label = UILabel(frame: CGRect(x: 8.0, y: 4.0, width: v.bounds.size.width - 16.0, height: v.bounds.size.height - 8.0))
            label.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            label.text = "Dismissal Notes"
            label.textColor = .secondaryLabel
            label.font = UIFont.systemFont(ofSize: 17,weight: .medium)
            v.addSubview(label)
            return v
        }
        
            // not the 3rd section, so don't return a view
            return nil
        }
    
    
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
     func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        // UIView with darkGray background for section-separators as Section Footer
        let v = UIView(frame: CGRect(x: 20, y:0, width: tableView.frame.width - 40, height: 1))
        
        let newV = UIView(frame: CGRect(x: 20, y:0, width: tableView.frame.width - 40, height: 1))
        newV.backgroundColor = .lightGray
        v.backgroundColor = .systemBackground
        v.addSubview(newV)
        return v
    }

     func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        // Section Footer height
        return 1.0
    }
    
    
    }
