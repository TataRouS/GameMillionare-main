//
//  MainViewController.swift
//  GameMillionaire
//

import UIKit

class MainViewController: UIViewController {
   
    var gameController: GameViewController?
    var resultController: ResultsViewController?
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "StartGameSegue":
            guard let destinationVC = segue.destination as? GameViewController else {
                return
            }
            destinationVC.gameDelegate = self
        default:
            break;
            
        }
    }

}

extension MainViewController: GameViewControllerDelegate {

    func didEndGame(withResult result: Result) {
        Game.shared.addResult(result)
    }

}
