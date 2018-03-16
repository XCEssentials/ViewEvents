import UIKit

//---

public
struct PendingEventsOperation
{
    let source: UIControl
    let events: UIControlEvents
}

//---

public
extension PendingEventsOperation
{
    @discardableResult
    public
    func add<T: Any>(_ handler: Selector, of target: T) -> UIControl
    {
        source.addTarget(
            target,
            action: handler,
            for: events
        )
        
        //---
        
        return source
    }
    
    @discardableResult
    public
    func remove<T: Any>(_ handler: Selector, of target: T) -> UIControl
    {
        source.removeTarget(
            target,
            action: handler,
            for: events
        )
        
        //---
        
        return source
    }
    
    @discardableResult
    public
    func removeAllHandlers<T: Any>(of target: T) -> UIControl
    {
        source.removeTarget(
            target,
            action: nil,
            for: events
        )
        
        //---
        
        return source
    }
    
    @discardableResult
    public
    func removeAllHandlers() -> UIControl
    {
        source.removeTarget(
            nil,
            action: nil,
            for: events
        )
        
        //---
        
        return source
    }
}
