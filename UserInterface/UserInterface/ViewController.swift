import UIKit

class ViewController : UIViewController , UITableViewDataSource ,UITableViewDelegate {
    
    @IBOutlet var tableView : UITableView!
    let data = ["Individual Leaderboard","Team Leaderboard","Badges","My Details","Report An Issue","About Rapl","Logout" ]
    let Indicator = [">",">",">",">",">",">",">"]
    let pics : [UIImage] = [#imageLiteral(resourceName: "istockphoto-1152889195-612x612"),#imageLiteral(resourceName: "download-1"),#imageLiteral(resourceName: "download (1)"),#imageLiteral(resourceName: "download (3)"),#imageLiteral(resourceName: "Report_a_Problem_Link_Icon"),#imageLiteral(resourceName: "download"),#imageLiteral(resourceName: "istockphoto-1305676015-170667a")]
    
    override func viewDidLoad() {
        tableView.dataSource = self
        tableView.delegate = self
        view.backgroundColor = .gray
        tableView.register(TableViewCell.nib(), forCellReuseIdentifier: TableViewCell.identifier)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath)as! TableViewCell
        cell.configure(pic: pics[indexPath.row])
        cell.configure2(title: data[indexPath.row])
        cell.configure3(title: Indicator[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 210
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let header : UITableViewHeaderFooterView = view as! UITableViewHeaderFooterView
        
        let blueBackground = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 200))
        blueBackground.backgroundColor = UIColor.blue.withAlphaComponent(0.5)
        let path = UIBezierPath (roundedRect: blueBackground.bounds, byRoundingCorners: [.bottomRight,.bottomLeft], cornerRadii: CGSize.init(width: 30, height: 30))
        let maskLayer = CAShapeLayer()
        maskLayer.frame = blueBackground.bounds
        maskLayer.path = path.cgPath
        blueBackground.layer.mask = maskLayer
        header.addSubview(blueBackground)
        
        let labelOfPointsAndBadges : UILabel = UILabel(frame: CGRect(x: 20, y: 165, width: 280, height: 40))
        labelOfPointsAndBadges.backgroundColor = .black
        labelOfPointsAndBadges.textColor = .white
        labelOfPointsAndBadges.text = "    POINTS                                          BADGES   "
        labelOfPointsAndBadges.font = UIFont(descriptor: .preferredFontDescriptor(withTextStyle: .body), size: 13)
        labelOfPointsAndBadges.layer.borderWidth = 1
        labelOfPointsAndBadges.layer.borderColor = UIColor.black.cgColor
        labelOfPointsAndBadges.layer.cornerRadius = 10
        labelOfPointsAndBadges.clipsToBounds = true
        header.addSubview(labelOfPointsAndBadges)
        
        let raplImageView : UIImageView = UIImageView(frame: CGRect(x: 140, y: 165, width: 40, height: 40))
        raplImageView.image = #imageLiteral(resourceName: "download")
        raplImageView.layer.borderWidth = 1
        raplImageView.layer.borderColor = UIColor.black.cgColor
        raplImageView.layer.cornerRadius =  10
        raplImageView.clipsToBounds = true
        header.addSubview(raplImageView)
        
        let profilePicture : UIImageView = UIImageView(frame: CGRect(x: 125, y: 15, width: 70, height: 70))
        profilePicture.image = #imageLiteral(resourceName: "download (3)-1")
        profilePicture.layer.borderWidth = 1
        profilePicture.layer.borderColor = UIColor.black.cgColor
        profilePicture.layer.cornerRadius = 35
        profilePicture.clipsToBounds = true
        header.addSubview(profilePicture)
        
        let nameLabel : UILabel = UILabel(frame: CGRect(x: 125, y: 90, width: 70, height: 50))
        nameLabel.backgroundColor = .clear
        nameLabel.textColor = .white
        nameLabel.text = "Name"
        nameLabel.font = UIFont.systemFont(ofSize: 13)
        nameLabel.textAlignment = .center
        nameLabel.layer.borderWidth = 1
        nameLabel.layer.cornerRadius = 5
        nameLabel.clipsToBounds = true
        header.addSubview(nameLabel)


    }

}
