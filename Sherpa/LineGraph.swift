//
//  LineGraph.swift
//  autism
//
//  Created by Praynaa Rawlani on 9/20/15.
//  Copyright (c) 2015 Arun Rawlani. All rights reserved.
//

import UIKit
import PNChartSwift

class LineGraph: UIView {
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
    // Drawing code
    }
    */
    
    override init(frame:CGRect) {
        super.init(frame: frame)
        makeGraph();
    }
    
    func makeGraph() {
        var ChartLabel:UILabel = UILabel(frame: CGRectMake(0, 90, 320.0, 30))
        ChartLabel.textColor = PNGreenColor
        ChartLabel.font = UIFont(name: "Avenir-Medium", size:21.0)
        ChartLabel.text = "Outreach Analytics over time"
        ChartLabel.textAlignment = NSTextAlignment.Center
        
        var lineChart:PNLineChart = PNLineChart(frame: CGRectMake(0, 135.0, 320, 200.0))
        lineChart.yLabelFormat = "%1.1f"
        lineChart.showLabel = true
        lineChart.backgroundColor = UIColor.clearColor()
        lineChart.xLabels = ["JAN","FEB","MAR","APR","MAY","JUN","JUL", "AUG"]
        lineChart.showCoordinateAxis = true
        
        // Line Chart Nr.1
        var data01Array: [CGFloat] = [160.1, 140.3, 126.4, 162.2, 186.2, 127.2, 176.2, 120.2]
        var data01:PNLineChartData = PNLineChartData()
        data01.color = PNGreenColor
        data01.itemCount = data01Array.count
        data01.inflexionPointStyle = PNLineChartData.PNLineChartPointStyle.PNLineChartPointStyleCycle
        data01.getData = ({(index: Int) -> PNLineChartDataItem in
            var yValue:CGFloat = data01Array[index]
            var item = PNLineChartDataItem(y: yValue)
            return item
        })
        
        lineChart.chartData = [data01]
        lineChart.strokeChart()
        self.addSubview(ChartLabel)
        self.addSubview(lineChart)
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
