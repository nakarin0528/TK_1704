import UIKit
import SnapKit

class TopVC: UIViewController {
    
    let joinBtn: UIButton = {
        let btn = UIButton()
        let label = UILabel()
        label.text = "join"
        label.font = UIFont(name:"ArialHebew", size:UIFont.labelFontSize)
        label.textColor = .white
        btn.backgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
        btn.addSubview(label)
        label.snp.makeConstraints {
            $0.centerX.centerY.equalToSuperview()
        }
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
        joinBtn.layer.cornerRadius = 20
        joinBtn.addTarget(self, action: #selector(joinDidTap), for: .touchUpInside)
        self.view.addSubview(joinBtn)
        
        //レイアウト
        joinBtn.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.bottom.equalToSuperview().inset(30)
            $0.height.equalTo(40)
            $0.width.equalTo(90)
        }
    }
    
    @objc func joinDidTap() {
        let nv = UINavigationController(rootViewController: SelectLiveVC())
        present(nv, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
