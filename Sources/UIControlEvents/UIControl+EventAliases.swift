import UIKit

//===

public
extension UIControl
{
    public
    var onTap: PendingEventsOperation
    {
        return onTouchDown
    }
    
    public
    var onEdit: PendingEventsOperation
    {
        return onEditingChanged
    }
    
    public
    var onExit: PendingEventsOperation
    {
        return onEditingDidEndOnExit
    }
}
