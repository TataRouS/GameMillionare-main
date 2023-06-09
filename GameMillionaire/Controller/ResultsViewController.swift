//
//  ResultsViewController.swift
//  GameMillionaire
//


import UIKit

class ResultsViewController: UIViewController {

    //MARK: Private variables
    var gameSingleton = Game.shared
    var results: [Result] = []
    
    //MARK: IBOutlets
    @IBOutlet var tableView: UITableView!
    
    @IBAction func clearBtnClick(_ sender: UIButton) {
        self.results = gameSingleton.clearResults()
        
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
        
    }
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.results = gameSingleton.results
        
        tableView.delegate = self
        tableView.dataSource = self
       
    }
}

extension ResultsViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        results.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = "правильных ответов  - \(results[indexPath.row].procent)%, кол-во правильных ответов - \(results[indexPath.row].correctAnswerCount), заработано - \(results[indexPath.row].moneyEarned), всего вопросов - \(results[indexPath.row].allAnswerCount)"
        
        return cell
    }
}

