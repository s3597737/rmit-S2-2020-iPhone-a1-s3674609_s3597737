//
//  CountryCell.swift
//  COVID
//
//  Created by KT on 2020/9/5.
//  Copyright © 2020 The Riders. All rights reserved.
//

import UIKit

class CountryView: UITableViewCell
{
	@IBOutlet weak var flagImageView : UIImageView!
	@IBOutlet weak var casesLabel : UILabel!
	@IBOutlet weak var deathsLabel : UILabel!
	@IBOutlet weak var recoveredLabel : UILabel!
	
    override func awakeFromNib()
	{
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool)
	{
        super.setSelected(selected, animated: animated)
    }

	func setContent(country: CountryModel)
	{
		flagImageView.image = UIImage(named: "\(country.getName()).jpeg")
		casesLabel.text = String(country.getCases())
		deathsLabel.text = String(country.getDeaths())
		recoveredLabel.text = String(country.getRecovered())
	}
}
