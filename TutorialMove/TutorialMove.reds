// Hook the UI Controller that manages the contact list
@wrapMethod(TutorialPopupGameController) 
protected cb func OnInitialize() -> Bool {
    // Run the vanilla game code first so the UI actually builds
    wrappedMethod(); 

    // Grab the root widget of the Contacts Menu itself
    let rootWidget: ref<inkWidget> = this.GetRootWidget(); 

    // Ensure the widget loaded successfully
    if IsDefined(rootWidget) {
        
        // Define your new coordinates
        let customMargin = new inkMargin(550.0, 0.0, 0.0, 0.0); 
        
        // Apply the new margin directly to the menu's root
        rootWidget.SetMargin(customMargin); 
    }
    
    return true;
}