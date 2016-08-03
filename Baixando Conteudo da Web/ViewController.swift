//
//  ViewController.swift
//  Baixando Conteudo da Web
//
//  Created by Iuri Menin on 02/08/16.
//  Copyright © 2016 Iuri Menin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = NSURL(string: "http://www.stackoverflow.com")!

        webView.loadRequest(NSURLRequest(URL: url))
        
        /*
        let task = NSURLSession.sharedSession().dataTaskWithURL(url) { (data, response, error) -> Void in
            
            if let urlContet = data {
                
                let webContent = NSString(data: urlContet, encoding: NSUTF8StringEncoding)
               
                dispatch_async(dispatch_get_main_queue(), {
                
                    self.webView.loadHTMLString(String(webContent), baseURL: nil)
                })
                
            } else {
                
            }
        }
        
        task.resume()
        */

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

