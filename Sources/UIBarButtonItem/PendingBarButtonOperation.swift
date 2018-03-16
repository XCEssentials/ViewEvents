import UIKit

//---

public
struct PendingBarButtonOperation
{
    let source: UIBarButtonItem
}

//---

public
extension PendingBarButtonOperation
{
    @discardableResult
    public
    func set<T: AnyObject>(
        _ handler: Selector,
        of target: T
        ) -> UIBarButtonItem
    {
        source.target = target
        source.action = handler

        //---

        return source
    }

    @discardableResult
    public
    func removeHandler() -> UIBarButtonItem
    {
        source.target = nil
        source.action = nil

        //---

        return source
    }
}
