@wrapMethod(GenericNotificationController)
protected cb func OnInitialize() -> Bool {
    // Run the game's original setup for whichever specific notification this is
    wrappedMethod();
    
    // Move it
    let root = this.GetRootWidget();
    if IsDefined(root) {
        root.SetMargin(new inkMargin(1150.0, 0.0, 0.0, 0.0));
    }
    
    return true;
}