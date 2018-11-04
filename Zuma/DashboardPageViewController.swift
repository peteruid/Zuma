//
//  DashboardPageViewController.swift
//  Zuma
//
//  Created by Peter Nelson on 10/26/18.
//  Copyright © 2018 Native. All rights reserved.
//

import UIKit

class DashboardPageViewController: UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {

    lazy var subViewControllers:[UIViewController] = {
        return [
            UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DashboardRoomsViewController") as! DashboardRoomsViewController,
            UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DashboardHomeViewController") as! DashboardHomeViewController,
            UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DashboardLightsViewController") as! DashboardLightsViewController,
            UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DashboardSoundViewController") as! DashboardSoundViewController,
            UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DashboardSecurityViewController") as! DashboardSecurityViewController
        ]
    }()
    
    var pageControl = UIPageControl()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.dataSource = self
        self.delegate = self
        setViewControllers([subViewControllers[0]], direction: .forward, animated: true, completion: nil)
        configurePageControl()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setupNavBar()
    }
    
    func setupNavBar() {
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.darkGray]
        navigationItem.title = "Zuma Home"
    }
    

    
    
    func configurePageControl() {
        pageControl = UIPageControl(frame: CGRect(x: 0,y: UIScreen.main.bounds.maxY - 50,width: UIScreen.main.bounds.width,height: 50))
        self.pageControl.numberOfPages = subViewControllers.count
        self.pageControl.currentPage = 0
        self.pageControl.alpha = 0.5
        self.pageControl.tintColor = UIColor.black
        self.pageControl.pageIndicatorTintColor = UIColor.lightGray
        self.pageControl.currentPageIndicatorTintColor = UIColor.black
        self.view.addSubview(pageControl)
    }
    
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return subViewControllers.count
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let currentIndex:Int=subViewControllers.index(of:viewController) ?? 0
        if (currentIndex <= 0) {
            return nil;
        }
        return subViewControllers[currentIndex-1];
    }
    
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let currentIndex:Int=subViewControllers.index(of:viewController) ?? 0
        if (currentIndex >= subViewControllers.count-1) {
            return nil;
        }
        return subViewControllers[currentIndex+1]
    }
    
    


    // MARK: Delegate functions
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        let pageContentViewController = pageViewController.viewControllers![0]
        self.pageControl.currentPage = subViewControllers.index(of: pageContentViewController)!
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
