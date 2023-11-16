//MARK: ①セグエでResultViewControllerへ画面遷移ができるようにしよう
//MARK: ②prepareForSegueで値の受け渡しができるようにしよう
//MARK: ③ResultViewControllerでボタンを押した時にdismissで前の画面に戻ることができるようにしよう

import UIKit

class ViewController: UIViewController {

    @IBOutlet var timeLabel: UILabel!
    var timer: Timer!
    var count: Double = 10
    var score: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = Timer.scheduledTimer(timeInterval: 0.05, target: self, selector: #selector(up), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func tapButton() {
        
        score = score + 1
    }
    
    @objc func up() {
        
        count = count - 0.05
        timeLabel.text = String(format: "%.2f", count)
        
        if count <= 0 {
            timer.invalidate()
            
            // Segueを使って画面遷移する
            
        }
    }
    
    //画面遷移するときに呼ばれるメソッド
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 画面遷移先はResultViewController
        // 画面遷移時の値受け渡しの処理はここに書こう
        
    }

}

