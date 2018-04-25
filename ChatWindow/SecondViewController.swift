//
//  SecondViewController.swift
//  ChatWindow
//
//  Created by Subhadeep Pal on 25/04/18.
//  Copyright © 2018 Personal. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupInputView()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func setupInputView() {
        let chatBoxView = Bundle.main.loadNibNamed("ChatBoxView", owner: self, options: nil)?.first as! ChatBoxView
        chatBoxView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(chatBoxView)
        
        chatBoxView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        chatBoxView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        chatBoxView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
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

extension SecondViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Message.messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "chatCell", for: indexPath)
        cell.contentView.backgroundColor = UIColor.green
        return cell
    }
}
