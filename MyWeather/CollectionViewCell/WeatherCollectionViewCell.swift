//
//  WeatherCollectionViewCell.swift
//  MyWeather
//
//  Created by Andres Liu on 8/4/21.
//

import UIKit

class WeatherCollectionViewCell: UICollectionViewCell {

    @IBOutlet var iconImageView: UIImageView!
    @IBOutlet var tempLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    static let identifier = "WeatherCollectionViewCell"

    static func nib() -> UINib {
        return UINib(nibName: "WeatherCollectionViewCell", bundle: nil)
    }
    
    func configure(with model: HourlyWeatherEntry) {
        self.tempLabel.text = "\(model.temperature)°"
        self.iconImageView.image = UIImage(named: "clear")
        self.iconImageView.contentMode = .scaleAspectFit
    }
}
