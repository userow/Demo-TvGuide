//
//  ChannelDisplayModel.swift
//  Demo-TvGuide
//
//  Created by Pavlo Vasylenko on 22.06.2023.
//

import Foundation
import DemoTvGuideSwaggerApi

struct ChannelDisplayModel {
    let id: Int
    let title: String
    let order: Int

    func displayText() -> String {
        return "\(order)\t\(title)"
    }
}

extension ChannelDisplayModel {
    init(channel: Channel) {
        id = Int(channel.id)
        title = channel.callSign
        order = Int(channel.orderNum)
    }
}
