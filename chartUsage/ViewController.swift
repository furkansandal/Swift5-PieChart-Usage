//
//  ViewController.swift
//  chartUsage
//
//  Created by Sefer Furkan Sandal on 25.08.2020.
//  Copyright © 2020 Sefer Furkan Sandal. All rights reserved.
//

import UIKit
import Charts

class ViewController: UIViewController {

    @IBOutlet private weak var pieView: PieChartView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupPieChart()
        
    }
    
        func setupPieChart(){
            //pieView.chartDescription?.enabled = true
            //pieView.chartDescription?.text = "Başlık"
            pieView.drawHoleEnabled = false
            pieView.rotationAngle = 0
            pieView.rotationEnabled = false
            pieView.drawEntryLabelsEnabled = false
            pieView.drawSlicesUnderHoleEnabled = true
            pieView.drawEntryLabelsEnabled = false
            pieView.usePercentValuesEnabled = true
            pieView.highlightPerTapEnabled = false
            pieView.legend.enabled = false
            pieView.holeRadiusPercent = 100
            pieView.setExtraOffsets(left: 5, top: 0, right: 5, bottom: 0)
            //pieView.isUserInteractionEnabled = false
            
    //        pieView.legend.enabled = false
            
            var entries : [PieChartDataEntry] = Array()
            entries.append(PieChartDataEntry(value:  99))
            entries.append(PieChartDataEntry(value: 1))
            
            let dataSet = PieChartDataSet(entries: entries, label : "")
            dataSet.sliceSpace = 10
            dataSet.yValuePosition = .outsideSlice
            dataSet.xValuePosition = .outsideSlice
            
            let x_pie_color = NSUIColor(hex: 0xEAE2F2)
            let c_pie_color = NSUIColor(hex: 0xA87EC9)
            let x_text_color = NSUIColor(hex: 0x4a0ca0)
            let c_text_color = NSUIColor(hex: 0xAAFFFF)
            let value_line_color = NSUIColor(hex: 0xFFFFFF)
            
            dataSet.colors = [x_pie_color, c_pie_color]
            dataSet.valueColors =  [x_text_color, c_text_color]
            let pFormatter = NumberFormatter()
            pFormatter.numberStyle = .percent
            pFormatter.maximumFractionDigits = 1
            pFormatter.multiplier = 1
            pFormatter.percentSymbol = "%"
            dataSet.valueFormatter = DefaultValueFormatter(formatter: pFormatter)
            
            dataSet.valueFont = NSUIFont(name: "HelveticaNeue-Medium", size: CGFloat(18.0))!
            dataSet.drawValuesEnabled = true
            dataSet.selectionShift = 0
            dataSet.valueLinePart1Length = 0.5
            dataSet.valueLinePart2Length = 0.5
            dataSet.valueLineColor = value_line_color
            pieView.data = PieChartData(dataSet: dataSet)
            
    //        pieView.
        }



}

