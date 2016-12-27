# custom_views_from_classes

Here, we accomplish the customView below with this singe line of code in the `viewDidLoad`.
```
override func viewDidLoad() {
    super.viewDidLoad()
    _ = CustomView(masterView: mainView, color: .yellow, textToShow:"Custom Text")
}
```
![](http://i.imgur.com/GVa1m9X.png)
