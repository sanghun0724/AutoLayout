//
//  DiagonalCustomImageView.swift
//  Running_CodeConnectNIb
//
//  Created by sangheon on 2020/12/07.
//

import UIKit

@IBDesignable  // 내가만든 커스텀 코드 -> storyboard 편집화면에서 바로 확인
class DiagonalCustomImageView: UIImageView {

    // 대각선으로 잘린 사각형을 그린다
    // bezierPath
    
    //path -> layer
    
    //layer -> mask
    
    // 내가만든 커스텀 코드 -> storyboard 편집화면에서 바로 확인
    
    @IBInspectable var innerHeight:CGFloat = 0
    
    
    func makePath() -> UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint.zero)
        path.addLine(to: CGPoint.init(x: self.bounds.width, y: 0))
        path.addLine(to: CGPoint.init(x: self.bounds.width, y: self.bounds.height))
        path.addLine(to: CGPoint.init(x: 0, y: self.bounds.height - innerHeight)) //대각!
        path.close() //path만든거 연결됨
        
        return path
    }
    
    func  pathToLayer() -> CAShapeLayer {
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = makePath().cgPath //chpath로 형변환
        
        return shapeLayer
    }
    
    func makeMask() {
        self.layer.mask = pathToLayer() //mask 라는건 해당되는 도형과 내가 다른것을 겹쳤을때 겹친부분만 나오고 다른부분은 안나오는거
    }
    
    override func layoutSubviews() { //해당 오브젝트가 그려질때 호출
        makeMask()
    }
}
