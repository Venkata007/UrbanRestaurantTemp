//
//  SettingsViewController.swift
//  DinedooRestaurant
//
//  Created by Nagaraju on 24/10/18.
//  Copyright © 2018 casperonIOS. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var settingsTbl: UITableView!
    var menuList = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()

        menuList = ["Edit Profile","Change Password","Business Hours"]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // create a new cell if needed or reuse an old one MenuList
        let cell:MenuTableViewCell = tableView.dequeueReusableCell(withIdentifier: "MenuList", for: indexPath) as! MenuTableViewCell
        
        cell.titleLabel.text = self.menuList[indexPath.row]
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // ["Edit Profile","Change Password","Business Hours"]
        let value = menuList[indexPath.row]
        switch value {
        case "Edit Profile":
            let passwordVC = self.storyboard?.instantiateViewController(withIdentifier: "EditProfileVCID") as! EditProfileViewController
            self.navigationController?.pushViewController(passwordVC, animated: true)
            break
            
        case "Change Password":
            let passwordVC = self.storyboard?.instantiateViewController(withIdentifier: "ChangePasswordVCID") as! ChangePasswordViewController
            self.navigationController?.pushViewController(passwordVC, animated: true)
            break
            
        case "Business Hours":
            let businessHoursVC = self.storyboard?.instantiateViewController(withIdentifier: "BusinessHoursVCID") as! BusinessHoursViewController
            self.navigationController?.pushViewController(businessHoursVC, animated: true)
            break
            
        default:
            break
        }
    }
    
    @IBAction func backButtonClicked(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
