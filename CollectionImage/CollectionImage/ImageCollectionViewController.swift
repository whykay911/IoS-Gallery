//
//  ImageCollectionViewController.swift
//  CollectionImage
//
//  Created by Adepoju Oluyinka on 2022-03-09.
//

import UIKit

private let reuseIdentifier = "Cell"

class ImageCollectionViewController: UICollectionViewController {
    
    private var cities : [City] = [ City(image: "Ankara", name: "Ankara"),
                                        City(image: "Antalya", name: "Antalya"),
                                        City(image: "Aydin", name: "Aydin"),
                                        City(image: "Bodrum", name: "Bodrum"),
                                        City(image: "Canakkale", name: "Canakkale"),
                                        City(image: "Cappadocia", name: "Cappadocia"),
                                        City(image: "Efes", name: "Efes"),
                                        City(image: "Eskisehir", name: "Eskisehir"),
                                        City(image: "Fethiye", name: "Fethiye"),
                                        City(image: "Istanbul", name: "Istanbul"),
                                        City(image: "Izmir", name: "Izmir"),
                                        City(image: "Mardin", name: "Mardin"),
                                        City(image: "Nemrut", name: "Nemrut"),
                                        City(image: "Pamukkale", name: "Pamukkale"),
                                        City(image: "Patara", name: "Patara"),
                                        City(image: "Rize", name: "Rize"),
                                        City(image: "Salda", name: "Salda"),
                                        City(image: "Sumela", name: "Sumela")]


    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
            return 1
        }


        override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            
            return cities.count
        }

        override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "dataCell", for: indexPath) as! ImageCollectionViewCell
        
            
            let city = cities[indexPath.row]
            cell.img.image = UIImage(named: city.image)
            cell.lbl.text = city.name
        
            return cell
        }
    
    @IBAction func unwindToMain(seque: UIStoryboardSegue){
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if segue.identifier == "showDetail" {
               if let indexPaths = collectionView.indexPathsForSelectedItems{
                   let destinationController = segue.destination as! ImageDetailViewController
                   destinationController.city = cities[indexPaths[0].row]
                   collectionView.deselectItem(at: indexPaths[0], animated: false)
               }
           }
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            performSegue(withIdentifier: "showDetail", sender: nil)
        }


}
