/*

 MIT License

 Copyright (c) 2016 Maxim Khatskevich (maxim@khatskevi.ch)

 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.

 */

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
    
    @available(iOS 9, *)
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
