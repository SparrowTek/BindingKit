# BindingKit

Binding framework to bind views to models for iOS apps using an MVVM design patern and architecture.  

## Example
```swift
import BindingKit

class MyViewModel {
    var title: Dynamic<String> = Dynamic("")

    func updateTitle(_ newTitle: String) {
        // when title.value changes the bindings will be triggered
        title.value = newTitle
    }
}

class MyViewController: UIViewController {
    var viewModel = MyViewModel()
    @IBOutlet weak var titleLabel: UILabel!

    func bindToViewModel() {
        viewModel.title.bind { [weak self] title in 
            titleLabel.text = title
        }
    }
}

```

This framework is **Heavily** influenced by  
- [Solving the binding problem with Swift](http://five.agency/solving-the-binding-problem-with-swift/) by Srđan Rašić  
