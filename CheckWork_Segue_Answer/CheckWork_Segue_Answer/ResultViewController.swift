import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var resultLabel: UILabel!
    
    //変数を定義する
    var score: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //ラベルの表示を変更する
        resultLabel.text = String(score)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func back() {
        //前の画面に戻る
        self.dismiss(animated: true, completion: nil)
    }
}

