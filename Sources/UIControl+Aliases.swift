import UIKit

//===

public
extension UIControl
{
    @discardableResult
    public
    func onTap<T: Any>(_ handler: Selector, at target: T? = nil) -> Self
    {
        return onTouchUpInside(handler, at: target)
    }
    
    @discardableResult
    public
    func onEdit<T: Any>(_ handler: Selector, at target: T? = nil) -> Self
    {
        return onEditingChanged(handler, at: target)
    }
    
    @discardableResult
    public
    func onExit<T: Any>(_ handler: Selector, at target: T? = nil) -> Self
    {
        return onEditingDidEndOnExit(handler, at: target)
    }
}
