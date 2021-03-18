import UIKit



class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        moveToThirdView()
        moveToSecondView()
        title = "First View"
    }
    
    func moveToThirdView(){
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Third", style: .plain, target: self, action: #selector(enterFunction))
    }
    
    @objc func enterFunction(){
        navigationController?.pushViewController(ThirdViewController(), animated: true)
    }
    
    func moveToSecondView()
    {
        let moveToSecondViewButton:UIButton = UIButton(frame: CGRect(x: 40, y: 250, width: 250, height: 150))
        view.backgroundColor = .blue
        moveToSecondViewButton.setTitle("Click here for second view", for: .normal)
        moveToSecondViewButton.addTarget(self, action: #selector(presentationForSecondView), for: .touchUpInside)
        let vc = SecondViewController()
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .flipHorizontal
        view.addSubview(moveToSecondViewButton)
    }
    
    @objc func presentationForSecondView(){
        navigationController?.pushViewController(SecondViewController(), animated: true)
    }
    
}

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        submitForThirdView()
    }
    
    func submitForThirdView() {
        
        let submitForThirdViewButton:UIButton = UIButton(frame: CGRect(x: 40, y: 250, width: 250, height: 150))
        
        view.backgroundColor = .green
        title = "Second View"
        submitForThirdViewButton.setTitle("Click here for Third View", for: .normal)
        submitForThirdViewButton.addTarget(self, action: #selector(navigationForThirdView), for: .touchUpInside)
         navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(exitFunction))
        view.addSubview(submitForThirdViewButton)
        
    }
    
    @objc func exitFunction(){
        navigationController?.pushViewController(ViewController(), animated: true)
    }
    
    @objc func navigationForThirdView(){
        navigationController?.pushViewController(ThirdViewController(), animated: true)
        
    }
    
}

class ThirdViewController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        title = "Third View"
        exitToFirstView()
    }
    
    func exitToFirstView()
    {
          navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Dismiss", style: .plain, target: self, action: #selector(exitFunction))
        
    }
    
    @objc func exitFunction() {
        navigationController?.pushViewController(ViewController(), animated: true)
    
    
}
    


}
