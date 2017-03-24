//
//  ViewController.swift
//  Multi Tareas
//
//  Created by alumno on 3/23/17.
//
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var prgProgreso: UIProgressView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnProgreso(_ sender: UIButton) {
        
        let hilo = DispatchQueue(label: "pe.ourlimm.tareaPesada")
        
        let hilo_2 = DispatchQueue(label: "pe.ourlimm.tareaPesada")
        
        hilo.async {
            for i in 0...100 {
                print("a \(i)")
                
            }
        }
        
        hilo_2.async {
            for i in 0...100 {
                print("b \(i)")
                
            }
        }
        
        /*
         hilo.sync {
            for i in 0...100 {
                print("a \(i)")
            }
         }
         
         hilo.async {
            for i in 0...1000000 {
                print(i)
                self.prgProgreso.progress = (Float(i) / 100000.0)
            }
        }*/
        
        
        
    }

}

