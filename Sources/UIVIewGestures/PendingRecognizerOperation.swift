import UIKit

//---

public
struct PendingRecognizerOperation<Recognizer: UIGestureRecognizer>
{
    let source: UIView
}

//---

public
extension PendingRecognizerOperation
{
    @discardableResult
    public
    func addRecognizer(
        with handler: Selector,
        of target: Any,
        configuration: ((Recognizer) -> Void)
        ) -> UIView
    {
        let recognizer = Recognizer(
            target: target,
            action: handler
        )
        configuration(recognizer)
        source.addGestureRecognizer(recognizer)
        
        //---
        
        return source
    }
    
    @discardableResult
    public
    func addRecognizer(
        with handler: Selector,
        of target: Any
        ) -> Recognizer
    {
        let recognizer = Recognizer(
            target: target,
            action: handler
        )
        source.addGestureRecognizer(recognizer)
        
        //---
        
        return recognizer
    }
}
