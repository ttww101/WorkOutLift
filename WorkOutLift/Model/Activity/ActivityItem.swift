//
//  ActivityItem.swift
//   WorkOutLift
//
//  Created by Apple on 2019/4/3.
//  Copyright © 2019 SSMNT. All rights reserved.
//

import UIKit

struct ActivityGroup {

    let firstLineTitle: String

    let secondLineTitle: String

    let caption: String

    let items: [ActivityItem]
}

protocol ActivityItem {

    var title: String { get }

}

enum ActivityType: String {
    
    case train
    
    case stretch
}

enum TrainItem: ActivityItem {

    case watchTV

    case preventBackPain

    case wholeBody

    case upperBody

    case lowerBody

    var title: String {

        switch self {

        case .watchTV: return "看电视一边做"

        case .preventBackPain: return "预防腰痛"

        case .wholeBody: return "全身训练"

        case .upperBody: return "上半身训练"

        case .lowerBody: return "下半身训练"

        }

    }
}

enum StretchItem: ActivityItem {

    case longSit

    case longStand

    case beforeSleep

    var title: String {

        switch self {

        case .longSit: return "久坐伸展"

        case .longStand: return "久站伸展"

        case .beforeSleep: return "睡前舒缓"

        }

    }

}
