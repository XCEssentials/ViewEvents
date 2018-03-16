import UIKit

//---

public
extension UIBarButtonItem
{
    /**
     Allows to add handler which will be called when corresponding
     bar button has been tapped.
     */
    public
    var onTap: PendingBarButtonOperation
    {
        return PendingBarButtonOperation(
            source: self
        )
    }
}
