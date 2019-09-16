//
//  ViewController.swift
//  Frases do Dia
//
//  Created by Treinamento on 9/16/19.
//  Copyright © 2019 julioCesarASantos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var dicionario: [String: Int] = ["Chave": 2, "Chave2": 3]
    
    @IBOutlet var frasesLabel: UILabel!
    
    //Instânciando o model para ter acesso ao array contendo as frases.
    var fm = FrasesModel()
    var indiceArray: [String] = [""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        indiceArray.append("b102")
        
        for var indice: Int in 0..<5 {
            indiceArray.append("Número: \(indice)")
            let num = indiceArray.count - 1
            print(indiceArray[num])
            
            
        }
        
    }
    
    //Botão que efetua o cálculo de numeros aleatórios e atribuiu texto a label de frases.
    @IBAction func botaoNovaFrase(_ sender: Any) {
        let quantidadeFrases = UInt32(fm.frasesArray.count - 1)
        let numeroRandom = Int(arc4random_uniform(quantidadeFrases))
        frasesLabel.text = fm.frasesArray[numeroRandom]
    }
    
}

