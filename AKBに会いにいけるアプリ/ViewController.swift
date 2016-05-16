//
//  ViewController.swift
//  AKBに会いにいけるアプリ
//
//  Created by HARADA REO on 2016/05/10.
//  Copyright © 2016年 reo harada. All rights reserved.
//

// デフォルトで用意されてるラベルとかボタン等の部品
import UIKit
// 地図を使いたい場合
import MapKit
// 現在地を使いたい場合
import CoreLocation


class ViewController: UIViewController {
    
    // 地図を表示してくれるだけ
    @IBOutlet weak var mapView: MKMapView!
    // 現在地を教えてくれる部品を用意
    var locationManager: CLLocationManager!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // locationManager初期化（位置情報を教えてくれる人を呼んでくる）
        self.locationManager = CLLocationManager()
        // 位置情報を取得する許可を取ります
        self.locationManager.requestAlwaysAuthorization()
        
        // mapViewに現在地を表示する
        self.mapView.showsUserLocation = true
        // 自分の位置を常に地図の中心にする
        self.mapView.userTrackingMode = MKUserTrackingMode.FollowWithHeading
        
        // 地図の座標にピン（AKBの誰か）を置いてく
        // どこにおくか、座標を決める
        let cordinate = CLLocationCoordinate2DMake(43.063968, 141.347899)
        // mapViewに上の座標で置いてもらう
        // ピンを用意する
        let pin = MKPointAnnotation()
        // 座標を設定
        pin.coordinate = cordinate
        // タイトルを設定する
        pin.title = "前田敦子"
        pin.subtitle = "161cm"
        // mapViewにpinを追加
        self.mapView.addAnnotation(pin)
        
        
        // ジオコーディングを使います
        // 例　東京→東京の緯度経度を教えてくれる
        let geocoder = CLGeocoder()
        geocoder.geocodeAddressString("ハワイ") { (result, error) in
            // ジオコーディングしてもらった座標にピンを置く
            // 結果の1番目のデータを取得
            let first = result![0]
            // 座標を取得　緯度を収得
            let lat = first.location?.coordinate.latitude
            // 座標を取得　経度を取得
            let long = first.location?.coordinate.longitude
            
            // 地図の座標にピン（AKBの誰か）を置いてく
            // どこにおくか、座標を決める
            let cordinate = CLLocationCoordinate2DMake(lat!, long!)
            // mapViewに上の座標で置いてもらう
            // ピンを用意する
            let pin = MKPointAnnotation()
            // 座標を設定
            pin.coordinate = cordinate
            // タイトルを設定する
            pin.title = "大島優子"
            pin.subtitle = "152cm"
            // mapViewにpinを追加
            self.mapView.addAnnotation(pin)
        }
        
        // ジオコーディングを使います
        // 例　東京→東京の緯度経度を教えてくれる
        let geocoder2 = CLGeocoder()
        geocoder2.geocodeAddressString("東京") { (result, error) in
            // ジオコーディングしてもらった座標にピンを置く
            // 結果の1番目のデータを取得
            let first = result![0]
            // 座標を取得　緯度を収得
            let lat = first.location?.coordinate.latitude
            // 座標を取得　経度を取得
            let long = first.location?.coordinate.longitude
            
            // 地図の座標にピン（AKBの誰か）を置いてく
            // どこにおくか、座標を決める
            let cordinate = CLLocationCoordinate2DMake(lat!, long!)
            // mapViewに上の座標で置いてもらう
            // ピンを用意する
            let pin = MKPointAnnotation()
            // 座標を設定
            pin.coordinate = cordinate
            // タイトルを設定する
            pin.title = "指原莉乃"
            pin.subtitle = "159cm"
            // mapViewにpinを追加
            self.mapView.addAnnotation(pin)
        }

        // ジオコーディングを使います
        // 例　東京→東京の緯度経度を教えてくれる
        let geocoder3 = CLGeocoder()
        geocoder3.geocodeAddressString("琵琶湖") { (result, error) in
            // ジオコーディングしてもらった座標にピンを置く
            // 結果の1番目のデータを取得
            let first = result![0]
            // 座標を取得　緯度を収得
            let lat = first.location?.coordinate.latitude
            // 座標を取得　経度を取得
            let long = first.location?.coordinate.longitude
            
            // 地図の座標にピン（AKBの誰か）を置いてく
            // どこにおくか、座標を決める
            let cordinate = CLLocationCoordinate2DMake(lat!, long!)
            // mapViewに上の座標で置いてもらう
            // ピンを用意する
            let pin = MKPointAnnotation()
            // 座標を設定
            pin.coordinate = cordinate
            // タイトルを設定する
            pin.title = "柏木由紀"
            pin.subtitle = "163cm"
            // mapViewにpinを追加
            self.mapView.addAnnotation(pin)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapNowPositionButton(sender: AnyObject) {
        // 自分の位置を常に地図の中心にする
        self.mapView.userTrackingMode = MKUserTrackingMode.FollowWithHeading
    }
    

}







