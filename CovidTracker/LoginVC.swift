//
//  LoginVC.swift
//  CovidTracker
//
//  Created by KT on 2020/9/6.
//  Copyright © 2020 The Riders. All rights reserved.
//

import UIKit
import GoogleSignIn

class LoginVC: UIViewController, GIDSignInDelegate
{

    override func viewDidLoad()
	{
        super.viewDidLoad()

		GIDSignIn.sharedInstance().presentingViewController = self
		GIDSignIn.sharedInstance().signIn()
		
		GIDSignIn.sharedInstance().delegate = self
    }
	
	func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!)
	{
		if (error == nil)
		{
			performSegue(withIdentifier: "LoggedIn", sender: nil)
		}
		else
		{
			print("\(error.localizedDescription)")
		}
	}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
