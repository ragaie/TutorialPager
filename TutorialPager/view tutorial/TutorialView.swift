//
//  TutorialView.swift
//  TutorialPager
//
//  Created by Ragaie on 1/14/19.
//  Copyright © 2019 Ragaie alfy. All rights reserved.
//


import UIKit



@IBDesignable open class TutorialView: UIView,UICollectionViewDelegate,UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout{
    
    @IBOutlet  public weak var tutorialCollectionView: UICollectionView!
    
    @IBOutlet  public weak var tutorialPageControl: UIPageControl!
    @IBOutlet  weak var bottomLocation: NSLayoutConstraint!
    
    let cellID = "tutorialCollectionCell"
    var scrollingTimer : Timer!
    var currentIndex : IndexPath!
  
    
    //public variable that user can change it.
    
    public var delegate : TutorialViewDelegate!
    public  var  dataSourceView : [UIView]!
    public  var  dataSourceViewViewController : [UIViewController]!
    

    @IBInspectable public  var autoScroll: Bool = false{
        didSet {
            if autoScroll {
                scrollingTimer = Timer.scheduledTimer(timeInterval: scrollPeriod, target: self, selector:  #selector(TutorialView.makeScrollView), userInfo: nil, repeats: true)
            }
        }
    }
    @IBInspectable public  var scrollPeriod: Double = 3

     public  var pageControlLocation: CGFloat = 10 {
        didSet {
            bottomLocation.constant = pageControlLocation
            
        }
    }

     public  var pageControlSize: CGFloat = 1.5 {
        didSet {
           tutorialPageControl.transform = CGAffineTransform(scaleX: pageControlSize, y: pageControlSize)

        }
    }
    
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initSubviews()
        initActionAndDelegete()
        
    }
    
    func initSubviews() {
        
        let bundle = Bundle(for: type(of: self))
        
        
        let nib = UINib(nibName: "TutorialView", bundle: bundle)
        
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        
        // to make view fit view in design you welcome.
        view.frame = self.bounds
        view.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
        addSubview(view)
        
    }
    
    func initActionAndDelegete()  {
        tutorialCollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellID)
        tutorialCollectionView.delegate = self
        tutorialCollectionView.dataSource = self
        currentIndex = IndexPath.init(item: 0, section: 0)

        if autoScroll {
            scrollingTimer = Timer.scheduledTimer(timeInterval: scrollPeriod, target: self, selector:  #selector(TutorialView.makeScrollView), userInfo: nil, repeats: true)
        }
    }


    
    
    ///MARK: Delegate func
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if dataSourceView != nil || dataSourceViewViewController != nil {
            
            if dataSourceView != nil {
                tutorialPageControl.numberOfPages = dataSourceView.count

                return dataSourceView.count
            }
            else if dataSourceViewViewController != nil{
                dataSourceView = []

                for item in dataSourceViewViewController{
                    
                    dataSourceView.append(item.view)
                }
                tutorialPageControl.numberOfPages = dataSourceView.count

                return dataSourceView.count
                
            }
            
        }
        //reset page Control
        tutorialPageControl.numberOfPages = 0

        return 0
        
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath)
        cell.backgroundColor = UIColor.red
        
        let showingView = dataSourceView[indexPath.row]
        showingView.frame = cell.bounds
        for item in cell.contentView.subviews{
            item.removeFromSuperview()
        }
        
        cell.contentView.addSubview(showingView)
     
        return cell
    }
    
    
    //MARK: LayOut for cells..
    public  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return tutorialCollectionView.bounds.size
    }
    
    
    //MARK: update page controll
    public func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
        var indexPath = tutorialCollectionView.indexPath(for: tutorialCollectionView.visibleCells.first!)
            currentIndex = indexPath

            tutorialPageControl.currentPage = (indexPath?.row)!

        if delegate != nil{
            
            delegate.tutorialView!(didDisplayedIndex: indexPath!)
        }
    }
    
   //collection view delegate

   
 
    
    public func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if delegate != nil{
            
            delegate.tutorialView!(didslectedIndex: indexPath)
        }
        
        
    }

    
    //MARK: automatic scroll
    @objc func makeScrollView(){
        if (currentIndex.row + 1 < dataSourceView.count){
            var lastIndex = IndexPath.init(item: currentIndex.row + 1, section: 0)
            currentIndex = lastIndex
            
            tutorialCollectionView.scrollToItem(at: lastIndex, at: UICollectionViewScrollPosition.centeredHorizontally, animated: true)
            tutorialPageControl.currentPage = (lastIndex.row)
            if delegate != nil{
                
                delegate.tutorialView!(didDisplayedIndex: lastIndex)
            }
        }
        else{
            
            scrollingTimer.invalidate()
        }
        
    }


}
