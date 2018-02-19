//
//  signVC.swift
//  Mersgram
//
//  Created by Mert Ahmet Yiğit on 18.02.2018.
//  Copyright © 2018 Mert Yiğit. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class signVC: UIViewController {

    
    
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }

    @IBAction func girisAct(_ sender: Any) {
        if emailText.text != "" && passwordText.text != "" {
            
            Auth.auth().signIn(withEmail: emailText.text!, password: passwordText.text!, completion: { (user, error) in
                
                if error != nil {
                    let alert = UIAlertController(title: "Hata", message: error?.localizedDescription, preferredStyle: UIAlertControllerStyle.alert)
                    let okButton = UIAlertAction(title: "Anladım", style: UIAlertActionStyle.cancel, handler: nil)
                    
                    alert.addAction(okButton)
                    self.present(alert, animated: true, completion: nil)
                } else{
                    
                    UserDefaults.standard.set(user!.email, forKey: "user")
                    UserDefaults.standard.synchronize()
                    
                    let delegate : AppDelegate = UIApplication.shared.delegate as! AppDelegate
                    
                    delegate.rememberLogin()
                    
                }
            })
            
        } else {
            let alert = UIAlertController(title: "Hata", message: "E-Mail veya Şifreniz Boş Bırakılamaz", preferredStyle: UIAlertControllerStyle.alert)
            let okButton = UIAlertAction(title: "Anladım", style: UIAlertActionStyle.cancel, handler: nil)
            
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    
    
    
    @IBAction func kayitAct(_ sender: Any) {
        if emailText.text != "" && passwordText.text != "" {
            
            Auth.auth().createUser(withEmail: emailText.text!, password: passwordText.text!, completion: { (user, error) in
                
                if error != nil {
                    let alert = UIAlertController(title: "Hata", message: error?.localizedDescription, preferredStyle: UIAlertControllerStyle.alert)
                    let okButton = UIAlertAction(title: "Anladım", style: UIAlertActionStyle.cancel, handler: nil)
                    
                    alert.addAction(okButton)
                    self.present(alert, animated: true, completion: nil)
                } else {
                    
                    UserDefaults.standard.set(user!.email, forKey: "user")
                    UserDefaults.standard.synchronize()
                    
                    let delegate : AppDelegate = UIApplication.shared.delegate as! AppDelegate
                    
                    delegate.rememberLogin()
                }
                
                
                
            })
        } else {
            let alert = UIAlertController(title: "Hata", message: "E-Mail veya Şifreniz Boş Bırakılamaz", preferredStyle: UIAlertControllerStyle.alert)
            let okButton = UIAlertAction(title: "Anladım", style: UIAlertActionStyle.cancel, handler: nil)
            
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
            
            
        }
        
    }
    }
    

