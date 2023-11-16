import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var resultLabel: UILabel!
    
    //変数を定義しよう
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //ラベルの表示を変更しよう
        resultLabel.text = "0"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func back() {
        //前の画面に戻る
    }
}

