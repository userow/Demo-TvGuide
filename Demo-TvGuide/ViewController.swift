//
//  ViewController.swift
//  Demo-TvGuide
//
//  Created by Pavlo Vasylenko on 20.06.2023.
//

import UIKit

import DemoTvGuideSwaggerApi

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.

//		DemoTvGuideSwaggerApi.
		ChannelsAPI.getAllChannels { data, error in
//			print(data)

            data?.forEach {
                print("\($0.id)\t\($0.orderNum)\t\($0.callSign)")
            }

//            ProgramItemsAPI.getProgramItems { data, error in
//                guard let data else { return }
//
//                let channelProgramSorted = data
//                    .filter { $0.recentAirTime.channelID == 302731
//                    }
//                    .sorted { $0.startTime < $1.startTime }
//
//                print("\n\nPROGRAMS:\n")
//                channelProgramSorted.forEach {
//                    print("\($0.startTime)\t\($0.length)\t\($0.name)")
//                }
//            }
		}
	}


}

