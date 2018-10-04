//
//  ViewController.swift
//  TouchWarsGame
//
//  Created by Kub on 4.10.2018.
//  Copyright © 2018 Kub. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var player1score:Int = 0
    var player2score:Int=0
    var sonuc:String=""
    var totalscore:Int=10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func btnPlayer1(_ sender: Any) {
        player1score=player1score+1
        player2score=player2score-1
        if(player1score==totalscore){
            self.sonuc="Player 1 kazandı"
          performSegue(withIdentifier: "sonuc", sender: self)
        }
        

    }
    
    @IBAction func btnPlayer2(_ sender: Any) {
        player1score=player1score-1
        player2score=player2score+1
        if(player2score==totalscore){
            self.sonuc="Player 2 kazandı"
            performSegue(withIdentifier: "sonuc", sender: self)
        }
        
    }
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is SecondViewController
        {
            let vc = segue.destination as? SecondViewController
            vc?.sonucc=sonuc
        }
    }

    
}

