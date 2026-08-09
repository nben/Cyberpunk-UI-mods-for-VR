native func LogChannel(channel: CName, const text: script_ref<String>)

@wrapMethod(QuickhacksListGameController)
protected cb func OnInitialize() -> Bool {
    wrappedMethod();
    
    let root = this.GetRootWidget();
    if IsDefined(root) {
        let container = root as inkCompoundWidget;
        
        if IsDefined(container) {
            let i = 0;
            while i < container.GetNumChildren() {
                let child = container.GetWidgetByIndex(i);
                if IsDefined(child) {
                    
                    // 1. Move the Left Panel (Quickhacks list container)
                    if Equals(child.GetName(), n"left_panel") {
                        // Vector2(X, Y) -> Negative X moves left, Positive Y moves down
                        child.SetTranslation(new Vector2(150.0, 0)); 
                        LogChannel(n"DEBUG", "Successfully moved left_panel!");
                    }
                    
                    // 2. Move the Input Container (Button prompt panel)
                    if Equals(child.GetName(), n"input_container") {
                        // Keeps it horizontally centered, nudges it down by 150 units
                        child.SetTranslation(new Vector2(-850.0, 0.0)); 
                        LogChannel(n"DEBUG", "Successfully moved input_container!");
                    }
                }
                i += 1;
            }
        }
    }
    return true;
}