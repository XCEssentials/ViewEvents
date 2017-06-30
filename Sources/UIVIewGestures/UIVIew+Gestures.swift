import UIKit

//===

public
extension UIView
{
    public
    var onTapGesture: PendingRecognizerOperation<UITapGestureRecognizer>
    {
        return PendingRecognizerOperation(source: self)
    }
    
    public
    var onPinchGesture: PendingRecognizerOperation<UIPinchGestureRecognizer>
    {
        return PendingRecognizerOperation(source: self)
    }
    
    public
    var onPanGesture: PendingRecognizerOperation<UIPanGestureRecognizer>
    {
        return PendingRecognizerOperation(source: self)
    }
    
    public
    var onSwipeGesture: PendingRecognizerOperation<UISwipeGestureRecognizer>
    {
        return PendingRecognizerOperation(source: self)
    }
    
    public
    var onLongPressGesture: PendingRecognizerOperation<UILongPressGestureRecognizer>
    {
        return PendingRecognizerOperation(source: self)
    }
}
