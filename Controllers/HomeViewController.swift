import UIKit

class HomeViewContorller : UIViewController {

  private let homeFeedTable : UITableView(){
    let table = UITableView()
    table.register(CollectionViewTableViewCell.self, forcellReuseIdentifier:CollectionViewTableViewCell.identifier)
    return table
    }()

  override func viewDidLoad(){
    super.viewDidLoad()

     view.backgroundColor = .systemBackground
     view.addSubview(homeFeedTable)

     homeFeedTable.delegate = self
     homeFeedTable.dataSource = self
  }

  override func viewDidLayoutSubViews(){
    super.viewDidLayoutSubViews()
    homeFeedTable.frame = view.bounds
  }
}

extension HomeViewContorller: UITableViewDelegate, UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 20
  }

  func tableView(_ tableView: UITAbleView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: CollectionViewTableViewCell.identifier, for: indexPath) as? CollectionViewTableViewCell else {
      return UITableViewCell()
    }
    return cell
  }

  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 200
  }

  func tableView(_ tableView: UItableView, heightForHeaderInSection section: Int) -> CGFloat {
    return 40
  }
}



