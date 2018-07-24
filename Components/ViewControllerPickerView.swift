//
//  ViewControllerPickerViewController.swift
//  Components
//
//  Created by labmacmini12 on 24/07/2018.
//  Copyright © 2018 cursoIOS. All rights reserved.
//

import UIKit

class ViewControllerPickerView: UIViewController,
UIPickerViewDelegate,
UIPickerViewDataSource{
    
    
    @IBOutlet weak var vrPicker: UIPickerView!
    
    //datasets da classe
    var paradigmas = ["Estruturadas", "Orientadas"]
    var vetLinguagens = [["C","Pascal"],["Java","Swift","C Sharp"]]

    //implementacao dos metodos da classe
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2 //quantos componetnes o seu elementos irá criar
    }
    
    //define quantas linhas teremos em cada componente
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        //trata o componente zero(linguagens)
        if(component==0){
            return paradigmas.count
        }else{
            let linha = pickerView.selectedRow(inComponent: 0)
            return vetLinguagens[linha].count
        }
    }
    
    //preenche o nome de casa linha
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if(component==0){
            return paradigmas[row]
        }else{
            let linha = pickerView.selectedRow(inComponent: 0)
            return vetLinguagens[linha][row]
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        vrPicker.selectRow(0, inComponent: 0, animated: false)
        
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
