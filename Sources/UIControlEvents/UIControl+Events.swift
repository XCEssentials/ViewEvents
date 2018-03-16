import UIKit

//---

public
extension UIControl
{
    public
    var onTouchDown: PendingEventsOperation
    {
        return PendingEventsOperation(
            source: self,
            events: .touchDown
        
        )
    }
    
    public
    var onTouchDownRepeat: PendingEventsOperation
    {
        return PendingEventsOperation(
            source: self,
            events: .touchDownRepeat
        )
    }
    
    public
    var onTouchDragInside: PendingEventsOperation
    {
        return PendingEventsOperation(
            source: self,
            events: .touchDragInside
        )
    }
    
    public
    var onTouchDragOutside: PendingEventsOperation
    {
        return PendingEventsOperation(
            source: self,
            events: .touchDragOutside
        )
    }
    
    public
    var onTouchDragEnter: PendingEventsOperation
    {
        return PendingEventsOperation(
            source: self,
            events: .touchDragEnter
        )
    }
    
    public
    var onTouchDragExit: PendingEventsOperation
    {
        return PendingEventsOperation(
            source: self,
            events: .touchDragExit
        )
    }
    
    public
    var onTouchUpInside: PendingEventsOperation
    {
        return PendingEventsOperation(
            source: self,
            events: .touchUpInside
        )
    }
    
    public
    var onTouchUpOutside: PendingEventsOperation
    {
        return PendingEventsOperation(
            source: self,
            events: .touchUpOutside
        )
    }
    
    public
    var onTouchCancel: PendingEventsOperation
    {
        return PendingEventsOperation(
            source: self,
            events: .touchCancel
        )
    }
    
    public
    var onValueChanged: PendingEventsOperation
    {
        return PendingEventsOperation(
            source: self,
            events: .valueChanged
        )
    }
    
    @available(iOS 9, *
        )
    public
    var onPrimaryActionTriggered: PendingEventsOperation
    {
        return PendingEventsOperation(
            source: self,
            events: .primaryActionTriggered
        )
    }
    
    public
    var onEditingDidBegin: PendingEventsOperation
    {
        return PendingEventsOperation(
            source: self,
            events: .editingDidBegin
        )
    }
    
    public
    var onEditingChanged: PendingEventsOperation
    {
        return PendingEventsOperation(
            source: self,
            events: .editingChanged
        )
    }
    
    public
    var onEditingDidEnd: PendingEventsOperation
    {
        return PendingEventsOperation(
            source: self,
            events: .editingDidEnd
        )
    }
    
    public
    var onEditingDidEndOnExit: PendingEventsOperation
    {
        return PendingEventsOperation(
            source: self,
            events: .editingDidEndOnExit
        )
    }
    
    public
    var onAllTouchEvents: PendingEventsOperation
    {
        return PendingEventsOperation(
            source: self,
            events: .allTouchEvents
        )
    }
    
    public
    var onAllEditingEvents: PendingEventsOperation
    {
        return PendingEventsOperation(
            source: self,
            events: .allEditingEvents
        )
    }
    
    public
    var onAllEvents: PendingEventsOperation
    {
        return PendingEventsOperation(
            source: self,
            events: .allEvents
        )
    }
}
