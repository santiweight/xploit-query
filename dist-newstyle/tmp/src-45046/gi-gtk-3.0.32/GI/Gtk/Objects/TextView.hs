{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- You may wish to begin by reading the
-- [text widget conceptual overview][TextWidget]
-- which gives an overview of all the objects and data
-- types related to the text widget and how they work together.
-- 
-- = CSS nodes
-- 
-- 
-- === /plain code/
-- >
-- >textview.view
-- >├── border.top
-- >├── border.left
-- >├── text
-- >│   ╰── [selection]
-- >├── border.right
-- >├── border.bottom
-- >╰── [window.popup]
-- 
-- 
-- GtkTextView has a main css node with name textview and style class .view,
-- and subnodes for each of the border windows, and the main text area,
-- with names border and text, respectively. The border nodes each get
-- one of the style classes .left, .right, .top or .bottom.
-- 
-- A node representing the selection will appear below the text node.
-- 
-- If a context menu is opened, the window node will appear as a subnode
-- of the main node.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.TextView
    ( 

-- * Exported types
    TextView(..)                            ,
    IsTextView                              ,
    toTextView                              ,
    noTextView                              ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveTextViewMethod                   ,
#endif


-- ** addChildAtAnchor #method:addChildAtAnchor#

#if defined(ENABLE_OVERLOADING)
    TextViewAddChildAtAnchorMethodInfo      ,
#endif
    textViewAddChildAtAnchor                ,


-- ** addChildInWindow #method:addChildInWindow#

#if defined(ENABLE_OVERLOADING)
    TextViewAddChildInWindowMethodInfo      ,
#endif
    textViewAddChildInWindow                ,


-- ** backwardDisplayLine #method:backwardDisplayLine#

#if defined(ENABLE_OVERLOADING)
    TextViewBackwardDisplayLineMethodInfo   ,
#endif
    textViewBackwardDisplayLine             ,


-- ** backwardDisplayLineStart #method:backwardDisplayLineStart#

#if defined(ENABLE_OVERLOADING)
    TextViewBackwardDisplayLineStartMethodInfo,
#endif
    textViewBackwardDisplayLineStart        ,


-- ** bufferToWindowCoords #method:bufferToWindowCoords#

#if defined(ENABLE_OVERLOADING)
    TextViewBufferToWindowCoordsMethodInfo  ,
#endif
    textViewBufferToWindowCoords            ,


-- ** forwardDisplayLine #method:forwardDisplayLine#

#if defined(ENABLE_OVERLOADING)
    TextViewForwardDisplayLineMethodInfo    ,
#endif
    textViewForwardDisplayLine              ,


-- ** forwardDisplayLineEnd #method:forwardDisplayLineEnd#

#if defined(ENABLE_OVERLOADING)
    TextViewForwardDisplayLineEndMethodInfo ,
#endif
    textViewForwardDisplayLineEnd           ,


-- ** getAcceptsTab #method:getAcceptsTab#

#if defined(ENABLE_OVERLOADING)
    TextViewGetAcceptsTabMethodInfo         ,
#endif
    textViewGetAcceptsTab                   ,


-- ** getBorderWindowSize #method:getBorderWindowSize#

#if defined(ENABLE_OVERLOADING)
    TextViewGetBorderWindowSizeMethodInfo   ,
#endif
    textViewGetBorderWindowSize             ,


-- ** getBottomMargin #method:getBottomMargin#

#if defined(ENABLE_OVERLOADING)
    TextViewGetBottomMarginMethodInfo       ,
#endif
    textViewGetBottomMargin                 ,


-- ** getBuffer #method:getBuffer#

#if defined(ENABLE_OVERLOADING)
    TextViewGetBufferMethodInfo             ,
#endif
    textViewGetBuffer                       ,


-- ** getCursorLocations #method:getCursorLocations#

#if defined(ENABLE_OVERLOADING)
    TextViewGetCursorLocationsMethodInfo    ,
#endif
    textViewGetCursorLocations              ,


-- ** getCursorVisible #method:getCursorVisible#

#if defined(ENABLE_OVERLOADING)
    TextViewGetCursorVisibleMethodInfo      ,
#endif
    textViewGetCursorVisible                ,


-- ** getDefaultAttributes #method:getDefaultAttributes#

#if defined(ENABLE_OVERLOADING)
    TextViewGetDefaultAttributesMethodInfo  ,
#endif
    textViewGetDefaultAttributes            ,


-- ** getEditable #method:getEditable#

#if defined(ENABLE_OVERLOADING)
    TextViewGetEditableMethodInfo           ,
#endif
    textViewGetEditable                     ,


-- ** getHadjustment #method:getHadjustment#

#if defined(ENABLE_OVERLOADING)
    TextViewGetHadjustmentMethodInfo        ,
#endif
    textViewGetHadjustment                  ,


-- ** getIndent #method:getIndent#

#if defined(ENABLE_OVERLOADING)
    TextViewGetIndentMethodInfo             ,
#endif
    textViewGetIndent                       ,


-- ** getInputHints #method:getInputHints#

#if defined(ENABLE_OVERLOADING)
    TextViewGetInputHintsMethodInfo         ,
#endif
    textViewGetInputHints                   ,


-- ** getInputPurpose #method:getInputPurpose#

#if defined(ENABLE_OVERLOADING)
    TextViewGetInputPurposeMethodInfo       ,
#endif
    textViewGetInputPurpose                 ,


-- ** getIterAtLocation #method:getIterAtLocation#

#if defined(ENABLE_OVERLOADING)
    TextViewGetIterAtLocationMethodInfo     ,
#endif
    textViewGetIterAtLocation               ,


-- ** getIterAtPosition #method:getIterAtPosition#

#if defined(ENABLE_OVERLOADING)
    TextViewGetIterAtPositionMethodInfo     ,
#endif
    textViewGetIterAtPosition               ,


-- ** getIterLocation #method:getIterLocation#

#if defined(ENABLE_OVERLOADING)
    TextViewGetIterLocationMethodInfo       ,
#endif
    textViewGetIterLocation                 ,


-- ** getJustification #method:getJustification#

#if defined(ENABLE_OVERLOADING)
    TextViewGetJustificationMethodInfo      ,
#endif
    textViewGetJustification                ,


-- ** getLeftMargin #method:getLeftMargin#

#if defined(ENABLE_OVERLOADING)
    TextViewGetLeftMarginMethodInfo         ,
#endif
    textViewGetLeftMargin                   ,


-- ** getLineAtY #method:getLineAtY#

#if defined(ENABLE_OVERLOADING)
    TextViewGetLineAtYMethodInfo            ,
#endif
    textViewGetLineAtY                      ,


-- ** getLineYrange #method:getLineYrange#

#if defined(ENABLE_OVERLOADING)
    TextViewGetLineYrangeMethodInfo         ,
#endif
    textViewGetLineYrange                   ,


-- ** getMonospace #method:getMonospace#

#if defined(ENABLE_OVERLOADING)
    TextViewGetMonospaceMethodInfo          ,
#endif
    textViewGetMonospace                    ,


-- ** getOverwrite #method:getOverwrite#

#if defined(ENABLE_OVERLOADING)
    TextViewGetOverwriteMethodInfo          ,
#endif
    textViewGetOverwrite                    ,


-- ** getPixelsAboveLines #method:getPixelsAboveLines#

#if defined(ENABLE_OVERLOADING)
    TextViewGetPixelsAboveLinesMethodInfo   ,
#endif
    textViewGetPixelsAboveLines             ,


-- ** getPixelsBelowLines #method:getPixelsBelowLines#

#if defined(ENABLE_OVERLOADING)
    TextViewGetPixelsBelowLinesMethodInfo   ,
#endif
    textViewGetPixelsBelowLines             ,


-- ** getPixelsInsideWrap #method:getPixelsInsideWrap#

#if defined(ENABLE_OVERLOADING)
    TextViewGetPixelsInsideWrapMethodInfo   ,
#endif
    textViewGetPixelsInsideWrap             ,


-- ** getRightMargin #method:getRightMargin#

#if defined(ENABLE_OVERLOADING)
    TextViewGetRightMarginMethodInfo        ,
#endif
    textViewGetRightMargin                  ,


-- ** getTabs #method:getTabs#

#if defined(ENABLE_OVERLOADING)
    TextViewGetTabsMethodInfo               ,
#endif
    textViewGetTabs                         ,


-- ** getTopMargin #method:getTopMargin#

#if defined(ENABLE_OVERLOADING)
    TextViewGetTopMarginMethodInfo          ,
#endif
    textViewGetTopMargin                    ,


-- ** getVadjustment #method:getVadjustment#

#if defined(ENABLE_OVERLOADING)
    TextViewGetVadjustmentMethodInfo        ,
#endif
    textViewGetVadjustment                  ,


-- ** getVisibleRect #method:getVisibleRect#

#if defined(ENABLE_OVERLOADING)
    TextViewGetVisibleRectMethodInfo        ,
#endif
    textViewGetVisibleRect                  ,


-- ** getWindow #method:getWindow#

#if defined(ENABLE_OVERLOADING)
    TextViewGetWindowMethodInfo             ,
#endif
    textViewGetWindow                       ,


-- ** getWindowType #method:getWindowType#

#if defined(ENABLE_OVERLOADING)
    TextViewGetWindowTypeMethodInfo         ,
#endif
    textViewGetWindowType                   ,


-- ** getWrapMode #method:getWrapMode#

#if defined(ENABLE_OVERLOADING)
    TextViewGetWrapModeMethodInfo           ,
#endif
    textViewGetWrapMode                     ,


-- ** imContextFilterKeypress #method:imContextFilterKeypress#

#if defined(ENABLE_OVERLOADING)
    TextViewImContextFilterKeypressMethodInfo,
#endif
    textViewImContextFilterKeypress         ,


-- ** moveChild #method:moveChild#

#if defined(ENABLE_OVERLOADING)
    TextViewMoveChildMethodInfo             ,
#endif
    textViewMoveChild                       ,


-- ** moveMarkOnscreen #method:moveMarkOnscreen#

#if defined(ENABLE_OVERLOADING)
    TextViewMoveMarkOnscreenMethodInfo      ,
#endif
    textViewMoveMarkOnscreen                ,


-- ** moveVisually #method:moveVisually#

#if defined(ENABLE_OVERLOADING)
    TextViewMoveVisuallyMethodInfo          ,
#endif
    textViewMoveVisually                    ,


-- ** new #method:new#

    textViewNew                             ,


-- ** newWithBuffer #method:newWithBuffer#

    textViewNewWithBuffer                   ,


-- ** placeCursorOnscreen #method:placeCursorOnscreen#

#if defined(ENABLE_OVERLOADING)
    TextViewPlaceCursorOnscreenMethodInfo   ,
#endif
    textViewPlaceCursorOnscreen             ,


-- ** resetCursorBlink #method:resetCursorBlink#

#if defined(ENABLE_OVERLOADING)
    TextViewResetCursorBlinkMethodInfo      ,
#endif
    textViewResetCursorBlink                ,


-- ** resetImContext #method:resetImContext#

#if defined(ENABLE_OVERLOADING)
    TextViewResetImContextMethodInfo        ,
#endif
    textViewResetImContext                  ,


-- ** scrollMarkOnscreen #method:scrollMarkOnscreen#

#if defined(ENABLE_OVERLOADING)
    TextViewScrollMarkOnscreenMethodInfo    ,
#endif
    textViewScrollMarkOnscreen              ,


-- ** scrollToIter #method:scrollToIter#

#if defined(ENABLE_OVERLOADING)
    TextViewScrollToIterMethodInfo          ,
#endif
    textViewScrollToIter                    ,


-- ** scrollToMark #method:scrollToMark#

#if defined(ENABLE_OVERLOADING)
    TextViewScrollToMarkMethodInfo          ,
#endif
    textViewScrollToMark                    ,


-- ** setAcceptsTab #method:setAcceptsTab#

#if defined(ENABLE_OVERLOADING)
    TextViewSetAcceptsTabMethodInfo         ,
#endif
    textViewSetAcceptsTab                   ,


-- ** setBorderWindowSize #method:setBorderWindowSize#

#if defined(ENABLE_OVERLOADING)
    TextViewSetBorderWindowSizeMethodInfo   ,
#endif
    textViewSetBorderWindowSize             ,


-- ** setBottomMargin #method:setBottomMargin#

#if defined(ENABLE_OVERLOADING)
    TextViewSetBottomMarginMethodInfo       ,
#endif
    textViewSetBottomMargin                 ,


-- ** setBuffer #method:setBuffer#

#if defined(ENABLE_OVERLOADING)
    TextViewSetBufferMethodInfo             ,
#endif
    textViewSetBuffer                       ,


-- ** setCursorVisible #method:setCursorVisible#

#if defined(ENABLE_OVERLOADING)
    TextViewSetCursorVisibleMethodInfo      ,
#endif
    textViewSetCursorVisible                ,


-- ** setEditable #method:setEditable#

#if defined(ENABLE_OVERLOADING)
    TextViewSetEditableMethodInfo           ,
#endif
    textViewSetEditable                     ,


-- ** setIndent #method:setIndent#

#if defined(ENABLE_OVERLOADING)
    TextViewSetIndentMethodInfo             ,
#endif
    textViewSetIndent                       ,


-- ** setInputHints #method:setInputHints#

#if defined(ENABLE_OVERLOADING)
    TextViewSetInputHintsMethodInfo         ,
#endif
    textViewSetInputHints                   ,


-- ** setInputPurpose #method:setInputPurpose#

#if defined(ENABLE_OVERLOADING)
    TextViewSetInputPurposeMethodInfo       ,
#endif
    textViewSetInputPurpose                 ,


-- ** setJustification #method:setJustification#

#if defined(ENABLE_OVERLOADING)
    TextViewSetJustificationMethodInfo      ,
#endif
    textViewSetJustification                ,


-- ** setLeftMargin #method:setLeftMargin#

#if defined(ENABLE_OVERLOADING)
    TextViewSetLeftMarginMethodInfo         ,
#endif
    textViewSetLeftMargin                   ,


-- ** setMonospace #method:setMonospace#

#if defined(ENABLE_OVERLOADING)
    TextViewSetMonospaceMethodInfo          ,
#endif
    textViewSetMonospace                    ,


-- ** setOverwrite #method:setOverwrite#

#if defined(ENABLE_OVERLOADING)
    TextViewSetOverwriteMethodInfo          ,
#endif
    textViewSetOverwrite                    ,


-- ** setPixelsAboveLines #method:setPixelsAboveLines#

#if defined(ENABLE_OVERLOADING)
    TextViewSetPixelsAboveLinesMethodInfo   ,
#endif
    textViewSetPixelsAboveLines             ,


-- ** setPixelsBelowLines #method:setPixelsBelowLines#

#if defined(ENABLE_OVERLOADING)
    TextViewSetPixelsBelowLinesMethodInfo   ,
#endif
    textViewSetPixelsBelowLines             ,


-- ** setPixelsInsideWrap #method:setPixelsInsideWrap#

#if defined(ENABLE_OVERLOADING)
    TextViewSetPixelsInsideWrapMethodInfo   ,
#endif
    textViewSetPixelsInsideWrap             ,


-- ** setRightMargin #method:setRightMargin#

#if defined(ENABLE_OVERLOADING)
    TextViewSetRightMarginMethodInfo        ,
#endif
    textViewSetRightMargin                  ,


-- ** setTabs #method:setTabs#

#if defined(ENABLE_OVERLOADING)
    TextViewSetTabsMethodInfo               ,
#endif
    textViewSetTabs                         ,


-- ** setTopMargin #method:setTopMargin#

#if defined(ENABLE_OVERLOADING)
    TextViewSetTopMarginMethodInfo          ,
#endif
    textViewSetTopMargin                    ,


-- ** setWrapMode #method:setWrapMode#

#if defined(ENABLE_OVERLOADING)
    TextViewSetWrapModeMethodInfo           ,
#endif
    textViewSetWrapMode                     ,


-- ** startsDisplayLine #method:startsDisplayLine#

#if defined(ENABLE_OVERLOADING)
    TextViewStartsDisplayLineMethodInfo     ,
#endif
    textViewStartsDisplayLine               ,


-- ** windowToBufferCoords #method:windowToBufferCoords#

#if defined(ENABLE_OVERLOADING)
    TextViewWindowToBufferCoordsMethodInfo  ,
#endif
    textViewWindowToBufferCoords            ,




 -- * Properties
-- ** acceptsTab #attr:acceptsTab#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    TextViewAcceptsTabPropertyInfo          ,
#endif
    constructTextViewAcceptsTab             ,
    getTextViewAcceptsTab                   ,
    setTextViewAcceptsTab                   ,
#if defined(ENABLE_OVERLOADING)
    textViewAcceptsTab                      ,
#endif


-- ** bottomMargin #attr:bottomMargin#
-- | The bottom margin for text in the text view.
-- 
-- Note that this property is confusingly named. In CSS terms,
-- the value set here is padding, and it is applied in addition
-- to the padding from the theme.
-- 
-- Don\'t confuse this property with t'GI.Gtk.Objects.Widget.Widget':@/margin-bottom/@.
-- 
-- /Since: 3.18/

#if defined(ENABLE_OVERLOADING)
    TextViewBottomMarginPropertyInfo        ,
#endif
    constructTextViewBottomMargin           ,
    getTextViewBottomMargin                 ,
    setTextViewBottomMargin                 ,
#if defined(ENABLE_OVERLOADING)
    textViewBottomMargin                    ,
#endif


-- ** buffer #attr:buffer#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    TextViewBufferPropertyInfo              ,
#endif
    clearTextViewBuffer                     ,
    constructTextViewBuffer                 ,
    getTextViewBuffer                       ,
    setTextViewBuffer                       ,
#if defined(ENABLE_OVERLOADING)
    textViewBuffer                          ,
#endif


-- ** cursorVisible #attr:cursorVisible#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    TextViewCursorVisiblePropertyInfo       ,
#endif
    constructTextViewCursorVisible          ,
    getTextViewCursorVisible                ,
    setTextViewCursorVisible                ,
#if defined(ENABLE_OVERLOADING)
    textViewCursorVisible                   ,
#endif


-- ** editable #attr:editable#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    TextViewEditablePropertyInfo            ,
#endif
    constructTextViewEditable               ,
    getTextViewEditable                     ,
    setTextViewEditable                     ,
#if defined(ENABLE_OVERLOADING)
    textViewEditable                        ,
#endif


-- ** imModule #attr:imModule#
-- | Which IM (input method) module should be used for this text_view.
-- See t'GI.Gtk.Objects.IMContext.IMContext'.
-- 
-- Setting this to a non-'P.Nothing' value overrides the
-- system-wide IM module setting. See the GtkSettings
-- t'GI.Gtk.Objects.Settings.Settings':@/gtk-im-module/@ property.
-- 
-- /Since: 2.16/

#if defined(ENABLE_OVERLOADING)
    TextViewImModulePropertyInfo            ,
#endif
    clearTextViewImModule                   ,
    constructTextViewImModule               ,
    getTextViewImModule                     ,
    setTextViewImModule                     ,
#if defined(ENABLE_OVERLOADING)
    textViewImModule                        ,
#endif


-- ** indent #attr:indent#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    TextViewIndentPropertyInfo              ,
#endif
    constructTextViewIndent                 ,
    getTextViewIndent                       ,
    setTextViewIndent                       ,
#if defined(ENABLE_OVERLOADING)
    textViewIndent                          ,
#endif


-- ** inputHints #attr:inputHints#
-- | Additional hints (beyond t'GI.Gtk.Objects.TextView.TextView':@/input-purpose/@) that
-- allow input methods to fine-tune their behaviour.
-- 
-- /Since: 3.6/

#if defined(ENABLE_OVERLOADING)
    TextViewInputHintsPropertyInfo          ,
#endif
    constructTextViewInputHints             ,
    getTextViewInputHints                   ,
    setTextViewInputHints                   ,
#if defined(ENABLE_OVERLOADING)
    textViewInputHints                      ,
#endif


-- ** inputPurpose #attr:inputPurpose#
-- | The purpose of this text field.
-- 
-- This property can be used by on-screen keyboards and other input
-- methods to adjust their behaviour.
-- 
-- /Since: 3.6/

#if defined(ENABLE_OVERLOADING)
    TextViewInputPurposePropertyInfo        ,
#endif
    constructTextViewInputPurpose           ,
    getTextViewInputPurpose                 ,
    setTextViewInputPurpose                 ,
#if defined(ENABLE_OVERLOADING)
    textViewInputPurpose                    ,
#endif


-- ** justification #attr:justification#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    TextViewJustificationPropertyInfo       ,
#endif
    constructTextViewJustification          ,
    getTextViewJustification                ,
    setTextViewJustification                ,
#if defined(ENABLE_OVERLOADING)
    textViewJustification                   ,
#endif


-- ** leftMargin #attr:leftMargin#
-- | The default left margin for text in the text view.
-- Tags in the buffer may override the default.
-- 
-- Note that this property is confusingly named. In CSS terms,
-- the value set here is padding, and it is applied in addition
-- to the padding from the theme.
-- 
-- Don\'t confuse this property with t'GI.Gtk.Objects.Widget.Widget':@/margin-left/@.

#if defined(ENABLE_OVERLOADING)
    TextViewLeftMarginPropertyInfo          ,
#endif
    constructTextViewLeftMargin             ,
    getTextViewLeftMargin                   ,
    setTextViewLeftMargin                   ,
#if defined(ENABLE_OVERLOADING)
    textViewLeftMargin                      ,
#endif


-- ** monospace #attr:monospace#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    TextViewMonospacePropertyInfo           ,
#endif
    constructTextViewMonospace              ,
    getTextViewMonospace                    ,
    setTextViewMonospace                    ,
#if defined(ENABLE_OVERLOADING)
    textViewMonospace                       ,
#endif


-- ** overwrite #attr:overwrite#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    TextViewOverwritePropertyInfo           ,
#endif
    constructTextViewOverwrite              ,
    getTextViewOverwrite                    ,
    setTextViewOverwrite                    ,
#if defined(ENABLE_OVERLOADING)
    textViewOverwrite                       ,
#endif


-- ** pixelsAboveLines #attr:pixelsAboveLines#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    TextViewPixelsAboveLinesPropertyInfo    ,
#endif
    constructTextViewPixelsAboveLines       ,
    getTextViewPixelsAboveLines             ,
    setTextViewPixelsAboveLines             ,
#if defined(ENABLE_OVERLOADING)
    textViewPixelsAboveLines                ,
#endif


-- ** pixelsBelowLines #attr:pixelsBelowLines#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    TextViewPixelsBelowLinesPropertyInfo    ,
#endif
    constructTextViewPixelsBelowLines       ,
    getTextViewPixelsBelowLines             ,
    setTextViewPixelsBelowLines             ,
#if defined(ENABLE_OVERLOADING)
    textViewPixelsBelowLines                ,
#endif


-- ** pixelsInsideWrap #attr:pixelsInsideWrap#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    TextViewPixelsInsideWrapPropertyInfo    ,
#endif
    constructTextViewPixelsInsideWrap       ,
    getTextViewPixelsInsideWrap             ,
    setTextViewPixelsInsideWrap             ,
#if defined(ENABLE_OVERLOADING)
    textViewPixelsInsideWrap                ,
#endif


-- ** populateAll #attr:populateAll#
-- | If :populate-all is 'P.True', the [populatePopup]("GI.Gtk.Objects.TextView#signal:populatePopup")
-- signal is also emitted for touch popups.
-- 
-- /Since: 3.8/

#if defined(ENABLE_OVERLOADING)
    TextViewPopulateAllPropertyInfo         ,
#endif
    constructTextViewPopulateAll            ,
    getTextViewPopulateAll                  ,
    setTextViewPopulateAll                  ,
#if defined(ENABLE_OVERLOADING)
    textViewPopulateAll                     ,
#endif


-- ** rightMargin #attr:rightMargin#
-- | The default right margin for text in the text view.
-- Tags in the buffer may override the default.
-- 
-- Note that this property is confusingly named. In CSS terms,
-- the value set here is padding, and it is applied in addition
-- to the padding from the theme.
-- 
-- Don\'t confuse this property with t'GI.Gtk.Objects.Widget.Widget':@/margin-right/@.

#if defined(ENABLE_OVERLOADING)
    TextViewRightMarginPropertyInfo         ,
#endif
    constructTextViewRightMargin            ,
    getTextViewRightMargin                  ,
    setTextViewRightMargin                  ,
#if defined(ENABLE_OVERLOADING)
    textViewRightMargin                     ,
#endif


-- ** tabs #attr:tabs#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    TextViewTabsPropertyInfo                ,
#endif
    constructTextViewTabs                   ,
    getTextViewTabs                         ,
    setTextViewTabs                         ,
#if defined(ENABLE_OVERLOADING)
    textViewTabs                            ,
#endif


-- ** topMargin #attr:topMargin#
-- | The top margin for text in the text view.
-- 
-- Note that this property is confusingly named. In CSS terms,
-- the value set here is padding, and it is applied in addition
-- to the padding from the theme.
-- 
-- Don\'t confuse this property with t'GI.Gtk.Objects.Widget.Widget':@/margin-top/@.
-- 
-- /Since: 3.18/

#if defined(ENABLE_OVERLOADING)
    TextViewTopMarginPropertyInfo           ,
#endif
    constructTextViewTopMargin              ,
    getTextViewTopMargin                    ,
    setTextViewTopMargin                    ,
#if defined(ENABLE_OVERLOADING)
    textViewTopMargin                       ,
#endif


-- ** wrapMode #attr:wrapMode#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    TextViewWrapModePropertyInfo            ,
#endif
    constructTextViewWrapMode               ,
    getTextViewWrapMode                     ,
    setTextViewWrapMode                     ,
#if defined(ENABLE_OVERLOADING)
    textViewWrapMode                        ,
#endif




 -- * Signals
-- ** backspace #signal:backspace#

    C_TextViewBackspaceCallback             ,
    TextViewBackspaceCallback               ,
#if defined(ENABLE_OVERLOADING)
    TextViewBackspaceSignalInfo             ,
#endif
    afterTextViewBackspace                  ,
    genClosure_TextViewBackspace            ,
    mk_TextViewBackspaceCallback            ,
    noTextViewBackspaceCallback             ,
    onTextViewBackspace                     ,
    wrap_TextViewBackspaceCallback          ,


-- ** copyClipboard #signal:copyClipboard#

    C_TextViewCopyClipboardCallback         ,
    TextViewCopyClipboardCallback           ,
#if defined(ENABLE_OVERLOADING)
    TextViewCopyClipboardSignalInfo         ,
#endif
    afterTextViewCopyClipboard              ,
    genClosure_TextViewCopyClipboard        ,
    mk_TextViewCopyClipboardCallback        ,
    noTextViewCopyClipboardCallback         ,
    onTextViewCopyClipboard                 ,
    wrap_TextViewCopyClipboardCallback      ,


-- ** cutClipboard #signal:cutClipboard#

    C_TextViewCutClipboardCallback          ,
    TextViewCutClipboardCallback            ,
#if defined(ENABLE_OVERLOADING)
    TextViewCutClipboardSignalInfo          ,
#endif
    afterTextViewCutClipboard               ,
    genClosure_TextViewCutClipboard         ,
    mk_TextViewCutClipboardCallback         ,
    noTextViewCutClipboardCallback          ,
    onTextViewCutClipboard                  ,
    wrap_TextViewCutClipboardCallback       ,


-- ** deleteFromCursor #signal:deleteFromCursor#

    C_TextViewDeleteFromCursorCallback      ,
    TextViewDeleteFromCursorCallback        ,
#if defined(ENABLE_OVERLOADING)
    TextViewDeleteFromCursorSignalInfo      ,
#endif
    afterTextViewDeleteFromCursor           ,
    genClosure_TextViewDeleteFromCursor     ,
    mk_TextViewDeleteFromCursorCallback     ,
    noTextViewDeleteFromCursorCallback      ,
    onTextViewDeleteFromCursor              ,
    wrap_TextViewDeleteFromCursorCallback   ,


-- ** extendSelection #signal:extendSelection#

    C_TextViewExtendSelectionCallback       ,
    TextViewExtendSelectionCallback         ,
#if defined(ENABLE_OVERLOADING)
    TextViewExtendSelectionSignalInfo       ,
#endif
    afterTextViewExtendSelection            ,
    genClosure_TextViewExtendSelection      ,
    mk_TextViewExtendSelectionCallback      ,
    noTextViewExtendSelectionCallback       ,
    onTextViewExtendSelection               ,
    wrap_TextViewExtendSelectionCallback    ,


-- ** insertAtCursor #signal:insertAtCursor#

    C_TextViewInsertAtCursorCallback        ,
    TextViewInsertAtCursorCallback          ,
#if defined(ENABLE_OVERLOADING)
    TextViewInsertAtCursorSignalInfo        ,
#endif
    afterTextViewInsertAtCursor             ,
    genClosure_TextViewInsertAtCursor       ,
    mk_TextViewInsertAtCursorCallback       ,
    noTextViewInsertAtCursorCallback        ,
    onTextViewInsertAtCursor                ,
    wrap_TextViewInsertAtCursorCallback     ,


-- ** insertEmoji #signal:insertEmoji#

    C_TextViewInsertEmojiCallback           ,
    TextViewInsertEmojiCallback             ,
#if defined(ENABLE_OVERLOADING)
    TextViewInsertEmojiSignalInfo           ,
#endif
    afterTextViewInsertEmoji                ,
    genClosure_TextViewInsertEmoji          ,
    mk_TextViewInsertEmojiCallback          ,
    noTextViewInsertEmojiCallback           ,
    onTextViewInsertEmoji                   ,
    wrap_TextViewInsertEmojiCallback        ,


-- ** moveCursor #signal:moveCursor#

    C_TextViewMoveCursorCallback            ,
    TextViewMoveCursorCallback              ,
#if defined(ENABLE_OVERLOADING)
    TextViewMoveCursorSignalInfo            ,
#endif
    afterTextViewMoveCursor                 ,
    genClosure_TextViewMoveCursor           ,
    mk_TextViewMoveCursorCallback           ,
    noTextViewMoveCursorCallback            ,
    onTextViewMoveCursor                    ,
    wrap_TextViewMoveCursorCallback         ,


-- ** moveViewport #signal:moveViewport#

    C_TextViewMoveViewportCallback          ,
    TextViewMoveViewportCallback            ,
#if defined(ENABLE_OVERLOADING)
    TextViewMoveViewportSignalInfo          ,
#endif
    afterTextViewMoveViewport               ,
    genClosure_TextViewMoveViewport         ,
    mk_TextViewMoveViewportCallback         ,
    noTextViewMoveViewportCallback          ,
    onTextViewMoveViewport                  ,
    wrap_TextViewMoveViewportCallback       ,


-- ** pasteClipboard #signal:pasteClipboard#

    C_TextViewPasteClipboardCallback        ,
    TextViewPasteClipboardCallback          ,
#if defined(ENABLE_OVERLOADING)
    TextViewPasteClipboardSignalInfo        ,
#endif
    afterTextViewPasteClipboard             ,
    genClosure_TextViewPasteClipboard       ,
    mk_TextViewPasteClipboardCallback       ,
    noTextViewPasteClipboardCallback        ,
    onTextViewPasteClipboard                ,
    wrap_TextViewPasteClipboardCallback     ,


-- ** populatePopup #signal:populatePopup#

    C_TextViewPopulatePopupCallback         ,
    TextViewPopulatePopupCallback           ,
#if defined(ENABLE_OVERLOADING)
    TextViewPopulatePopupSignalInfo         ,
#endif
    afterTextViewPopulatePopup              ,
    genClosure_TextViewPopulatePopup        ,
    mk_TextViewPopulatePopupCallback        ,
    noTextViewPopulatePopupCallback         ,
    onTextViewPopulatePopup                 ,
    wrap_TextViewPopulatePopupCallback      ,


-- ** preeditChanged #signal:preeditChanged#

    C_TextViewPreeditChangedCallback        ,
    TextViewPreeditChangedCallback          ,
#if defined(ENABLE_OVERLOADING)
    TextViewPreeditChangedSignalInfo        ,
#endif
    afterTextViewPreeditChanged             ,
    genClosure_TextViewPreeditChanged       ,
    mk_TextViewPreeditChangedCallback       ,
    noTextViewPreeditChangedCallback        ,
    onTextViewPreeditChanged                ,
    wrap_TextViewPreeditChangedCallback     ,


-- ** selectAll #signal:selectAll#

    C_TextViewSelectAllCallback             ,
    TextViewSelectAllCallback               ,
#if defined(ENABLE_OVERLOADING)
    TextViewSelectAllSignalInfo             ,
#endif
    afterTextViewSelectAll                  ,
    genClosure_TextViewSelectAll            ,
    mk_TextViewSelectAllCallback            ,
    noTextViewSelectAllCallback             ,
    onTextViewSelectAll                     ,
    wrap_TextViewSelectAllCallback          ,


-- ** setAnchor #signal:setAnchor#

    C_TextViewSetAnchorCallback             ,
    TextViewSetAnchorCallback               ,
#if defined(ENABLE_OVERLOADING)
    TextViewSetAnchorSignalInfo             ,
#endif
    afterTextViewSetAnchor                  ,
    genClosure_TextViewSetAnchor            ,
    mk_TextViewSetAnchorCallback            ,
    noTextViewSetAnchorCallback             ,
    onTextViewSetAnchor                     ,
    wrap_TextViewSetAnchorCallback          ,


-- ** toggleCursorVisible #signal:toggleCursorVisible#

    C_TextViewToggleCursorVisibleCallback   ,
    TextViewToggleCursorVisibleCallback     ,
#if defined(ENABLE_OVERLOADING)
    TextViewToggleCursorVisibleSignalInfo   ,
#endif
    afterTextViewToggleCursorVisible        ,
    genClosure_TextViewToggleCursorVisible  ,
    mk_TextViewToggleCursorVisibleCallback  ,
    noTextViewToggleCursorVisibleCallback   ,
    onTextViewToggleCursorVisible           ,
    wrap_TextViewToggleCursorVisibleCallback,


-- ** toggleOverwrite #signal:toggleOverwrite#

    C_TextViewToggleOverwriteCallback       ,
    TextViewToggleOverwriteCallback         ,
#if defined(ENABLE_OVERLOADING)
    TextViewToggleOverwriteSignalInfo       ,
#endif
    afterTextViewToggleOverwrite            ,
    genClosure_TextViewToggleOverwrite      ,
    mk_TextViewToggleOverwriteCallback      ,
    noTextViewToggleOverwriteCallback       ,
    onTextViewToggleOverwrite               ,
    wrap_TextViewToggleOverwriteCallback    ,




    ) where

import Data.GI.Base.ShortPrelude
import qualified Data.GI.Base.ShortPrelude as SP
import qualified Data.GI.Base.Overloading as O
import qualified Prelude as P

import qualified Data.GI.Base.Attributes as GI.Attributes
import qualified Data.GI.Base.ManagedPtr as B.ManagedPtr
import qualified Data.GI.Base.GClosure as B.GClosure
import qualified Data.GI.Base.GError as B.GError
import qualified Data.GI.Base.GVariant as B.GVariant
import qualified Data.GI.Base.GValue as B.GValue
import qualified Data.GI.Base.GParamSpec as B.GParamSpec
import qualified Data.GI.Base.CallStack as B.CallStack
import qualified Data.GI.Base.Properties as B.Properties
import qualified Data.GI.Base.Signals as B.Signals
import qualified Data.Text as T
import qualified Data.ByteString.Char8 as B
import qualified Data.Map as Map
import qualified Foreign.Ptr as FP
import qualified GHC.OverloadedLabels as OL

import qualified GI.Atk.Interfaces.ImplementorIface as Atk.ImplementorIface
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.Gdk.Objects.Window as Gdk.Window
import qualified GI.Gdk.Structs.EventKey as Gdk.EventKey
import qualified GI.Gdk.Structs.Rectangle as Gdk.Rectangle
import {-# SOURCE #-} qualified GI.Gtk.Enums as Gtk.Enums
import {-# SOURCE #-} qualified GI.Gtk.Flags as Gtk.Flags
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Scrollable as Gtk.Scrollable
import {-# SOURCE #-} qualified GI.Gtk.Objects.Adjustment as Gtk.Adjustment
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.TextBuffer as Gtk.TextBuffer
import {-# SOURCE #-} qualified GI.Gtk.Objects.TextChildAnchor as Gtk.TextChildAnchor
import {-# SOURCE #-} qualified GI.Gtk.Objects.TextMark as Gtk.TextMark
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget
import {-# SOURCE #-} qualified GI.Gtk.Structs.TextAttributes as Gtk.TextAttributes
import {-# SOURCE #-} qualified GI.Gtk.Structs.TextIter as Gtk.TextIter
import qualified GI.Pango.Structs.TabArray as Pango.TabArray

-- | Memory-managed wrapper type.
newtype TextView = TextView (ManagedPtr TextView)
    deriving (Eq)
foreign import ccall "gtk_text_view_get_type"
    c_gtk_text_view_get_type :: IO GType

instance GObject TextView where
    gobjectType = c_gtk_text_view_get_type
    

-- | Convert 'TextView' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue TextView where
    toGValue o = do
        gtype <- c_gtk_text_view_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr TextView)
        B.ManagedPtr.newObject TextView ptr
        
    

-- | Type class for types which can be safely cast to `TextView`, for instance with `toTextView`.
class (GObject o, O.IsDescendantOf TextView o) => IsTextView o
instance (GObject o, O.IsDescendantOf TextView o) => IsTextView o

instance O.HasParentTypes TextView
type instance O.ParentTypes TextView = '[Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable, Gtk.Scrollable.Scrollable]

-- | Cast to `TextView`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toTextView :: (MonadIO m, IsTextView o) => o -> m TextView
toTextView = liftIO . unsafeCastTo TextView

-- | A convenience alias for `Nothing` :: `Maybe` `TextView`.
noTextView :: Maybe TextView
noTextView = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveTextViewMethod (t :: Symbol) (o :: *) :: * where
    ResolveTextViewMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveTextViewMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveTextViewMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveTextViewMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveTextViewMethod "addChildAtAnchor" o = TextViewAddChildAtAnchorMethodInfo
    ResolveTextViewMethod "addChildInWindow" o = TextViewAddChildInWindowMethodInfo
    ResolveTextViewMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveTextViewMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveTextViewMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveTextViewMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveTextViewMethod "backwardDisplayLine" o = TextViewBackwardDisplayLineMethodInfo
    ResolveTextViewMethod "backwardDisplayLineStart" o = TextViewBackwardDisplayLineStartMethodInfo
    ResolveTextViewMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveTextViewMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveTextViewMethod "bufferToWindowCoords" o = TextViewBufferToWindowCoordsMethodInfo
    ResolveTextViewMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveTextViewMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveTextViewMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveTextViewMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveTextViewMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveTextViewMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveTextViewMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveTextViewMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveTextViewMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveTextViewMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveTextViewMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveTextViewMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveTextViewMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveTextViewMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveTextViewMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveTextViewMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveTextViewMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveTextViewMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveTextViewMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveTextViewMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveTextViewMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveTextViewMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveTextViewMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveTextViewMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveTextViewMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveTextViewMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveTextViewMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveTextViewMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveTextViewMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveTextViewMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveTextViewMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveTextViewMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveTextViewMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveTextViewMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveTextViewMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveTextViewMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveTextViewMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveTextViewMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveTextViewMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveTextViewMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveTextViewMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveTextViewMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveTextViewMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveTextViewMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveTextViewMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveTextViewMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveTextViewMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveTextViewMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveTextViewMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveTextViewMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveTextViewMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveTextViewMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveTextViewMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveTextViewMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveTextViewMethod "forwardDisplayLine" o = TextViewForwardDisplayLineMethodInfo
    ResolveTextViewMethod "forwardDisplayLineEnd" o = TextViewForwardDisplayLineEndMethodInfo
    ResolveTextViewMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveTextViewMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveTextViewMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveTextViewMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveTextViewMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveTextViewMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveTextViewMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveTextViewMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveTextViewMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveTextViewMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveTextViewMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveTextViewMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveTextViewMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveTextViewMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveTextViewMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveTextViewMethod "imContextFilterKeypress" o = TextViewImContextFilterKeypressMethodInfo
    ResolveTextViewMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveTextViewMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveTextViewMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveTextViewMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveTextViewMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveTextViewMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveTextViewMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveTextViewMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveTextViewMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveTextViewMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveTextViewMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveTextViewMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveTextViewMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveTextViewMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveTextViewMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveTextViewMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveTextViewMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveTextViewMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveTextViewMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveTextViewMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveTextViewMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveTextViewMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveTextViewMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveTextViewMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveTextViewMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveTextViewMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveTextViewMethod "moveChild" o = TextViewMoveChildMethodInfo
    ResolveTextViewMethod "moveMarkOnscreen" o = TextViewMoveMarkOnscreenMethodInfo
    ResolveTextViewMethod "moveVisually" o = TextViewMoveVisuallyMethodInfo
    ResolveTextViewMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveTextViewMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveTextViewMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveTextViewMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveTextViewMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveTextViewMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveTextViewMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveTextViewMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveTextViewMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveTextViewMethod "placeCursorOnscreen" o = TextViewPlaceCursorOnscreenMethodInfo
    ResolveTextViewMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveTextViewMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveTextViewMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveTextViewMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveTextViewMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveTextViewMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveTextViewMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveTextViewMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveTextViewMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveTextViewMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveTextViewMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveTextViewMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveTextViewMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveTextViewMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveTextViewMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveTextViewMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveTextViewMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveTextViewMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveTextViewMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveTextViewMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveTextViewMethod "resetCursorBlink" o = TextViewResetCursorBlinkMethodInfo
    ResolveTextViewMethod "resetImContext" o = TextViewResetImContextMethodInfo
    ResolveTextViewMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveTextViewMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveTextViewMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveTextViewMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveTextViewMethod "scrollMarkOnscreen" o = TextViewScrollMarkOnscreenMethodInfo
    ResolveTextViewMethod "scrollToIter" o = TextViewScrollToIterMethodInfo
    ResolveTextViewMethod "scrollToMark" o = TextViewScrollToMarkMethodInfo
    ResolveTextViewMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveTextViewMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveTextViewMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveTextViewMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveTextViewMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveTextViewMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveTextViewMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveTextViewMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveTextViewMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveTextViewMethod "startsDisplayLine" o = TextViewStartsDisplayLineMethodInfo
    ResolveTextViewMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveTextViewMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveTextViewMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveTextViewMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveTextViewMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveTextViewMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveTextViewMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveTextViewMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveTextViewMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveTextViewMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveTextViewMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveTextViewMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveTextViewMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveTextViewMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveTextViewMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveTextViewMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveTextViewMethod "windowToBufferCoords" o = TextViewWindowToBufferCoordsMethodInfo
    ResolveTextViewMethod "getAcceptsTab" o = TextViewGetAcceptsTabMethodInfo
    ResolveTextViewMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveTextViewMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveTextViewMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveTextViewMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveTextViewMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveTextViewMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveTextViewMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveTextViewMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveTextViewMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveTextViewMethod "getBorder" o = Gtk.Scrollable.ScrollableGetBorderMethodInfo
    ResolveTextViewMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveTextViewMethod "getBorderWindowSize" o = TextViewGetBorderWindowSizeMethodInfo
    ResolveTextViewMethod "getBottomMargin" o = TextViewGetBottomMarginMethodInfo
    ResolveTextViewMethod "getBuffer" o = TextViewGetBufferMethodInfo
    ResolveTextViewMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveTextViewMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveTextViewMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveTextViewMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveTextViewMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveTextViewMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveTextViewMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveTextViewMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveTextViewMethod "getCursorLocations" o = TextViewGetCursorLocationsMethodInfo
    ResolveTextViewMethod "getCursorVisible" o = TextViewGetCursorVisibleMethodInfo
    ResolveTextViewMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveTextViewMethod "getDefaultAttributes" o = TextViewGetDefaultAttributesMethodInfo
    ResolveTextViewMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveTextViewMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveTextViewMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveTextViewMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveTextViewMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveTextViewMethod "getEditable" o = TextViewGetEditableMethodInfo
    ResolveTextViewMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveTextViewMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveTextViewMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveTextViewMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveTextViewMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveTextViewMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveTextViewMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveTextViewMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveTextViewMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveTextViewMethod "getHadjustment" o = TextViewGetHadjustmentMethodInfo
    ResolveTextViewMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveTextViewMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveTextViewMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveTextViewMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveTextViewMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveTextViewMethod "getHscrollPolicy" o = Gtk.Scrollable.ScrollableGetHscrollPolicyMethodInfo
    ResolveTextViewMethod "getIndent" o = TextViewGetIndentMethodInfo
    ResolveTextViewMethod "getInputHints" o = TextViewGetInputHintsMethodInfo
    ResolveTextViewMethod "getInputPurpose" o = TextViewGetInputPurposeMethodInfo
    ResolveTextViewMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveTextViewMethod "getIterAtLocation" o = TextViewGetIterAtLocationMethodInfo
    ResolveTextViewMethod "getIterAtPosition" o = TextViewGetIterAtPositionMethodInfo
    ResolveTextViewMethod "getIterLocation" o = TextViewGetIterLocationMethodInfo
    ResolveTextViewMethod "getJustification" o = TextViewGetJustificationMethodInfo
    ResolveTextViewMethod "getLeftMargin" o = TextViewGetLeftMarginMethodInfo
    ResolveTextViewMethod "getLineAtY" o = TextViewGetLineAtYMethodInfo
    ResolveTextViewMethod "getLineYrange" o = TextViewGetLineYrangeMethodInfo
    ResolveTextViewMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveTextViewMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveTextViewMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveTextViewMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveTextViewMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveTextViewMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveTextViewMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveTextViewMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveTextViewMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveTextViewMethod "getMonospace" o = TextViewGetMonospaceMethodInfo
    ResolveTextViewMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveTextViewMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveTextViewMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveTextViewMethod "getOverwrite" o = TextViewGetOverwriteMethodInfo
    ResolveTextViewMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveTextViewMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveTextViewMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveTextViewMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveTextViewMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveTextViewMethod "getPixelsAboveLines" o = TextViewGetPixelsAboveLinesMethodInfo
    ResolveTextViewMethod "getPixelsBelowLines" o = TextViewGetPixelsBelowLinesMethodInfo
    ResolveTextViewMethod "getPixelsInsideWrap" o = TextViewGetPixelsInsideWrapMethodInfo
    ResolveTextViewMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveTextViewMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveTextViewMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveTextViewMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveTextViewMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveTextViewMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveTextViewMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveTextViewMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveTextViewMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveTextViewMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveTextViewMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveTextViewMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveTextViewMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveTextViewMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveTextViewMethod "getRightMargin" o = TextViewGetRightMarginMethodInfo
    ResolveTextViewMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveTextViewMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveTextViewMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveTextViewMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveTextViewMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveTextViewMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveTextViewMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveTextViewMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveTextViewMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveTextViewMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveTextViewMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveTextViewMethod "getTabs" o = TextViewGetTabsMethodInfo
    ResolveTextViewMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveTextViewMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveTextViewMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveTextViewMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveTextViewMethod "getTopMargin" o = TextViewGetTopMarginMethodInfo
    ResolveTextViewMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveTextViewMethod "getVadjustment" o = TextViewGetVadjustmentMethodInfo
    ResolveTextViewMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveTextViewMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveTextViewMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveTextViewMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveTextViewMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveTextViewMethod "getVisibleRect" o = TextViewGetVisibleRectMethodInfo
    ResolveTextViewMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveTextViewMethod "getVscrollPolicy" o = Gtk.Scrollable.ScrollableGetVscrollPolicyMethodInfo
    ResolveTextViewMethod "getWindow" o = TextViewGetWindowMethodInfo
    ResolveTextViewMethod "getWindowType" o = TextViewGetWindowTypeMethodInfo
    ResolveTextViewMethod "getWrapMode" o = TextViewGetWrapModeMethodInfo
    ResolveTextViewMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveTextViewMethod "setAcceptsTab" o = TextViewSetAcceptsTabMethodInfo
    ResolveTextViewMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveTextViewMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveTextViewMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveTextViewMethod "setBorderWindowSize" o = TextViewSetBorderWindowSizeMethodInfo
    ResolveTextViewMethod "setBottomMargin" o = TextViewSetBottomMarginMethodInfo
    ResolveTextViewMethod "setBuffer" o = TextViewSetBufferMethodInfo
    ResolveTextViewMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveTextViewMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveTextViewMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveTextViewMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveTextViewMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveTextViewMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveTextViewMethod "setCursorVisible" o = TextViewSetCursorVisibleMethodInfo
    ResolveTextViewMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveTextViewMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveTextViewMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveTextViewMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveTextViewMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveTextViewMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveTextViewMethod "setEditable" o = TextViewSetEditableMethodInfo
    ResolveTextViewMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveTextViewMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveTextViewMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveTextViewMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveTextViewMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveTextViewMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveTextViewMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveTextViewMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveTextViewMethod "setHadjustment" o = Gtk.Scrollable.ScrollableSetHadjustmentMethodInfo
    ResolveTextViewMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveTextViewMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveTextViewMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveTextViewMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveTextViewMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveTextViewMethod "setHscrollPolicy" o = Gtk.Scrollable.ScrollableSetHscrollPolicyMethodInfo
    ResolveTextViewMethod "setIndent" o = TextViewSetIndentMethodInfo
    ResolveTextViewMethod "setInputHints" o = TextViewSetInputHintsMethodInfo
    ResolveTextViewMethod "setInputPurpose" o = TextViewSetInputPurposeMethodInfo
    ResolveTextViewMethod "setJustification" o = TextViewSetJustificationMethodInfo
    ResolveTextViewMethod "setLeftMargin" o = TextViewSetLeftMarginMethodInfo
    ResolveTextViewMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveTextViewMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveTextViewMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveTextViewMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveTextViewMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveTextViewMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveTextViewMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveTextViewMethod "setMonospace" o = TextViewSetMonospaceMethodInfo
    ResolveTextViewMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveTextViewMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveTextViewMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveTextViewMethod "setOverwrite" o = TextViewSetOverwriteMethodInfo
    ResolveTextViewMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveTextViewMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveTextViewMethod "setPixelsAboveLines" o = TextViewSetPixelsAboveLinesMethodInfo
    ResolveTextViewMethod "setPixelsBelowLines" o = TextViewSetPixelsBelowLinesMethodInfo
    ResolveTextViewMethod "setPixelsInsideWrap" o = TextViewSetPixelsInsideWrapMethodInfo
    ResolveTextViewMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveTextViewMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveTextViewMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveTextViewMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveTextViewMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveTextViewMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveTextViewMethod "setRightMargin" o = TextViewSetRightMarginMethodInfo
    ResolveTextViewMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveTextViewMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveTextViewMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveTextViewMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveTextViewMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveTextViewMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveTextViewMethod "setTabs" o = TextViewSetTabsMethodInfo
    ResolveTextViewMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveTextViewMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveTextViewMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveTextViewMethod "setTopMargin" o = TextViewSetTopMarginMethodInfo
    ResolveTextViewMethod "setVadjustment" o = Gtk.Scrollable.ScrollableSetVadjustmentMethodInfo
    ResolveTextViewMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveTextViewMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveTextViewMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveTextViewMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveTextViewMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveTextViewMethod "setVscrollPolicy" o = Gtk.Scrollable.ScrollableSetVscrollPolicyMethodInfo
    ResolveTextViewMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveTextViewMethod "setWrapMode" o = TextViewSetWrapModeMethodInfo
    ResolveTextViewMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveTextViewMethod t TextView, O.MethodInfo info TextView p) => OL.IsLabel t (TextView -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal TextView::backspace
-- | The [backspace](#signal:backspace) signal is a
-- [keybinding signal][GtkBindingSignal]
-- which gets emitted when the user asks for it.
-- 
-- The default bindings for this signal are
-- Backspace and Shift-Backspace.
type TextViewBackspaceCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `TextViewBackspaceCallback`@.
noTextViewBackspaceCallback :: Maybe TextViewBackspaceCallback
noTextViewBackspaceCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_TextViewBackspaceCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_TextViewBackspaceCallback`.
foreign import ccall "wrapper"
    mk_TextViewBackspaceCallback :: C_TextViewBackspaceCallback -> IO (FunPtr C_TextViewBackspaceCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_TextViewBackspace :: MonadIO m => TextViewBackspaceCallback -> m (GClosure C_TextViewBackspaceCallback)
genClosure_TextViewBackspace cb = liftIO $ do
    let cb' = wrap_TextViewBackspaceCallback cb
    mk_TextViewBackspaceCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `TextViewBackspaceCallback` into a `C_TextViewBackspaceCallback`.
wrap_TextViewBackspaceCallback ::
    TextViewBackspaceCallback ->
    C_TextViewBackspaceCallback
wrap_TextViewBackspaceCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [backspace](#signal:backspace) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' textView #backspace callback
-- @
-- 
-- 
onTextViewBackspace :: (IsTextView a, MonadIO m) => a -> TextViewBackspaceCallback -> m SignalHandlerId
onTextViewBackspace obj cb = liftIO $ do
    let cb' = wrap_TextViewBackspaceCallback cb
    cb'' <- mk_TextViewBackspaceCallback cb'
    connectSignalFunPtr obj "backspace" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [backspace](#signal:backspace) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' textView #backspace callback
-- @
-- 
-- 
afterTextViewBackspace :: (IsTextView a, MonadIO m) => a -> TextViewBackspaceCallback -> m SignalHandlerId
afterTextViewBackspace obj cb = liftIO $ do
    let cb' = wrap_TextViewBackspaceCallback cb
    cb'' <- mk_TextViewBackspaceCallback cb'
    connectSignalFunPtr obj "backspace" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data TextViewBackspaceSignalInfo
instance SignalInfo TextViewBackspaceSignalInfo where
    type HaskellCallbackType TextViewBackspaceSignalInfo = TextViewBackspaceCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_TextViewBackspaceCallback cb
        cb'' <- mk_TextViewBackspaceCallback cb'
        connectSignalFunPtr obj "backspace" cb'' connectMode detail

#endif

-- signal TextView::copy-clipboard
-- | The [copyClipboard](#signal:copyClipboard) signal is a
-- [keybinding signal][GtkBindingSignal]
-- which gets emitted to copy the selection to the clipboard.
-- 
-- The default bindings for this signal are
-- Ctrl-c and Ctrl-Insert.
type TextViewCopyClipboardCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `TextViewCopyClipboardCallback`@.
noTextViewCopyClipboardCallback :: Maybe TextViewCopyClipboardCallback
noTextViewCopyClipboardCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_TextViewCopyClipboardCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_TextViewCopyClipboardCallback`.
foreign import ccall "wrapper"
    mk_TextViewCopyClipboardCallback :: C_TextViewCopyClipboardCallback -> IO (FunPtr C_TextViewCopyClipboardCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_TextViewCopyClipboard :: MonadIO m => TextViewCopyClipboardCallback -> m (GClosure C_TextViewCopyClipboardCallback)
genClosure_TextViewCopyClipboard cb = liftIO $ do
    let cb' = wrap_TextViewCopyClipboardCallback cb
    mk_TextViewCopyClipboardCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `TextViewCopyClipboardCallback` into a `C_TextViewCopyClipboardCallback`.
wrap_TextViewCopyClipboardCallback ::
    TextViewCopyClipboardCallback ->
    C_TextViewCopyClipboardCallback
wrap_TextViewCopyClipboardCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [copyClipboard](#signal:copyClipboard) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' textView #copyClipboard callback
-- @
-- 
-- 
onTextViewCopyClipboard :: (IsTextView a, MonadIO m) => a -> TextViewCopyClipboardCallback -> m SignalHandlerId
onTextViewCopyClipboard obj cb = liftIO $ do
    let cb' = wrap_TextViewCopyClipboardCallback cb
    cb'' <- mk_TextViewCopyClipboardCallback cb'
    connectSignalFunPtr obj "copy-clipboard" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [copyClipboard](#signal:copyClipboard) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' textView #copyClipboard callback
-- @
-- 
-- 
afterTextViewCopyClipboard :: (IsTextView a, MonadIO m) => a -> TextViewCopyClipboardCallback -> m SignalHandlerId
afterTextViewCopyClipboard obj cb = liftIO $ do
    let cb' = wrap_TextViewCopyClipboardCallback cb
    cb'' <- mk_TextViewCopyClipboardCallback cb'
    connectSignalFunPtr obj "copy-clipboard" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data TextViewCopyClipboardSignalInfo
instance SignalInfo TextViewCopyClipboardSignalInfo where
    type HaskellCallbackType TextViewCopyClipboardSignalInfo = TextViewCopyClipboardCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_TextViewCopyClipboardCallback cb
        cb'' <- mk_TextViewCopyClipboardCallback cb'
        connectSignalFunPtr obj "copy-clipboard" cb'' connectMode detail

#endif

-- signal TextView::cut-clipboard
-- | The [cutClipboard](#signal:cutClipboard) signal is a
-- [keybinding signal][GtkBindingSignal]
-- which gets emitted to cut the selection to the clipboard.
-- 
-- The default bindings for this signal are
-- Ctrl-x and Shift-Delete.
type TextViewCutClipboardCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `TextViewCutClipboardCallback`@.
noTextViewCutClipboardCallback :: Maybe TextViewCutClipboardCallback
noTextViewCutClipboardCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_TextViewCutClipboardCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_TextViewCutClipboardCallback`.
foreign import ccall "wrapper"
    mk_TextViewCutClipboardCallback :: C_TextViewCutClipboardCallback -> IO (FunPtr C_TextViewCutClipboardCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_TextViewCutClipboard :: MonadIO m => TextViewCutClipboardCallback -> m (GClosure C_TextViewCutClipboardCallback)
genClosure_TextViewCutClipboard cb = liftIO $ do
    let cb' = wrap_TextViewCutClipboardCallback cb
    mk_TextViewCutClipboardCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `TextViewCutClipboardCallback` into a `C_TextViewCutClipboardCallback`.
wrap_TextViewCutClipboardCallback ::
    TextViewCutClipboardCallback ->
    C_TextViewCutClipboardCallback
wrap_TextViewCutClipboardCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [cutClipboard](#signal:cutClipboard) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' textView #cutClipboard callback
-- @
-- 
-- 
onTextViewCutClipboard :: (IsTextView a, MonadIO m) => a -> TextViewCutClipboardCallback -> m SignalHandlerId
onTextViewCutClipboard obj cb = liftIO $ do
    let cb' = wrap_TextViewCutClipboardCallback cb
    cb'' <- mk_TextViewCutClipboardCallback cb'
    connectSignalFunPtr obj "cut-clipboard" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [cutClipboard](#signal:cutClipboard) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' textView #cutClipboard callback
-- @
-- 
-- 
afterTextViewCutClipboard :: (IsTextView a, MonadIO m) => a -> TextViewCutClipboardCallback -> m SignalHandlerId
afterTextViewCutClipboard obj cb = liftIO $ do
    let cb' = wrap_TextViewCutClipboardCallback cb
    cb'' <- mk_TextViewCutClipboardCallback cb'
    connectSignalFunPtr obj "cut-clipboard" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data TextViewCutClipboardSignalInfo
instance SignalInfo TextViewCutClipboardSignalInfo where
    type HaskellCallbackType TextViewCutClipboardSignalInfo = TextViewCutClipboardCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_TextViewCutClipboardCallback cb
        cb'' <- mk_TextViewCutClipboardCallback cb'
        connectSignalFunPtr obj "cut-clipboard" cb'' connectMode detail

#endif

-- signal TextView::delete-from-cursor
-- | The [deleteFromCursor](#signal:deleteFromCursor) signal is a
-- [keybinding signal][GtkBindingSignal]
-- which gets emitted when the user initiates a text deletion.
-- 
-- If the /@type@/ is 'GI.Gtk.Enums.DeleteTypeChars', GTK+ deletes the selection
-- if there is one, otherwise it deletes the requested number
-- of characters.
-- 
-- The default bindings for this signal are
-- Delete for deleting a character, Ctrl-Delete for
-- deleting a word and Ctrl-Backspace for deleting a word
-- backwords.
type TextViewDeleteFromCursorCallback =
    Gtk.Enums.DeleteType
    -- ^ /@type@/: the granularity of the deletion, as a t'GI.Gtk.Enums.DeleteType'
    -> Int32
    -- ^ /@count@/: the number of /@type@/ units to delete
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `TextViewDeleteFromCursorCallback`@.
noTextViewDeleteFromCursorCallback :: Maybe TextViewDeleteFromCursorCallback
noTextViewDeleteFromCursorCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_TextViewDeleteFromCursorCallback =
    Ptr () ->                               -- object
    CUInt ->
    Int32 ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_TextViewDeleteFromCursorCallback`.
foreign import ccall "wrapper"
    mk_TextViewDeleteFromCursorCallback :: C_TextViewDeleteFromCursorCallback -> IO (FunPtr C_TextViewDeleteFromCursorCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_TextViewDeleteFromCursor :: MonadIO m => TextViewDeleteFromCursorCallback -> m (GClosure C_TextViewDeleteFromCursorCallback)
genClosure_TextViewDeleteFromCursor cb = liftIO $ do
    let cb' = wrap_TextViewDeleteFromCursorCallback cb
    mk_TextViewDeleteFromCursorCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `TextViewDeleteFromCursorCallback` into a `C_TextViewDeleteFromCursorCallback`.
wrap_TextViewDeleteFromCursorCallback ::
    TextViewDeleteFromCursorCallback ->
    C_TextViewDeleteFromCursorCallback
wrap_TextViewDeleteFromCursorCallback _cb _ type_ count _ = do
    let type_' = (toEnum . fromIntegral) type_
    _cb  type_' count


-- | Connect a signal handler for the [deleteFromCursor](#signal:deleteFromCursor) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' textView #deleteFromCursor callback
-- @
-- 
-- 
onTextViewDeleteFromCursor :: (IsTextView a, MonadIO m) => a -> TextViewDeleteFromCursorCallback -> m SignalHandlerId
onTextViewDeleteFromCursor obj cb = liftIO $ do
    let cb' = wrap_TextViewDeleteFromCursorCallback cb
    cb'' <- mk_TextViewDeleteFromCursorCallback cb'
    connectSignalFunPtr obj "delete-from-cursor" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [deleteFromCursor](#signal:deleteFromCursor) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' textView #deleteFromCursor callback
-- @
-- 
-- 
afterTextViewDeleteFromCursor :: (IsTextView a, MonadIO m) => a -> TextViewDeleteFromCursorCallback -> m SignalHandlerId
afterTextViewDeleteFromCursor obj cb = liftIO $ do
    let cb' = wrap_TextViewDeleteFromCursorCallback cb
    cb'' <- mk_TextViewDeleteFromCursorCallback cb'
    connectSignalFunPtr obj "delete-from-cursor" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data TextViewDeleteFromCursorSignalInfo
instance SignalInfo TextViewDeleteFromCursorSignalInfo where
    type HaskellCallbackType TextViewDeleteFromCursorSignalInfo = TextViewDeleteFromCursorCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_TextViewDeleteFromCursorCallback cb
        cb'' <- mk_TextViewDeleteFromCursorCallback cb'
        connectSignalFunPtr obj "delete-from-cursor" cb'' connectMode detail

#endif

-- signal TextView::extend-selection
-- | The [extendSelection](#signal:extendSelection) signal is emitted when the selection needs to be
-- extended at /@location@/.
-- 
-- /Since: 3.16/
type TextViewExtendSelectionCallback =
    Gtk.Enums.TextExtendSelection
    -- ^ /@granularity@/: the granularity type
    -> Gtk.TextIter.TextIter
    -- ^ /@location@/: the location where to extend the selection
    -> Gtk.TextIter.TextIter
    -- ^ /@start@/: where the selection should start
    -> Gtk.TextIter.TextIter
    -- ^ /@end@/: where the selection should end
    -> IO Bool
    -- ^ __Returns:__ 'GI.Gdk.Constants.EVENT_STOP' to stop other handlers from being invoked for the
    --   event. 'GI.Gdk.Constants.EVENT_PROPAGATE' to propagate the event further.

-- | A convenience synonym for @`Nothing` :: `Maybe` `TextViewExtendSelectionCallback`@.
noTextViewExtendSelectionCallback :: Maybe TextViewExtendSelectionCallback
noTextViewExtendSelectionCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_TextViewExtendSelectionCallback =
    Ptr () ->                               -- object
    CUInt ->
    Ptr Gtk.TextIter.TextIter ->
    Ptr Gtk.TextIter.TextIter ->
    Ptr Gtk.TextIter.TextIter ->
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_TextViewExtendSelectionCallback`.
foreign import ccall "wrapper"
    mk_TextViewExtendSelectionCallback :: C_TextViewExtendSelectionCallback -> IO (FunPtr C_TextViewExtendSelectionCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_TextViewExtendSelection :: MonadIO m => TextViewExtendSelectionCallback -> m (GClosure C_TextViewExtendSelectionCallback)
genClosure_TextViewExtendSelection cb = liftIO $ do
    let cb' = wrap_TextViewExtendSelectionCallback cb
    mk_TextViewExtendSelectionCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `TextViewExtendSelectionCallback` into a `C_TextViewExtendSelectionCallback`.
wrap_TextViewExtendSelectionCallback ::
    TextViewExtendSelectionCallback ->
    C_TextViewExtendSelectionCallback
wrap_TextViewExtendSelectionCallback _cb _ granularity location start end _ = do
    let granularity' = (toEnum . fromIntegral) granularity
    B.ManagedPtr.withTransient Gtk.TextIter.TextIter location $ \location' -> do
        B.ManagedPtr.withTransient Gtk.TextIter.TextIter start $ \start' -> do
            B.ManagedPtr.withTransient Gtk.TextIter.TextIter end $ \end' -> do
                result <- _cb  granularity' location' start' end'
                let result' = (fromIntegral . fromEnum) result
                return result'


-- | Connect a signal handler for the [extendSelection](#signal:extendSelection) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' textView #extendSelection callback
-- @
-- 
-- 
onTextViewExtendSelection :: (IsTextView a, MonadIO m) => a -> TextViewExtendSelectionCallback -> m SignalHandlerId
onTextViewExtendSelection obj cb = liftIO $ do
    let cb' = wrap_TextViewExtendSelectionCallback cb
    cb'' <- mk_TextViewExtendSelectionCallback cb'
    connectSignalFunPtr obj "extend-selection" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [extendSelection](#signal:extendSelection) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' textView #extendSelection callback
-- @
-- 
-- 
afterTextViewExtendSelection :: (IsTextView a, MonadIO m) => a -> TextViewExtendSelectionCallback -> m SignalHandlerId
afterTextViewExtendSelection obj cb = liftIO $ do
    let cb' = wrap_TextViewExtendSelectionCallback cb
    cb'' <- mk_TextViewExtendSelectionCallback cb'
    connectSignalFunPtr obj "extend-selection" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data TextViewExtendSelectionSignalInfo
instance SignalInfo TextViewExtendSelectionSignalInfo where
    type HaskellCallbackType TextViewExtendSelectionSignalInfo = TextViewExtendSelectionCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_TextViewExtendSelectionCallback cb
        cb'' <- mk_TextViewExtendSelectionCallback cb'
        connectSignalFunPtr obj "extend-selection" cb'' connectMode detail

#endif

-- signal TextView::insert-at-cursor
-- | The [insertAtCursor](#signal:insertAtCursor) signal is a
-- [keybinding signal][GtkBindingSignal]
-- which gets emitted when the user initiates the insertion of a
-- fixed string at the cursor.
-- 
-- This signal has no default bindings.
type TextViewInsertAtCursorCallback =
    T.Text
    -- ^ /@string@/: the string to insert
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `TextViewInsertAtCursorCallback`@.
noTextViewInsertAtCursorCallback :: Maybe TextViewInsertAtCursorCallback
noTextViewInsertAtCursorCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_TextViewInsertAtCursorCallback =
    Ptr () ->                               -- object
    CString ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_TextViewInsertAtCursorCallback`.
foreign import ccall "wrapper"
    mk_TextViewInsertAtCursorCallback :: C_TextViewInsertAtCursorCallback -> IO (FunPtr C_TextViewInsertAtCursorCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_TextViewInsertAtCursor :: MonadIO m => TextViewInsertAtCursorCallback -> m (GClosure C_TextViewInsertAtCursorCallback)
genClosure_TextViewInsertAtCursor cb = liftIO $ do
    let cb' = wrap_TextViewInsertAtCursorCallback cb
    mk_TextViewInsertAtCursorCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `TextViewInsertAtCursorCallback` into a `C_TextViewInsertAtCursorCallback`.
wrap_TextViewInsertAtCursorCallback ::
    TextViewInsertAtCursorCallback ->
    C_TextViewInsertAtCursorCallback
wrap_TextViewInsertAtCursorCallback _cb _ string _ = do
    string' <- cstringToText string
    _cb  string'


-- | Connect a signal handler for the [insertAtCursor](#signal:insertAtCursor) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' textView #insertAtCursor callback
-- @
-- 
-- 
onTextViewInsertAtCursor :: (IsTextView a, MonadIO m) => a -> TextViewInsertAtCursorCallback -> m SignalHandlerId
onTextViewInsertAtCursor obj cb = liftIO $ do
    let cb' = wrap_TextViewInsertAtCursorCallback cb
    cb'' <- mk_TextViewInsertAtCursorCallback cb'
    connectSignalFunPtr obj "insert-at-cursor" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [insertAtCursor](#signal:insertAtCursor) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' textView #insertAtCursor callback
-- @
-- 
-- 
afterTextViewInsertAtCursor :: (IsTextView a, MonadIO m) => a -> TextViewInsertAtCursorCallback -> m SignalHandlerId
afterTextViewInsertAtCursor obj cb = liftIO $ do
    let cb' = wrap_TextViewInsertAtCursorCallback cb
    cb'' <- mk_TextViewInsertAtCursorCallback cb'
    connectSignalFunPtr obj "insert-at-cursor" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data TextViewInsertAtCursorSignalInfo
instance SignalInfo TextViewInsertAtCursorSignalInfo where
    type HaskellCallbackType TextViewInsertAtCursorSignalInfo = TextViewInsertAtCursorCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_TextViewInsertAtCursorCallback cb
        cb'' <- mk_TextViewInsertAtCursorCallback cb'
        connectSignalFunPtr obj "insert-at-cursor" cb'' connectMode detail

#endif

-- signal TextView::insert-emoji
-- | The [insertEmoji](#signal:insertEmoji) signal is a
-- [keybinding signal][GtkBindingSignal]
-- which gets emitted to present the Emoji chooser for the /@textView@/.
-- 
-- The default bindings for this signal are Ctrl-. and Ctrl-;
-- 
-- /Since: 3.22.27/
type TextViewInsertEmojiCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `TextViewInsertEmojiCallback`@.
noTextViewInsertEmojiCallback :: Maybe TextViewInsertEmojiCallback
noTextViewInsertEmojiCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_TextViewInsertEmojiCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_TextViewInsertEmojiCallback`.
foreign import ccall "wrapper"
    mk_TextViewInsertEmojiCallback :: C_TextViewInsertEmojiCallback -> IO (FunPtr C_TextViewInsertEmojiCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_TextViewInsertEmoji :: MonadIO m => TextViewInsertEmojiCallback -> m (GClosure C_TextViewInsertEmojiCallback)
genClosure_TextViewInsertEmoji cb = liftIO $ do
    let cb' = wrap_TextViewInsertEmojiCallback cb
    mk_TextViewInsertEmojiCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `TextViewInsertEmojiCallback` into a `C_TextViewInsertEmojiCallback`.
wrap_TextViewInsertEmojiCallback ::
    TextViewInsertEmojiCallback ->
    C_TextViewInsertEmojiCallback
wrap_TextViewInsertEmojiCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [insertEmoji](#signal:insertEmoji) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' textView #insertEmoji callback
-- @
-- 
-- 
onTextViewInsertEmoji :: (IsTextView a, MonadIO m) => a -> TextViewInsertEmojiCallback -> m SignalHandlerId
onTextViewInsertEmoji obj cb = liftIO $ do
    let cb' = wrap_TextViewInsertEmojiCallback cb
    cb'' <- mk_TextViewInsertEmojiCallback cb'
    connectSignalFunPtr obj "insert-emoji" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [insertEmoji](#signal:insertEmoji) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' textView #insertEmoji callback
-- @
-- 
-- 
afterTextViewInsertEmoji :: (IsTextView a, MonadIO m) => a -> TextViewInsertEmojiCallback -> m SignalHandlerId
afterTextViewInsertEmoji obj cb = liftIO $ do
    let cb' = wrap_TextViewInsertEmojiCallback cb
    cb'' <- mk_TextViewInsertEmojiCallback cb'
    connectSignalFunPtr obj "insert-emoji" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data TextViewInsertEmojiSignalInfo
instance SignalInfo TextViewInsertEmojiSignalInfo where
    type HaskellCallbackType TextViewInsertEmojiSignalInfo = TextViewInsertEmojiCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_TextViewInsertEmojiCallback cb
        cb'' <- mk_TextViewInsertEmojiCallback cb'
        connectSignalFunPtr obj "insert-emoji" cb'' connectMode detail

#endif

-- signal TextView::move-cursor
-- | The [moveCursor](#signal:moveCursor) signal is a
-- [keybinding signal][GtkBindingSignal]
-- which gets emitted when the user initiates a cursor movement.
-- If the cursor is not visible in /@textView@/, this signal causes
-- the viewport to be moved instead.
-- 
-- Applications should not connect to it, but may emit it with
-- @/g_signal_emit_by_name()/@ if they need to control the cursor
-- programmatically.
-- 
-- The default bindings for this signal come in two variants,
-- the variant with the Shift modifier extends the selection,
-- the variant without the Shift modifer does not.
-- There are too many key combinations to list them all here.
-- 
-- * Arrow keys move by individual characters\/lines
-- * Ctrl-arrow key combinations move by words\/paragraphs
-- * Home\/End keys move to the ends of the buffer
-- * PageUp\/PageDown keys move vertically by pages
-- * Ctrl-PageUp\/PageDown keys move horizontally by pages
type TextViewMoveCursorCallback =
    Gtk.Enums.MovementStep
    -- ^ /@step@/: the granularity of the move, as a t'GI.Gtk.Enums.MovementStep'
    -> Int32
    -- ^ /@count@/: the number of /@step@/ units to move
    -> Bool
    -- ^ /@extendSelection@/: 'P.True' if the move should extend the selection
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `TextViewMoveCursorCallback`@.
noTextViewMoveCursorCallback :: Maybe TextViewMoveCursorCallback
noTextViewMoveCursorCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_TextViewMoveCursorCallback =
    Ptr () ->                               -- object
    CUInt ->
    Int32 ->
    CInt ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_TextViewMoveCursorCallback`.
foreign import ccall "wrapper"
    mk_TextViewMoveCursorCallback :: C_TextViewMoveCursorCallback -> IO (FunPtr C_TextViewMoveCursorCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_TextViewMoveCursor :: MonadIO m => TextViewMoveCursorCallback -> m (GClosure C_TextViewMoveCursorCallback)
genClosure_TextViewMoveCursor cb = liftIO $ do
    let cb' = wrap_TextViewMoveCursorCallback cb
    mk_TextViewMoveCursorCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `TextViewMoveCursorCallback` into a `C_TextViewMoveCursorCallback`.
wrap_TextViewMoveCursorCallback ::
    TextViewMoveCursorCallback ->
    C_TextViewMoveCursorCallback
wrap_TextViewMoveCursorCallback _cb _ step count extendSelection _ = do
    let step' = (toEnum . fromIntegral) step
    let extendSelection' = (/= 0) extendSelection
    _cb  step' count extendSelection'


-- | Connect a signal handler for the [moveCursor](#signal:moveCursor) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' textView #moveCursor callback
-- @
-- 
-- 
onTextViewMoveCursor :: (IsTextView a, MonadIO m) => a -> TextViewMoveCursorCallback -> m SignalHandlerId
onTextViewMoveCursor obj cb = liftIO $ do
    let cb' = wrap_TextViewMoveCursorCallback cb
    cb'' <- mk_TextViewMoveCursorCallback cb'
    connectSignalFunPtr obj "move-cursor" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [moveCursor](#signal:moveCursor) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' textView #moveCursor callback
-- @
-- 
-- 
afterTextViewMoveCursor :: (IsTextView a, MonadIO m) => a -> TextViewMoveCursorCallback -> m SignalHandlerId
afterTextViewMoveCursor obj cb = liftIO $ do
    let cb' = wrap_TextViewMoveCursorCallback cb
    cb'' <- mk_TextViewMoveCursorCallback cb'
    connectSignalFunPtr obj "move-cursor" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data TextViewMoveCursorSignalInfo
instance SignalInfo TextViewMoveCursorSignalInfo where
    type HaskellCallbackType TextViewMoveCursorSignalInfo = TextViewMoveCursorCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_TextViewMoveCursorCallback cb
        cb'' <- mk_TextViewMoveCursorCallback cb'
        connectSignalFunPtr obj "move-cursor" cb'' connectMode detail

#endif

-- signal TextView::move-viewport
-- | The [moveViewport](#signal:moveViewport) signal is a
-- [keybinding signal][GtkBindingSignal]
-- which can be bound to key combinations to allow the user
-- to move the viewport, i.e. change what part of the text view
-- is visible in a containing scrolled window.
-- 
-- There are no default bindings for this signal.
type TextViewMoveViewportCallback =
    Gtk.Enums.ScrollStep
    -- ^ /@step@/: the granularity of the movement, as a t'GI.Gtk.Enums.ScrollStep'
    -> Int32
    -- ^ /@count@/: the number of /@step@/ units to move
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `TextViewMoveViewportCallback`@.
noTextViewMoveViewportCallback :: Maybe TextViewMoveViewportCallback
noTextViewMoveViewportCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_TextViewMoveViewportCallback =
    Ptr () ->                               -- object
    CUInt ->
    Int32 ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_TextViewMoveViewportCallback`.
foreign import ccall "wrapper"
    mk_TextViewMoveViewportCallback :: C_TextViewMoveViewportCallback -> IO (FunPtr C_TextViewMoveViewportCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_TextViewMoveViewport :: MonadIO m => TextViewMoveViewportCallback -> m (GClosure C_TextViewMoveViewportCallback)
genClosure_TextViewMoveViewport cb = liftIO $ do
    let cb' = wrap_TextViewMoveViewportCallback cb
    mk_TextViewMoveViewportCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `TextViewMoveViewportCallback` into a `C_TextViewMoveViewportCallback`.
wrap_TextViewMoveViewportCallback ::
    TextViewMoveViewportCallback ->
    C_TextViewMoveViewportCallback
wrap_TextViewMoveViewportCallback _cb _ step count _ = do
    let step' = (toEnum . fromIntegral) step
    _cb  step' count


-- | Connect a signal handler for the [moveViewport](#signal:moveViewport) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' textView #moveViewport callback
-- @
-- 
-- 
onTextViewMoveViewport :: (IsTextView a, MonadIO m) => a -> TextViewMoveViewportCallback -> m SignalHandlerId
onTextViewMoveViewport obj cb = liftIO $ do
    let cb' = wrap_TextViewMoveViewportCallback cb
    cb'' <- mk_TextViewMoveViewportCallback cb'
    connectSignalFunPtr obj "move-viewport" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [moveViewport](#signal:moveViewport) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' textView #moveViewport callback
-- @
-- 
-- 
afterTextViewMoveViewport :: (IsTextView a, MonadIO m) => a -> TextViewMoveViewportCallback -> m SignalHandlerId
afterTextViewMoveViewport obj cb = liftIO $ do
    let cb' = wrap_TextViewMoveViewportCallback cb
    cb'' <- mk_TextViewMoveViewportCallback cb'
    connectSignalFunPtr obj "move-viewport" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data TextViewMoveViewportSignalInfo
instance SignalInfo TextViewMoveViewportSignalInfo where
    type HaskellCallbackType TextViewMoveViewportSignalInfo = TextViewMoveViewportCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_TextViewMoveViewportCallback cb
        cb'' <- mk_TextViewMoveViewportCallback cb'
        connectSignalFunPtr obj "move-viewport" cb'' connectMode detail

#endif

-- signal TextView::paste-clipboard
-- | The [pasteClipboard](#signal:pasteClipboard) signal is a
-- [keybinding signal][GtkBindingSignal]
-- which gets emitted to paste the contents of the clipboard
-- into the text view.
-- 
-- The default bindings for this signal are
-- Ctrl-v and Shift-Insert.
type TextViewPasteClipboardCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `TextViewPasteClipboardCallback`@.
noTextViewPasteClipboardCallback :: Maybe TextViewPasteClipboardCallback
noTextViewPasteClipboardCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_TextViewPasteClipboardCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_TextViewPasteClipboardCallback`.
foreign import ccall "wrapper"
    mk_TextViewPasteClipboardCallback :: C_TextViewPasteClipboardCallback -> IO (FunPtr C_TextViewPasteClipboardCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_TextViewPasteClipboard :: MonadIO m => TextViewPasteClipboardCallback -> m (GClosure C_TextViewPasteClipboardCallback)
genClosure_TextViewPasteClipboard cb = liftIO $ do
    let cb' = wrap_TextViewPasteClipboardCallback cb
    mk_TextViewPasteClipboardCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `TextViewPasteClipboardCallback` into a `C_TextViewPasteClipboardCallback`.
wrap_TextViewPasteClipboardCallback ::
    TextViewPasteClipboardCallback ->
    C_TextViewPasteClipboardCallback
wrap_TextViewPasteClipboardCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [pasteClipboard](#signal:pasteClipboard) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' textView #pasteClipboard callback
-- @
-- 
-- 
onTextViewPasteClipboard :: (IsTextView a, MonadIO m) => a -> TextViewPasteClipboardCallback -> m SignalHandlerId
onTextViewPasteClipboard obj cb = liftIO $ do
    let cb' = wrap_TextViewPasteClipboardCallback cb
    cb'' <- mk_TextViewPasteClipboardCallback cb'
    connectSignalFunPtr obj "paste-clipboard" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [pasteClipboard](#signal:pasteClipboard) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' textView #pasteClipboard callback
-- @
-- 
-- 
afterTextViewPasteClipboard :: (IsTextView a, MonadIO m) => a -> TextViewPasteClipboardCallback -> m SignalHandlerId
afterTextViewPasteClipboard obj cb = liftIO $ do
    let cb' = wrap_TextViewPasteClipboardCallback cb
    cb'' <- mk_TextViewPasteClipboardCallback cb'
    connectSignalFunPtr obj "paste-clipboard" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data TextViewPasteClipboardSignalInfo
instance SignalInfo TextViewPasteClipboardSignalInfo where
    type HaskellCallbackType TextViewPasteClipboardSignalInfo = TextViewPasteClipboardCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_TextViewPasteClipboardCallback cb
        cb'' <- mk_TextViewPasteClipboardCallback cb'
        connectSignalFunPtr obj "paste-clipboard" cb'' connectMode detail

#endif

-- signal TextView::populate-popup
-- | The [populatePopup](#signal:populatePopup) signal gets emitted before showing the
-- context menu of the text view.
-- 
-- If you need to add items to the context menu, connect
-- to this signal and append your items to the /@popup@/, which
-- will be a t'GI.Gtk.Objects.Menu.Menu' in this case.
-- 
-- If t'GI.Gtk.Objects.TextView.TextView':@/populate-all/@ is 'P.True', this signal will
-- also be emitted to populate touch popups. In this case,
-- /@popup@/ will be a different container, e.g. a t'GI.Gtk.Objects.Toolbar.Toolbar'.
-- 
-- The signal handler should not make assumptions about the
-- type of /@widget@/, but check whether /@popup@/ is a t'GI.Gtk.Objects.Menu.Menu'
-- or t'GI.Gtk.Objects.Toolbar.Toolbar' or another kind of container.
type TextViewPopulatePopupCallback =
    Gtk.Widget.Widget
    -- ^ /@popup@/: the container that is being populated
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `TextViewPopulatePopupCallback`@.
noTextViewPopulatePopupCallback :: Maybe TextViewPopulatePopupCallback
noTextViewPopulatePopupCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_TextViewPopulatePopupCallback =
    Ptr () ->                               -- object
    Ptr Gtk.Widget.Widget ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_TextViewPopulatePopupCallback`.
foreign import ccall "wrapper"
    mk_TextViewPopulatePopupCallback :: C_TextViewPopulatePopupCallback -> IO (FunPtr C_TextViewPopulatePopupCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_TextViewPopulatePopup :: MonadIO m => TextViewPopulatePopupCallback -> m (GClosure C_TextViewPopulatePopupCallback)
genClosure_TextViewPopulatePopup cb = liftIO $ do
    let cb' = wrap_TextViewPopulatePopupCallback cb
    mk_TextViewPopulatePopupCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `TextViewPopulatePopupCallback` into a `C_TextViewPopulatePopupCallback`.
wrap_TextViewPopulatePopupCallback ::
    TextViewPopulatePopupCallback ->
    C_TextViewPopulatePopupCallback
wrap_TextViewPopulatePopupCallback _cb _ popup _ = do
    popup' <- (newObject Gtk.Widget.Widget) popup
    _cb  popup'


-- | Connect a signal handler for the [populatePopup](#signal:populatePopup) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' textView #populatePopup callback
-- @
-- 
-- 
onTextViewPopulatePopup :: (IsTextView a, MonadIO m) => a -> TextViewPopulatePopupCallback -> m SignalHandlerId
onTextViewPopulatePopup obj cb = liftIO $ do
    let cb' = wrap_TextViewPopulatePopupCallback cb
    cb'' <- mk_TextViewPopulatePopupCallback cb'
    connectSignalFunPtr obj "populate-popup" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [populatePopup](#signal:populatePopup) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' textView #populatePopup callback
-- @
-- 
-- 
afterTextViewPopulatePopup :: (IsTextView a, MonadIO m) => a -> TextViewPopulatePopupCallback -> m SignalHandlerId
afterTextViewPopulatePopup obj cb = liftIO $ do
    let cb' = wrap_TextViewPopulatePopupCallback cb
    cb'' <- mk_TextViewPopulatePopupCallback cb'
    connectSignalFunPtr obj "populate-popup" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data TextViewPopulatePopupSignalInfo
instance SignalInfo TextViewPopulatePopupSignalInfo where
    type HaskellCallbackType TextViewPopulatePopupSignalInfo = TextViewPopulatePopupCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_TextViewPopulatePopupCallback cb
        cb'' <- mk_TextViewPopulatePopupCallback cb'
        connectSignalFunPtr obj "populate-popup" cb'' connectMode detail

#endif

-- signal TextView::preedit-changed
-- | If an input method is used, the typed text will not immediately
-- be committed to the buffer. So if you are interested in the text,
-- connect to this signal.
-- 
-- This signal is only emitted if the text at the given position
-- is actually editable.
-- 
-- /Since: 2.20/
type TextViewPreeditChangedCallback =
    T.Text
    -- ^ /@preedit@/: the current preedit string
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `TextViewPreeditChangedCallback`@.
noTextViewPreeditChangedCallback :: Maybe TextViewPreeditChangedCallback
noTextViewPreeditChangedCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_TextViewPreeditChangedCallback =
    Ptr () ->                               -- object
    CString ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_TextViewPreeditChangedCallback`.
foreign import ccall "wrapper"
    mk_TextViewPreeditChangedCallback :: C_TextViewPreeditChangedCallback -> IO (FunPtr C_TextViewPreeditChangedCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_TextViewPreeditChanged :: MonadIO m => TextViewPreeditChangedCallback -> m (GClosure C_TextViewPreeditChangedCallback)
genClosure_TextViewPreeditChanged cb = liftIO $ do
    let cb' = wrap_TextViewPreeditChangedCallback cb
    mk_TextViewPreeditChangedCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `TextViewPreeditChangedCallback` into a `C_TextViewPreeditChangedCallback`.
wrap_TextViewPreeditChangedCallback ::
    TextViewPreeditChangedCallback ->
    C_TextViewPreeditChangedCallback
wrap_TextViewPreeditChangedCallback _cb _ preedit _ = do
    preedit' <- cstringToText preedit
    _cb  preedit'


-- | Connect a signal handler for the [preeditChanged](#signal:preeditChanged) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' textView #preeditChanged callback
-- @
-- 
-- 
onTextViewPreeditChanged :: (IsTextView a, MonadIO m) => a -> TextViewPreeditChangedCallback -> m SignalHandlerId
onTextViewPreeditChanged obj cb = liftIO $ do
    let cb' = wrap_TextViewPreeditChangedCallback cb
    cb'' <- mk_TextViewPreeditChangedCallback cb'
    connectSignalFunPtr obj "preedit-changed" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [preeditChanged](#signal:preeditChanged) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' textView #preeditChanged callback
-- @
-- 
-- 
afterTextViewPreeditChanged :: (IsTextView a, MonadIO m) => a -> TextViewPreeditChangedCallback -> m SignalHandlerId
afterTextViewPreeditChanged obj cb = liftIO $ do
    let cb' = wrap_TextViewPreeditChangedCallback cb
    cb'' <- mk_TextViewPreeditChangedCallback cb'
    connectSignalFunPtr obj "preedit-changed" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data TextViewPreeditChangedSignalInfo
instance SignalInfo TextViewPreeditChangedSignalInfo where
    type HaskellCallbackType TextViewPreeditChangedSignalInfo = TextViewPreeditChangedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_TextViewPreeditChangedCallback cb
        cb'' <- mk_TextViewPreeditChangedCallback cb'
        connectSignalFunPtr obj "preedit-changed" cb'' connectMode detail

#endif

-- signal TextView::select-all
-- | The [selectAll](#signal:selectAll) signal is a
-- [keybinding signal][GtkBindingSignal]
-- which gets emitted to select or unselect the complete
-- contents of the text view.
-- 
-- The default bindings for this signal are Ctrl-a and Ctrl-\/
-- for selecting and Shift-Ctrl-a and Ctrl-\\ for unselecting.
type TextViewSelectAllCallback =
    Bool
    -- ^ /@select@/: 'P.True' to select, 'P.False' to unselect
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `TextViewSelectAllCallback`@.
noTextViewSelectAllCallback :: Maybe TextViewSelectAllCallback
noTextViewSelectAllCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_TextViewSelectAllCallback =
    Ptr () ->                               -- object
    CInt ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_TextViewSelectAllCallback`.
foreign import ccall "wrapper"
    mk_TextViewSelectAllCallback :: C_TextViewSelectAllCallback -> IO (FunPtr C_TextViewSelectAllCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_TextViewSelectAll :: MonadIO m => TextViewSelectAllCallback -> m (GClosure C_TextViewSelectAllCallback)
genClosure_TextViewSelectAll cb = liftIO $ do
    let cb' = wrap_TextViewSelectAllCallback cb
    mk_TextViewSelectAllCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `TextViewSelectAllCallback` into a `C_TextViewSelectAllCallback`.
wrap_TextViewSelectAllCallback ::
    TextViewSelectAllCallback ->
    C_TextViewSelectAllCallback
wrap_TextViewSelectAllCallback _cb _ select _ = do
    let select' = (/= 0) select
    _cb  select'


-- | Connect a signal handler for the [selectAll](#signal:selectAll) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' textView #selectAll callback
-- @
-- 
-- 
onTextViewSelectAll :: (IsTextView a, MonadIO m) => a -> TextViewSelectAllCallback -> m SignalHandlerId
onTextViewSelectAll obj cb = liftIO $ do
    let cb' = wrap_TextViewSelectAllCallback cb
    cb'' <- mk_TextViewSelectAllCallback cb'
    connectSignalFunPtr obj "select-all" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [selectAll](#signal:selectAll) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' textView #selectAll callback
-- @
-- 
-- 
afterTextViewSelectAll :: (IsTextView a, MonadIO m) => a -> TextViewSelectAllCallback -> m SignalHandlerId
afterTextViewSelectAll obj cb = liftIO $ do
    let cb' = wrap_TextViewSelectAllCallback cb
    cb'' <- mk_TextViewSelectAllCallback cb'
    connectSignalFunPtr obj "select-all" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data TextViewSelectAllSignalInfo
instance SignalInfo TextViewSelectAllSignalInfo where
    type HaskellCallbackType TextViewSelectAllSignalInfo = TextViewSelectAllCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_TextViewSelectAllCallback cb
        cb'' <- mk_TextViewSelectAllCallback cb'
        connectSignalFunPtr obj "select-all" cb'' connectMode detail

#endif

-- signal TextView::set-anchor
-- | The [setAnchor](#signal:setAnchor) signal is a
-- [keybinding signal][GtkBindingSignal]
-- which gets emitted when the user initiates setting the \"anchor\"
-- mark. The \"anchor\" mark gets placed at the same position as the
-- \"insert\" mark.
-- 
-- This signal has no default bindings.
type TextViewSetAnchorCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `TextViewSetAnchorCallback`@.
noTextViewSetAnchorCallback :: Maybe TextViewSetAnchorCallback
noTextViewSetAnchorCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_TextViewSetAnchorCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_TextViewSetAnchorCallback`.
foreign import ccall "wrapper"
    mk_TextViewSetAnchorCallback :: C_TextViewSetAnchorCallback -> IO (FunPtr C_TextViewSetAnchorCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_TextViewSetAnchor :: MonadIO m => TextViewSetAnchorCallback -> m (GClosure C_TextViewSetAnchorCallback)
genClosure_TextViewSetAnchor cb = liftIO $ do
    let cb' = wrap_TextViewSetAnchorCallback cb
    mk_TextViewSetAnchorCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `TextViewSetAnchorCallback` into a `C_TextViewSetAnchorCallback`.
wrap_TextViewSetAnchorCallback ::
    TextViewSetAnchorCallback ->
    C_TextViewSetAnchorCallback
wrap_TextViewSetAnchorCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [setAnchor](#signal:setAnchor) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' textView #setAnchor callback
-- @
-- 
-- 
onTextViewSetAnchor :: (IsTextView a, MonadIO m) => a -> TextViewSetAnchorCallback -> m SignalHandlerId
onTextViewSetAnchor obj cb = liftIO $ do
    let cb' = wrap_TextViewSetAnchorCallback cb
    cb'' <- mk_TextViewSetAnchorCallback cb'
    connectSignalFunPtr obj "set-anchor" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [setAnchor](#signal:setAnchor) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' textView #setAnchor callback
-- @
-- 
-- 
afterTextViewSetAnchor :: (IsTextView a, MonadIO m) => a -> TextViewSetAnchorCallback -> m SignalHandlerId
afterTextViewSetAnchor obj cb = liftIO $ do
    let cb' = wrap_TextViewSetAnchorCallback cb
    cb'' <- mk_TextViewSetAnchorCallback cb'
    connectSignalFunPtr obj "set-anchor" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data TextViewSetAnchorSignalInfo
instance SignalInfo TextViewSetAnchorSignalInfo where
    type HaskellCallbackType TextViewSetAnchorSignalInfo = TextViewSetAnchorCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_TextViewSetAnchorCallback cb
        cb'' <- mk_TextViewSetAnchorCallback cb'
        connectSignalFunPtr obj "set-anchor" cb'' connectMode detail

#endif

-- signal TextView::toggle-cursor-visible
-- | The [toggleCursorVisible](#signal:toggleCursorVisible) signal is a
-- [keybinding signal][GtkBindingSignal]
-- which gets emitted to toggle the t'GI.Gtk.Objects.TextView.TextView':@/cursor-visible/@
-- property.
-- 
-- The default binding for this signal is F7.
type TextViewToggleCursorVisibleCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `TextViewToggleCursorVisibleCallback`@.
noTextViewToggleCursorVisibleCallback :: Maybe TextViewToggleCursorVisibleCallback
noTextViewToggleCursorVisibleCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_TextViewToggleCursorVisibleCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_TextViewToggleCursorVisibleCallback`.
foreign import ccall "wrapper"
    mk_TextViewToggleCursorVisibleCallback :: C_TextViewToggleCursorVisibleCallback -> IO (FunPtr C_TextViewToggleCursorVisibleCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_TextViewToggleCursorVisible :: MonadIO m => TextViewToggleCursorVisibleCallback -> m (GClosure C_TextViewToggleCursorVisibleCallback)
genClosure_TextViewToggleCursorVisible cb = liftIO $ do
    let cb' = wrap_TextViewToggleCursorVisibleCallback cb
    mk_TextViewToggleCursorVisibleCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `TextViewToggleCursorVisibleCallback` into a `C_TextViewToggleCursorVisibleCallback`.
wrap_TextViewToggleCursorVisibleCallback ::
    TextViewToggleCursorVisibleCallback ->
    C_TextViewToggleCursorVisibleCallback
wrap_TextViewToggleCursorVisibleCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [toggleCursorVisible](#signal:toggleCursorVisible) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' textView #toggleCursorVisible callback
-- @
-- 
-- 
onTextViewToggleCursorVisible :: (IsTextView a, MonadIO m) => a -> TextViewToggleCursorVisibleCallback -> m SignalHandlerId
onTextViewToggleCursorVisible obj cb = liftIO $ do
    let cb' = wrap_TextViewToggleCursorVisibleCallback cb
    cb'' <- mk_TextViewToggleCursorVisibleCallback cb'
    connectSignalFunPtr obj "toggle-cursor-visible" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [toggleCursorVisible](#signal:toggleCursorVisible) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' textView #toggleCursorVisible callback
-- @
-- 
-- 
afterTextViewToggleCursorVisible :: (IsTextView a, MonadIO m) => a -> TextViewToggleCursorVisibleCallback -> m SignalHandlerId
afterTextViewToggleCursorVisible obj cb = liftIO $ do
    let cb' = wrap_TextViewToggleCursorVisibleCallback cb
    cb'' <- mk_TextViewToggleCursorVisibleCallback cb'
    connectSignalFunPtr obj "toggle-cursor-visible" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data TextViewToggleCursorVisibleSignalInfo
instance SignalInfo TextViewToggleCursorVisibleSignalInfo where
    type HaskellCallbackType TextViewToggleCursorVisibleSignalInfo = TextViewToggleCursorVisibleCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_TextViewToggleCursorVisibleCallback cb
        cb'' <- mk_TextViewToggleCursorVisibleCallback cb'
        connectSignalFunPtr obj "toggle-cursor-visible" cb'' connectMode detail

#endif

-- signal TextView::toggle-overwrite
-- | The [toggleOverwrite](#signal:toggleOverwrite) signal is a
-- [keybinding signal][GtkBindingSignal]
-- which gets emitted to toggle the overwrite mode of the text view.
-- 
-- The default bindings for this signal is Insert.
type TextViewToggleOverwriteCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `TextViewToggleOverwriteCallback`@.
noTextViewToggleOverwriteCallback :: Maybe TextViewToggleOverwriteCallback
noTextViewToggleOverwriteCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_TextViewToggleOverwriteCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_TextViewToggleOverwriteCallback`.
foreign import ccall "wrapper"
    mk_TextViewToggleOverwriteCallback :: C_TextViewToggleOverwriteCallback -> IO (FunPtr C_TextViewToggleOverwriteCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_TextViewToggleOverwrite :: MonadIO m => TextViewToggleOverwriteCallback -> m (GClosure C_TextViewToggleOverwriteCallback)
genClosure_TextViewToggleOverwrite cb = liftIO $ do
    let cb' = wrap_TextViewToggleOverwriteCallback cb
    mk_TextViewToggleOverwriteCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `TextViewToggleOverwriteCallback` into a `C_TextViewToggleOverwriteCallback`.
wrap_TextViewToggleOverwriteCallback ::
    TextViewToggleOverwriteCallback ->
    C_TextViewToggleOverwriteCallback
wrap_TextViewToggleOverwriteCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [toggleOverwrite](#signal:toggleOverwrite) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' textView #toggleOverwrite callback
-- @
-- 
-- 
onTextViewToggleOverwrite :: (IsTextView a, MonadIO m) => a -> TextViewToggleOverwriteCallback -> m SignalHandlerId
onTextViewToggleOverwrite obj cb = liftIO $ do
    let cb' = wrap_TextViewToggleOverwriteCallback cb
    cb'' <- mk_TextViewToggleOverwriteCallback cb'
    connectSignalFunPtr obj "toggle-overwrite" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [toggleOverwrite](#signal:toggleOverwrite) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' textView #toggleOverwrite callback
-- @
-- 
-- 
afterTextViewToggleOverwrite :: (IsTextView a, MonadIO m) => a -> TextViewToggleOverwriteCallback -> m SignalHandlerId
afterTextViewToggleOverwrite obj cb = liftIO $ do
    let cb' = wrap_TextViewToggleOverwriteCallback cb
    cb'' <- mk_TextViewToggleOverwriteCallback cb'
    connectSignalFunPtr obj "toggle-overwrite" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data TextViewToggleOverwriteSignalInfo
instance SignalInfo TextViewToggleOverwriteSignalInfo where
    type HaskellCallbackType TextViewToggleOverwriteSignalInfo = TextViewToggleOverwriteCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_TextViewToggleOverwriteCallback cb
        cb'' <- mk_TextViewToggleOverwriteCallback cb'
        connectSignalFunPtr obj "toggle-overwrite" cb'' connectMode detail

#endif

-- VVV Prop "accepts-tab"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@accepts-tab@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' textView #acceptsTab
-- @
getTextViewAcceptsTab :: (MonadIO m, IsTextView o) => o -> m Bool
getTextViewAcceptsTab obj = liftIO $ B.Properties.getObjectPropertyBool obj "accepts-tab"

-- | Set the value of the “@accepts-tab@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' textView [ #acceptsTab 'Data.GI.Base.Attributes.:=' value ]
-- @
setTextViewAcceptsTab :: (MonadIO m, IsTextView o) => o -> Bool -> m ()
setTextViewAcceptsTab obj val = liftIO $ B.Properties.setObjectPropertyBool obj "accepts-tab" val

-- | Construct a `GValueConstruct` with valid value for the “@accepts-tab@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructTextViewAcceptsTab :: (IsTextView o) => Bool -> IO (GValueConstruct o)
constructTextViewAcceptsTab val = B.Properties.constructObjectPropertyBool "accepts-tab" val

#if defined(ENABLE_OVERLOADING)
data TextViewAcceptsTabPropertyInfo
instance AttrInfo TextViewAcceptsTabPropertyInfo where
    type AttrAllowedOps TextViewAcceptsTabPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint TextViewAcceptsTabPropertyInfo = IsTextView
    type AttrSetTypeConstraint TextViewAcceptsTabPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint TextViewAcceptsTabPropertyInfo = (~) Bool
    type AttrTransferType TextViewAcceptsTabPropertyInfo = Bool
    type AttrGetType TextViewAcceptsTabPropertyInfo = Bool
    type AttrLabel TextViewAcceptsTabPropertyInfo = "accepts-tab"
    type AttrOrigin TextViewAcceptsTabPropertyInfo = TextView
    attrGet = getTextViewAcceptsTab
    attrSet = setTextViewAcceptsTab
    attrTransfer _ v = do
        return v
    attrConstruct = constructTextViewAcceptsTab
    attrClear = undefined
#endif

-- VVV Prop "bottom-margin"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@bottom-margin@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' textView #bottomMargin
-- @
getTextViewBottomMargin :: (MonadIO m, IsTextView o) => o -> m Int32
getTextViewBottomMargin obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "bottom-margin"

-- | Set the value of the “@bottom-margin@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' textView [ #bottomMargin 'Data.GI.Base.Attributes.:=' value ]
-- @
setTextViewBottomMargin :: (MonadIO m, IsTextView o) => o -> Int32 -> m ()
setTextViewBottomMargin obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "bottom-margin" val

-- | Construct a `GValueConstruct` with valid value for the “@bottom-margin@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructTextViewBottomMargin :: (IsTextView o) => Int32 -> IO (GValueConstruct o)
constructTextViewBottomMargin val = B.Properties.constructObjectPropertyInt32 "bottom-margin" val

#if defined(ENABLE_OVERLOADING)
data TextViewBottomMarginPropertyInfo
instance AttrInfo TextViewBottomMarginPropertyInfo where
    type AttrAllowedOps TextViewBottomMarginPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint TextViewBottomMarginPropertyInfo = IsTextView
    type AttrSetTypeConstraint TextViewBottomMarginPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint TextViewBottomMarginPropertyInfo = (~) Int32
    type AttrTransferType TextViewBottomMarginPropertyInfo = Int32
    type AttrGetType TextViewBottomMarginPropertyInfo = Int32
    type AttrLabel TextViewBottomMarginPropertyInfo = "bottom-margin"
    type AttrOrigin TextViewBottomMarginPropertyInfo = TextView
    attrGet = getTextViewBottomMargin
    attrSet = setTextViewBottomMargin
    attrTransfer _ v = do
        return v
    attrConstruct = constructTextViewBottomMargin
    attrClear = undefined
#endif

-- VVV Prop "buffer"
   -- Type: TInterface (Name {namespace = "Gtk", name = "TextBuffer"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just True)

-- | Get the value of the “@buffer@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' textView #buffer
-- @
getTextViewBuffer :: (MonadIO m, IsTextView o) => o -> m Gtk.TextBuffer.TextBuffer
getTextViewBuffer obj = liftIO $ checkUnexpectedNothing "getTextViewBuffer" $ B.Properties.getObjectPropertyObject obj "buffer" Gtk.TextBuffer.TextBuffer

-- | Set the value of the “@buffer@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' textView [ #buffer 'Data.GI.Base.Attributes.:=' value ]
-- @
setTextViewBuffer :: (MonadIO m, IsTextView o, Gtk.TextBuffer.IsTextBuffer a) => o -> a -> m ()
setTextViewBuffer obj val = liftIO $ B.Properties.setObjectPropertyObject obj "buffer" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@buffer@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructTextViewBuffer :: (IsTextView o, Gtk.TextBuffer.IsTextBuffer a) => a -> IO (GValueConstruct o)
constructTextViewBuffer val = B.Properties.constructObjectPropertyObject "buffer" (Just val)

-- | Set the value of the “@buffer@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #buffer
-- @
clearTextViewBuffer :: (MonadIO m, IsTextView o) => o -> m ()
clearTextViewBuffer obj = liftIO $ B.Properties.setObjectPropertyObject obj "buffer" (Nothing :: Maybe Gtk.TextBuffer.TextBuffer)

#if defined(ENABLE_OVERLOADING)
data TextViewBufferPropertyInfo
instance AttrInfo TextViewBufferPropertyInfo where
    type AttrAllowedOps TextViewBufferPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint TextViewBufferPropertyInfo = IsTextView
    type AttrSetTypeConstraint TextViewBufferPropertyInfo = Gtk.TextBuffer.IsTextBuffer
    type AttrTransferTypeConstraint TextViewBufferPropertyInfo = Gtk.TextBuffer.IsTextBuffer
    type AttrTransferType TextViewBufferPropertyInfo = Gtk.TextBuffer.TextBuffer
    type AttrGetType TextViewBufferPropertyInfo = Gtk.TextBuffer.TextBuffer
    type AttrLabel TextViewBufferPropertyInfo = "buffer"
    type AttrOrigin TextViewBufferPropertyInfo = TextView
    attrGet = getTextViewBuffer
    attrSet = setTextViewBuffer
    attrTransfer _ v = do
        unsafeCastTo Gtk.TextBuffer.TextBuffer v
    attrConstruct = constructTextViewBuffer
    attrClear = clearTextViewBuffer
#endif

-- VVV Prop "cursor-visible"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@cursor-visible@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' textView #cursorVisible
-- @
getTextViewCursorVisible :: (MonadIO m, IsTextView o) => o -> m Bool
getTextViewCursorVisible obj = liftIO $ B.Properties.getObjectPropertyBool obj "cursor-visible"

-- | Set the value of the “@cursor-visible@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' textView [ #cursorVisible 'Data.GI.Base.Attributes.:=' value ]
-- @
setTextViewCursorVisible :: (MonadIO m, IsTextView o) => o -> Bool -> m ()
setTextViewCursorVisible obj val = liftIO $ B.Properties.setObjectPropertyBool obj "cursor-visible" val

-- | Construct a `GValueConstruct` with valid value for the “@cursor-visible@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructTextViewCursorVisible :: (IsTextView o) => Bool -> IO (GValueConstruct o)
constructTextViewCursorVisible val = B.Properties.constructObjectPropertyBool "cursor-visible" val

#if defined(ENABLE_OVERLOADING)
data TextViewCursorVisiblePropertyInfo
instance AttrInfo TextViewCursorVisiblePropertyInfo where
    type AttrAllowedOps TextViewCursorVisiblePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint TextViewCursorVisiblePropertyInfo = IsTextView
    type AttrSetTypeConstraint TextViewCursorVisiblePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint TextViewCursorVisiblePropertyInfo = (~) Bool
    type AttrTransferType TextViewCursorVisiblePropertyInfo = Bool
    type AttrGetType TextViewCursorVisiblePropertyInfo = Bool
    type AttrLabel TextViewCursorVisiblePropertyInfo = "cursor-visible"
    type AttrOrigin TextViewCursorVisiblePropertyInfo = TextView
    attrGet = getTextViewCursorVisible
    attrSet = setTextViewCursorVisible
    attrTransfer _ v = do
        return v
    attrConstruct = constructTextViewCursorVisible
    attrClear = undefined
#endif

-- VVV Prop "editable"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@editable@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' textView #editable
-- @
getTextViewEditable :: (MonadIO m, IsTextView o) => o -> m Bool
getTextViewEditable obj = liftIO $ B.Properties.getObjectPropertyBool obj "editable"

-- | Set the value of the “@editable@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' textView [ #editable 'Data.GI.Base.Attributes.:=' value ]
-- @
setTextViewEditable :: (MonadIO m, IsTextView o) => o -> Bool -> m ()
setTextViewEditable obj val = liftIO $ B.Properties.setObjectPropertyBool obj "editable" val

-- | Construct a `GValueConstruct` with valid value for the “@editable@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructTextViewEditable :: (IsTextView o) => Bool -> IO (GValueConstruct o)
constructTextViewEditable val = B.Properties.constructObjectPropertyBool "editable" val

#if defined(ENABLE_OVERLOADING)
data TextViewEditablePropertyInfo
instance AttrInfo TextViewEditablePropertyInfo where
    type AttrAllowedOps TextViewEditablePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint TextViewEditablePropertyInfo = IsTextView
    type AttrSetTypeConstraint TextViewEditablePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint TextViewEditablePropertyInfo = (~) Bool
    type AttrTransferType TextViewEditablePropertyInfo = Bool
    type AttrGetType TextViewEditablePropertyInfo = Bool
    type AttrLabel TextViewEditablePropertyInfo = "editable"
    type AttrOrigin TextViewEditablePropertyInfo = TextView
    attrGet = getTextViewEditable
    attrSet = setTextViewEditable
    attrTransfer _ v = do
        return v
    attrConstruct = constructTextViewEditable
    attrClear = undefined
#endif

-- VVV Prop "im-module"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@im-module@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' textView #imModule
-- @
getTextViewImModule :: (MonadIO m, IsTextView o) => o -> m (Maybe T.Text)
getTextViewImModule obj = liftIO $ B.Properties.getObjectPropertyString obj "im-module"

-- | Set the value of the “@im-module@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' textView [ #imModule 'Data.GI.Base.Attributes.:=' value ]
-- @
setTextViewImModule :: (MonadIO m, IsTextView o) => o -> T.Text -> m ()
setTextViewImModule obj val = liftIO $ B.Properties.setObjectPropertyString obj "im-module" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@im-module@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructTextViewImModule :: (IsTextView o) => T.Text -> IO (GValueConstruct o)
constructTextViewImModule val = B.Properties.constructObjectPropertyString "im-module" (Just val)

-- | Set the value of the “@im-module@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #imModule
-- @
clearTextViewImModule :: (MonadIO m, IsTextView o) => o -> m ()
clearTextViewImModule obj = liftIO $ B.Properties.setObjectPropertyString obj "im-module" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data TextViewImModulePropertyInfo
instance AttrInfo TextViewImModulePropertyInfo where
    type AttrAllowedOps TextViewImModulePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint TextViewImModulePropertyInfo = IsTextView
    type AttrSetTypeConstraint TextViewImModulePropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint TextViewImModulePropertyInfo = (~) T.Text
    type AttrTransferType TextViewImModulePropertyInfo = T.Text
    type AttrGetType TextViewImModulePropertyInfo = (Maybe T.Text)
    type AttrLabel TextViewImModulePropertyInfo = "im-module"
    type AttrOrigin TextViewImModulePropertyInfo = TextView
    attrGet = getTextViewImModule
    attrSet = setTextViewImModule
    attrTransfer _ v = do
        return v
    attrConstruct = constructTextViewImModule
    attrClear = clearTextViewImModule
#endif

-- VVV Prop "indent"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@indent@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' textView #indent
-- @
getTextViewIndent :: (MonadIO m, IsTextView o) => o -> m Int32
getTextViewIndent obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "indent"

-- | Set the value of the “@indent@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' textView [ #indent 'Data.GI.Base.Attributes.:=' value ]
-- @
setTextViewIndent :: (MonadIO m, IsTextView o) => o -> Int32 -> m ()
setTextViewIndent obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "indent" val

-- | Construct a `GValueConstruct` with valid value for the “@indent@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructTextViewIndent :: (IsTextView o) => Int32 -> IO (GValueConstruct o)
constructTextViewIndent val = B.Properties.constructObjectPropertyInt32 "indent" val

#if defined(ENABLE_OVERLOADING)
data TextViewIndentPropertyInfo
instance AttrInfo TextViewIndentPropertyInfo where
    type AttrAllowedOps TextViewIndentPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint TextViewIndentPropertyInfo = IsTextView
    type AttrSetTypeConstraint TextViewIndentPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint TextViewIndentPropertyInfo = (~) Int32
    type AttrTransferType TextViewIndentPropertyInfo = Int32
    type AttrGetType TextViewIndentPropertyInfo = Int32
    type AttrLabel TextViewIndentPropertyInfo = "indent"
    type AttrOrigin TextViewIndentPropertyInfo = TextView
    attrGet = getTextViewIndent
    attrSet = setTextViewIndent
    attrTransfer _ v = do
        return v
    attrConstruct = constructTextViewIndent
    attrClear = undefined
#endif

-- VVV Prop "input-hints"
   -- Type: TInterface (Name {namespace = "Gtk", name = "InputHints"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@input-hints@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' textView #inputHints
-- @
getTextViewInputHints :: (MonadIO m, IsTextView o) => o -> m [Gtk.Flags.InputHints]
getTextViewInputHints obj = liftIO $ B.Properties.getObjectPropertyFlags obj "input-hints"

-- | Set the value of the “@input-hints@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' textView [ #inputHints 'Data.GI.Base.Attributes.:=' value ]
-- @
setTextViewInputHints :: (MonadIO m, IsTextView o) => o -> [Gtk.Flags.InputHints] -> m ()
setTextViewInputHints obj val = liftIO $ B.Properties.setObjectPropertyFlags obj "input-hints" val

-- | Construct a `GValueConstruct` with valid value for the “@input-hints@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructTextViewInputHints :: (IsTextView o) => [Gtk.Flags.InputHints] -> IO (GValueConstruct o)
constructTextViewInputHints val = B.Properties.constructObjectPropertyFlags "input-hints" val

#if defined(ENABLE_OVERLOADING)
data TextViewInputHintsPropertyInfo
instance AttrInfo TextViewInputHintsPropertyInfo where
    type AttrAllowedOps TextViewInputHintsPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint TextViewInputHintsPropertyInfo = IsTextView
    type AttrSetTypeConstraint TextViewInputHintsPropertyInfo = (~) [Gtk.Flags.InputHints]
    type AttrTransferTypeConstraint TextViewInputHintsPropertyInfo = (~) [Gtk.Flags.InputHints]
    type AttrTransferType TextViewInputHintsPropertyInfo = [Gtk.Flags.InputHints]
    type AttrGetType TextViewInputHintsPropertyInfo = [Gtk.Flags.InputHints]
    type AttrLabel TextViewInputHintsPropertyInfo = "input-hints"
    type AttrOrigin TextViewInputHintsPropertyInfo = TextView
    attrGet = getTextViewInputHints
    attrSet = setTextViewInputHints
    attrTransfer _ v = do
        return v
    attrConstruct = constructTextViewInputHints
    attrClear = undefined
#endif

-- VVV Prop "input-purpose"
   -- Type: TInterface (Name {namespace = "Gtk", name = "InputPurpose"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@input-purpose@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' textView #inputPurpose
-- @
getTextViewInputPurpose :: (MonadIO m, IsTextView o) => o -> m Gtk.Enums.InputPurpose
getTextViewInputPurpose obj = liftIO $ B.Properties.getObjectPropertyEnum obj "input-purpose"

-- | Set the value of the “@input-purpose@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' textView [ #inputPurpose 'Data.GI.Base.Attributes.:=' value ]
-- @
setTextViewInputPurpose :: (MonadIO m, IsTextView o) => o -> Gtk.Enums.InputPurpose -> m ()
setTextViewInputPurpose obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "input-purpose" val

-- | Construct a `GValueConstruct` with valid value for the “@input-purpose@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructTextViewInputPurpose :: (IsTextView o) => Gtk.Enums.InputPurpose -> IO (GValueConstruct o)
constructTextViewInputPurpose val = B.Properties.constructObjectPropertyEnum "input-purpose" val

#if defined(ENABLE_OVERLOADING)
data TextViewInputPurposePropertyInfo
instance AttrInfo TextViewInputPurposePropertyInfo where
    type AttrAllowedOps TextViewInputPurposePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint TextViewInputPurposePropertyInfo = IsTextView
    type AttrSetTypeConstraint TextViewInputPurposePropertyInfo = (~) Gtk.Enums.InputPurpose
    type AttrTransferTypeConstraint TextViewInputPurposePropertyInfo = (~) Gtk.Enums.InputPurpose
    type AttrTransferType TextViewInputPurposePropertyInfo = Gtk.Enums.InputPurpose
    type AttrGetType TextViewInputPurposePropertyInfo = Gtk.Enums.InputPurpose
    type AttrLabel TextViewInputPurposePropertyInfo = "input-purpose"
    type AttrOrigin TextViewInputPurposePropertyInfo = TextView
    attrGet = getTextViewInputPurpose
    attrSet = setTextViewInputPurpose
    attrTransfer _ v = do
        return v
    attrConstruct = constructTextViewInputPurpose
    attrClear = undefined
#endif

-- VVV Prop "justification"
   -- Type: TInterface (Name {namespace = "Gtk", name = "Justification"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@justification@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' textView #justification
-- @
getTextViewJustification :: (MonadIO m, IsTextView o) => o -> m Gtk.Enums.Justification
getTextViewJustification obj = liftIO $ B.Properties.getObjectPropertyEnum obj "justification"

-- | Set the value of the “@justification@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' textView [ #justification 'Data.GI.Base.Attributes.:=' value ]
-- @
setTextViewJustification :: (MonadIO m, IsTextView o) => o -> Gtk.Enums.Justification -> m ()
setTextViewJustification obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "justification" val

-- | Construct a `GValueConstruct` with valid value for the “@justification@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructTextViewJustification :: (IsTextView o) => Gtk.Enums.Justification -> IO (GValueConstruct o)
constructTextViewJustification val = B.Properties.constructObjectPropertyEnum "justification" val

#if defined(ENABLE_OVERLOADING)
data TextViewJustificationPropertyInfo
instance AttrInfo TextViewJustificationPropertyInfo where
    type AttrAllowedOps TextViewJustificationPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint TextViewJustificationPropertyInfo = IsTextView
    type AttrSetTypeConstraint TextViewJustificationPropertyInfo = (~) Gtk.Enums.Justification
    type AttrTransferTypeConstraint TextViewJustificationPropertyInfo = (~) Gtk.Enums.Justification
    type AttrTransferType TextViewJustificationPropertyInfo = Gtk.Enums.Justification
    type AttrGetType TextViewJustificationPropertyInfo = Gtk.Enums.Justification
    type AttrLabel TextViewJustificationPropertyInfo = "justification"
    type AttrOrigin TextViewJustificationPropertyInfo = TextView
    attrGet = getTextViewJustification
    attrSet = setTextViewJustification
    attrTransfer _ v = do
        return v
    attrConstruct = constructTextViewJustification
    attrClear = undefined
#endif

-- VVV Prop "left-margin"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@left-margin@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' textView #leftMargin
-- @
getTextViewLeftMargin :: (MonadIO m, IsTextView o) => o -> m Int32
getTextViewLeftMargin obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "left-margin"

-- | Set the value of the “@left-margin@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' textView [ #leftMargin 'Data.GI.Base.Attributes.:=' value ]
-- @
setTextViewLeftMargin :: (MonadIO m, IsTextView o) => o -> Int32 -> m ()
setTextViewLeftMargin obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "left-margin" val

-- | Construct a `GValueConstruct` with valid value for the “@left-margin@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructTextViewLeftMargin :: (IsTextView o) => Int32 -> IO (GValueConstruct o)
constructTextViewLeftMargin val = B.Properties.constructObjectPropertyInt32 "left-margin" val

#if defined(ENABLE_OVERLOADING)
data TextViewLeftMarginPropertyInfo
instance AttrInfo TextViewLeftMarginPropertyInfo where
    type AttrAllowedOps TextViewLeftMarginPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint TextViewLeftMarginPropertyInfo = IsTextView
    type AttrSetTypeConstraint TextViewLeftMarginPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint TextViewLeftMarginPropertyInfo = (~) Int32
    type AttrTransferType TextViewLeftMarginPropertyInfo = Int32
    type AttrGetType TextViewLeftMarginPropertyInfo = Int32
    type AttrLabel TextViewLeftMarginPropertyInfo = "left-margin"
    type AttrOrigin TextViewLeftMarginPropertyInfo = TextView
    attrGet = getTextViewLeftMargin
    attrSet = setTextViewLeftMargin
    attrTransfer _ v = do
        return v
    attrConstruct = constructTextViewLeftMargin
    attrClear = undefined
#endif

-- VVV Prop "monospace"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@monospace@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' textView #monospace
-- @
getTextViewMonospace :: (MonadIO m, IsTextView o) => o -> m Bool
getTextViewMonospace obj = liftIO $ B.Properties.getObjectPropertyBool obj "monospace"

-- | Set the value of the “@monospace@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' textView [ #monospace 'Data.GI.Base.Attributes.:=' value ]
-- @
setTextViewMonospace :: (MonadIO m, IsTextView o) => o -> Bool -> m ()
setTextViewMonospace obj val = liftIO $ B.Properties.setObjectPropertyBool obj "monospace" val

-- | Construct a `GValueConstruct` with valid value for the “@monospace@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructTextViewMonospace :: (IsTextView o) => Bool -> IO (GValueConstruct o)
constructTextViewMonospace val = B.Properties.constructObjectPropertyBool "monospace" val

#if defined(ENABLE_OVERLOADING)
data TextViewMonospacePropertyInfo
instance AttrInfo TextViewMonospacePropertyInfo where
    type AttrAllowedOps TextViewMonospacePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint TextViewMonospacePropertyInfo = IsTextView
    type AttrSetTypeConstraint TextViewMonospacePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint TextViewMonospacePropertyInfo = (~) Bool
    type AttrTransferType TextViewMonospacePropertyInfo = Bool
    type AttrGetType TextViewMonospacePropertyInfo = Bool
    type AttrLabel TextViewMonospacePropertyInfo = "monospace"
    type AttrOrigin TextViewMonospacePropertyInfo = TextView
    attrGet = getTextViewMonospace
    attrSet = setTextViewMonospace
    attrTransfer _ v = do
        return v
    attrConstruct = constructTextViewMonospace
    attrClear = undefined
#endif

-- VVV Prop "overwrite"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@overwrite@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' textView #overwrite
-- @
getTextViewOverwrite :: (MonadIO m, IsTextView o) => o -> m Bool
getTextViewOverwrite obj = liftIO $ B.Properties.getObjectPropertyBool obj "overwrite"

-- | Set the value of the “@overwrite@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' textView [ #overwrite 'Data.GI.Base.Attributes.:=' value ]
-- @
setTextViewOverwrite :: (MonadIO m, IsTextView o) => o -> Bool -> m ()
setTextViewOverwrite obj val = liftIO $ B.Properties.setObjectPropertyBool obj "overwrite" val

-- | Construct a `GValueConstruct` with valid value for the “@overwrite@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructTextViewOverwrite :: (IsTextView o) => Bool -> IO (GValueConstruct o)
constructTextViewOverwrite val = B.Properties.constructObjectPropertyBool "overwrite" val

#if defined(ENABLE_OVERLOADING)
data TextViewOverwritePropertyInfo
instance AttrInfo TextViewOverwritePropertyInfo where
    type AttrAllowedOps TextViewOverwritePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint TextViewOverwritePropertyInfo = IsTextView
    type AttrSetTypeConstraint TextViewOverwritePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint TextViewOverwritePropertyInfo = (~) Bool
    type AttrTransferType TextViewOverwritePropertyInfo = Bool
    type AttrGetType TextViewOverwritePropertyInfo = Bool
    type AttrLabel TextViewOverwritePropertyInfo = "overwrite"
    type AttrOrigin TextViewOverwritePropertyInfo = TextView
    attrGet = getTextViewOverwrite
    attrSet = setTextViewOverwrite
    attrTransfer _ v = do
        return v
    attrConstruct = constructTextViewOverwrite
    attrClear = undefined
#endif

-- VVV Prop "pixels-above-lines"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@pixels-above-lines@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' textView #pixelsAboveLines
-- @
getTextViewPixelsAboveLines :: (MonadIO m, IsTextView o) => o -> m Int32
getTextViewPixelsAboveLines obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "pixels-above-lines"

-- | Set the value of the “@pixels-above-lines@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' textView [ #pixelsAboveLines 'Data.GI.Base.Attributes.:=' value ]
-- @
setTextViewPixelsAboveLines :: (MonadIO m, IsTextView o) => o -> Int32 -> m ()
setTextViewPixelsAboveLines obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "pixels-above-lines" val

-- | Construct a `GValueConstruct` with valid value for the “@pixels-above-lines@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructTextViewPixelsAboveLines :: (IsTextView o) => Int32 -> IO (GValueConstruct o)
constructTextViewPixelsAboveLines val = B.Properties.constructObjectPropertyInt32 "pixels-above-lines" val

#if defined(ENABLE_OVERLOADING)
data TextViewPixelsAboveLinesPropertyInfo
instance AttrInfo TextViewPixelsAboveLinesPropertyInfo where
    type AttrAllowedOps TextViewPixelsAboveLinesPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint TextViewPixelsAboveLinesPropertyInfo = IsTextView
    type AttrSetTypeConstraint TextViewPixelsAboveLinesPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint TextViewPixelsAboveLinesPropertyInfo = (~) Int32
    type AttrTransferType TextViewPixelsAboveLinesPropertyInfo = Int32
    type AttrGetType TextViewPixelsAboveLinesPropertyInfo = Int32
    type AttrLabel TextViewPixelsAboveLinesPropertyInfo = "pixels-above-lines"
    type AttrOrigin TextViewPixelsAboveLinesPropertyInfo = TextView
    attrGet = getTextViewPixelsAboveLines
    attrSet = setTextViewPixelsAboveLines
    attrTransfer _ v = do
        return v
    attrConstruct = constructTextViewPixelsAboveLines
    attrClear = undefined
#endif

-- VVV Prop "pixels-below-lines"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@pixels-below-lines@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' textView #pixelsBelowLines
-- @
getTextViewPixelsBelowLines :: (MonadIO m, IsTextView o) => o -> m Int32
getTextViewPixelsBelowLines obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "pixels-below-lines"

-- | Set the value of the “@pixels-below-lines@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' textView [ #pixelsBelowLines 'Data.GI.Base.Attributes.:=' value ]
-- @
setTextViewPixelsBelowLines :: (MonadIO m, IsTextView o) => o -> Int32 -> m ()
setTextViewPixelsBelowLines obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "pixels-below-lines" val

-- | Construct a `GValueConstruct` with valid value for the “@pixels-below-lines@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructTextViewPixelsBelowLines :: (IsTextView o) => Int32 -> IO (GValueConstruct o)
constructTextViewPixelsBelowLines val = B.Properties.constructObjectPropertyInt32 "pixels-below-lines" val

#if defined(ENABLE_OVERLOADING)
data TextViewPixelsBelowLinesPropertyInfo
instance AttrInfo TextViewPixelsBelowLinesPropertyInfo where
    type AttrAllowedOps TextViewPixelsBelowLinesPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint TextViewPixelsBelowLinesPropertyInfo = IsTextView
    type AttrSetTypeConstraint TextViewPixelsBelowLinesPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint TextViewPixelsBelowLinesPropertyInfo = (~) Int32
    type AttrTransferType TextViewPixelsBelowLinesPropertyInfo = Int32
    type AttrGetType TextViewPixelsBelowLinesPropertyInfo = Int32
    type AttrLabel TextViewPixelsBelowLinesPropertyInfo = "pixels-below-lines"
    type AttrOrigin TextViewPixelsBelowLinesPropertyInfo = TextView
    attrGet = getTextViewPixelsBelowLines
    attrSet = setTextViewPixelsBelowLines
    attrTransfer _ v = do
        return v
    attrConstruct = constructTextViewPixelsBelowLines
    attrClear = undefined
#endif

-- VVV Prop "pixels-inside-wrap"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@pixels-inside-wrap@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' textView #pixelsInsideWrap
-- @
getTextViewPixelsInsideWrap :: (MonadIO m, IsTextView o) => o -> m Int32
getTextViewPixelsInsideWrap obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "pixels-inside-wrap"

-- | Set the value of the “@pixels-inside-wrap@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' textView [ #pixelsInsideWrap 'Data.GI.Base.Attributes.:=' value ]
-- @
setTextViewPixelsInsideWrap :: (MonadIO m, IsTextView o) => o -> Int32 -> m ()
setTextViewPixelsInsideWrap obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "pixels-inside-wrap" val

-- | Construct a `GValueConstruct` with valid value for the “@pixels-inside-wrap@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructTextViewPixelsInsideWrap :: (IsTextView o) => Int32 -> IO (GValueConstruct o)
constructTextViewPixelsInsideWrap val = B.Properties.constructObjectPropertyInt32 "pixels-inside-wrap" val

#if defined(ENABLE_OVERLOADING)
data TextViewPixelsInsideWrapPropertyInfo
instance AttrInfo TextViewPixelsInsideWrapPropertyInfo where
    type AttrAllowedOps TextViewPixelsInsideWrapPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint TextViewPixelsInsideWrapPropertyInfo = IsTextView
    type AttrSetTypeConstraint TextViewPixelsInsideWrapPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint TextViewPixelsInsideWrapPropertyInfo = (~) Int32
    type AttrTransferType TextViewPixelsInsideWrapPropertyInfo = Int32
    type AttrGetType TextViewPixelsInsideWrapPropertyInfo = Int32
    type AttrLabel TextViewPixelsInsideWrapPropertyInfo = "pixels-inside-wrap"
    type AttrOrigin TextViewPixelsInsideWrapPropertyInfo = TextView
    attrGet = getTextViewPixelsInsideWrap
    attrSet = setTextViewPixelsInsideWrap
    attrTransfer _ v = do
        return v
    attrConstruct = constructTextViewPixelsInsideWrap
    attrClear = undefined
#endif

-- VVV Prop "populate-all"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@populate-all@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' textView #populateAll
-- @
getTextViewPopulateAll :: (MonadIO m, IsTextView o) => o -> m Bool
getTextViewPopulateAll obj = liftIO $ B.Properties.getObjectPropertyBool obj "populate-all"

-- | Set the value of the “@populate-all@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' textView [ #populateAll 'Data.GI.Base.Attributes.:=' value ]
-- @
setTextViewPopulateAll :: (MonadIO m, IsTextView o) => o -> Bool -> m ()
setTextViewPopulateAll obj val = liftIO $ B.Properties.setObjectPropertyBool obj "populate-all" val

-- | Construct a `GValueConstruct` with valid value for the “@populate-all@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructTextViewPopulateAll :: (IsTextView o) => Bool -> IO (GValueConstruct o)
constructTextViewPopulateAll val = B.Properties.constructObjectPropertyBool "populate-all" val

#if defined(ENABLE_OVERLOADING)
data TextViewPopulateAllPropertyInfo
instance AttrInfo TextViewPopulateAllPropertyInfo where
    type AttrAllowedOps TextViewPopulateAllPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint TextViewPopulateAllPropertyInfo = IsTextView
    type AttrSetTypeConstraint TextViewPopulateAllPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint TextViewPopulateAllPropertyInfo = (~) Bool
    type AttrTransferType TextViewPopulateAllPropertyInfo = Bool
    type AttrGetType TextViewPopulateAllPropertyInfo = Bool
    type AttrLabel TextViewPopulateAllPropertyInfo = "populate-all"
    type AttrOrigin TextViewPopulateAllPropertyInfo = TextView
    attrGet = getTextViewPopulateAll
    attrSet = setTextViewPopulateAll
    attrTransfer _ v = do
        return v
    attrConstruct = constructTextViewPopulateAll
    attrClear = undefined
#endif

-- VVV Prop "right-margin"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@right-margin@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' textView #rightMargin
-- @
getTextViewRightMargin :: (MonadIO m, IsTextView o) => o -> m Int32
getTextViewRightMargin obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "right-margin"

-- | Set the value of the “@right-margin@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' textView [ #rightMargin 'Data.GI.Base.Attributes.:=' value ]
-- @
setTextViewRightMargin :: (MonadIO m, IsTextView o) => o -> Int32 -> m ()
setTextViewRightMargin obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "right-margin" val

-- | Construct a `GValueConstruct` with valid value for the “@right-margin@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructTextViewRightMargin :: (IsTextView o) => Int32 -> IO (GValueConstruct o)
constructTextViewRightMargin val = B.Properties.constructObjectPropertyInt32 "right-margin" val

#if defined(ENABLE_OVERLOADING)
data TextViewRightMarginPropertyInfo
instance AttrInfo TextViewRightMarginPropertyInfo where
    type AttrAllowedOps TextViewRightMarginPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint TextViewRightMarginPropertyInfo = IsTextView
    type AttrSetTypeConstraint TextViewRightMarginPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint TextViewRightMarginPropertyInfo = (~) Int32
    type AttrTransferType TextViewRightMarginPropertyInfo = Int32
    type AttrGetType TextViewRightMarginPropertyInfo = Int32
    type AttrLabel TextViewRightMarginPropertyInfo = "right-margin"
    type AttrOrigin TextViewRightMarginPropertyInfo = TextView
    attrGet = getTextViewRightMargin
    attrSet = setTextViewRightMargin
    attrTransfer _ v = do
        return v
    attrConstruct = constructTextViewRightMargin
    attrClear = undefined
#endif

-- VVV Prop "tabs"
   -- Type: TInterface (Name {namespace = "Pango", name = "TabArray"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Just False)

-- | Get the value of the “@tabs@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' textView #tabs
-- @
getTextViewTabs :: (MonadIO m, IsTextView o) => o -> m (Maybe Pango.TabArray.TabArray)
getTextViewTabs obj = liftIO $ B.Properties.getObjectPropertyBoxed obj "tabs" Pango.TabArray.TabArray

-- | Set the value of the “@tabs@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' textView [ #tabs 'Data.GI.Base.Attributes.:=' value ]
-- @
setTextViewTabs :: (MonadIO m, IsTextView o) => o -> Pango.TabArray.TabArray -> m ()
setTextViewTabs obj val = liftIO $ B.Properties.setObjectPropertyBoxed obj "tabs" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@tabs@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructTextViewTabs :: (IsTextView o) => Pango.TabArray.TabArray -> IO (GValueConstruct o)
constructTextViewTabs val = B.Properties.constructObjectPropertyBoxed "tabs" (Just val)

#if defined(ENABLE_OVERLOADING)
data TextViewTabsPropertyInfo
instance AttrInfo TextViewTabsPropertyInfo where
    type AttrAllowedOps TextViewTabsPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint TextViewTabsPropertyInfo = IsTextView
    type AttrSetTypeConstraint TextViewTabsPropertyInfo = (~) Pango.TabArray.TabArray
    type AttrTransferTypeConstraint TextViewTabsPropertyInfo = (~) Pango.TabArray.TabArray
    type AttrTransferType TextViewTabsPropertyInfo = Pango.TabArray.TabArray
    type AttrGetType TextViewTabsPropertyInfo = (Maybe Pango.TabArray.TabArray)
    type AttrLabel TextViewTabsPropertyInfo = "tabs"
    type AttrOrigin TextViewTabsPropertyInfo = TextView
    attrGet = getTextViewTabs
    attrSet = setTextViewTabs
    attrTransfer _ v = do
        return v
    attrConstruct = constructTextViewTabs
    attrClear = undefined
#endif

-- VVV Prop "top-margin"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@top-margin@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' textView #topMargin
-- @
getTextViewTopMargin :: (MonadIO m, IsTextView o) => o -> m Int32
getTextViewTopMargin obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "top-margin"

-- | Set the value of the “@top-margin@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' textView [ #topMargin 'Data.GI.Base.Attributes.:=' value ]
-- @
setTextViewTopMargin :: (MonadIO m, IsTextView o) => o -> Int32 -> m ()
setTextViewTopMargin obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "top-margin" val

-- | Construct a `GValueConstruct` with valid value for the “@top-margin@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructTextViewTopMargin :: (IsTextView o) => Int32 -> IO (GValueConstruct o)
constructTextViewTopMargin val = B.Properties.constructObjectPropertyInt32 "top-margin" val

#if defined(ENABLE_OVERLOADING)
data TextViewTopMarginPropertyInfo
instance AttrInfo TextViewTopMarginPropertyInfo where
    type AttrAllowedOps TextViewTopMarginPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint TextViewTopMarginPropertyInfo = IsTextView
    type AttrSetTypeConstraint TextViewTopMarginPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint TextViewTopMarginPropertyInfo = (~) Int32
    type AttrTransferType TextViewTopMarginPropertyInfo = Int32
    type AttrGetType TextViewTopMarginPropertyInfo = Int32
    type AttrLabel TextViewTopMarginPropertyInfo = "top-margin"
    type AttrOrigin TextViewTopMarginPropertyInfo = TextView
    attrGet = getTextViewTopMargin
    attrSet = setTextViewTopMargin
    attrTransfer _ v = do
        return v
    attrConstruct = constructTextViewTopMargin
    attrClear = undefined
#endif

-- VVV Prop "wrap-mode"
   -- Type: TInterface (Name {namespace = "Gtk", name = "WrapMode"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@wrap-mode@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' textView #wrapMode
-- @
getTextViewWrapMode :: (MonadIO m, IsTextView o) => o -> m Gtk.Enums.WrapMode
getTextViewWrapMode obj = liftIO $ B.Properties.getObjectPropertyEnum obj "wrap-mode"

-- | Set the value of the “@wrap-mode@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' textView [ #wrapMode 'Data.GI.Base.Attributes.:=' value ]
-- @
setTextViewWrapMode :: (MonadIO m, IsTextView o) => o -> Gtk.Enums.WrapMode -> m ()
setTextViewWrapMode obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "wrap-mode" val

-- | Construct a `GValueConstruct` with valid value for the “@wrap-mode@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructTextViewWrapMode :: (IsTextView o) => Gtk.Enums.WrapMode -> IO (GValueConstruct o)
constructTextViewWrapMode val = B.Properties.constructObjectPropertyEnum "wrap-mode" val

#if defined(ENABLE_OVERLOADING)
data TextViewWrapModePropertyInfo
instance AttrInfo TextViewWrapModePropertyInfo where
    type AttrAllowedOps TextViewWrapModePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint TextViewWrapModePropertyInfo = IsTextView
    type AttrSetTypeConstraint TextViewWrapModePropertyInfo = (~) Gtk.Enums.WrapMode
    type AttrTransferTypeConstraint TextViewWrapModePropertyInfo = (~) Gtk.Enums.WrapMode
    type AttrTransferType TextViewWrapModePropertyInfo = Gtk.Enums.WrapMode
    type AttrGetType TextViewWrapModePropertyInfo = Gtk.Enums.WrapMode
    type AttrLabel TextViewWrapModePropertyInfo = "wrap-mode"
    type AttrOrigin TextViewWrapModePropertyInfo = TextView
    attrGet = getTextViewWrapMode
    attrSet = setTextViewWrapMode
    attrTransfer _ v = do
        return v
    attrConstruct = constructTextViewWrapMode
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList TextView
type instance O.AttributeList TextView = TextViewAttributeList
type TextViewAttributeList = ('[ '("acceptsTab", TextViewAcceptsTabPropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("bottomMargin", TextViewBottomMarginPropertyInfo), '("buffer", TextViewBufferPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("cursorVisible", TextViewCursorVisiblePropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("editable", TextViewEditablePropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("hadjustment", Gtk.Scrollable.ScrollableHadjustmentPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("hscrollPolicy", Gtk.Scrollable.ScrollableHscrollPolicyPropertyInfo), '("imModule", TextViewImModulePropertyInfo), '("indent", TextViewIndentPropertyInfo), '("inputHints", TextViewInputHintsPropertyInfo), '("inputPurpose", TextViewInputPurposePropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("justification", TextViewJustificationPropertyInfo), '("leftMargin", TextViewLeftMarginPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("monospace", TextViewMonospacePropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("overwrite", TextViewOverwritePropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("pixelsAboveLines", TextViewPixelsAboveLinesPropertyInfo), '("pixelsBelowLines", TextViewPixelsBelowLinesPropertyInfo), '("pixelsInsideWrap", TextViewPixelsInsideWrapPropertyInfo), '("populateAll", TextViewPopulateAllPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("rightMargin", TextViewRightMarginPropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tabs", TextViewTabsPropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("topMargin", TextViewTopMarginPropertyInfo), '("vadjustment", Gtk.Scrollable.ScrollableVadjustmentPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("vscrollPolicy", Gtk.Scrollable.ScrollableVscrollPolicyPropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo), '("wrapMode", TextViewWrapModePropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
textViewAcceptsTab :: AttrLabelProxy "acceptsTab"
textViewAcceptsTab = AttrLabelProxy

textViewBottomMargin :: AttrLabelProxy "bottomMargin"
textViewBottomMargin = AttrLabelProxy

textViewBuffer :: AttrLabelProxy "buffer"
textViewBuffer = AttrLabelProxy

textViewCursorVisible :: AttrLabelProxy "cursorVisible"
textViewCursorVisible = AttrLabelProxy

textViewEditable :: AttrLabelProxy "editable"
textViewEditable = AttrLabelProxy

textViewImModule :: AttrLabelProxy "imModule"
textViewImModule = AttrLabelProxy

textViewIndent :: AttrLabelProxy "indent"
textViewIndent = AttrLabelProxy

textViewInputHints :: AttrLabelProxy "inputHints"
textViewInputHints = AttrLabelProxy

textViewInputPurpose :: AttrLabelProxy "inputPurpose"
textViewInputPurpose = AttrLabelProxy

textViewJustification :: AttrLabelProxy "justification"
textViewJustification = AttrLabelProxy

textViewLeftMargin :: AttrLabelProxy "leftMargin"
textViewLeftMargin = AttrLabelProxy

textViewMonospace :: AttrLabelProxy "monospace"
textViewMonospace = AttrLabelProxy

textViewOverwrite :: AttrLabelProxy "overwrite"
textViewOverwrite = AttrLabelProxy

textViewPixelsAboveLines :: AttrLabelProxy "pixelsAboveLines"
textViewPixelsAboveLines = AttrLabelProxy

textViewPixelsBelowLines :: AttrLabelProxy "pixelsBelowLines"
textViewPixelsBelowLines = AttrLabelProxy

textViewPixelsInsideWrap :: AttrLabelProxy "pixelsInsideWrap"
textViewPixelsInsideWrap = AttrLabelProxy

textViewPopulateAll :: AttrLabelProxy "populateAll"
textViewPopulateAll = AttrLabelProxy

textViewRightMargin :: AttrLabelProxy "rightMargin"
textViewRightMargin = AttrLabelProxy

textViewTabs :: AttrLabelProxy "tabs"
textViewTabs = AttrLabelProxy

textViewTopMargin :: AttrLabelProxy "topMargin"
textViewTopMargin = AttrLabelProxy

textViewWrapMode :: AttrLabelProxy "wrapMode"
textViewWrapMode = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList TextView = TextViewSignalList
type TextViewSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("backspace", TextViewBackspaceSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("copyClipboard", TextViewCopyClipboardSignalInfo), '("cutClipboard", TextViewCutClipboardSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("deleteFromCursor", TextViewDeleteFromCursorSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("extendSelection", TextViewExtendSelectionSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("insertAtCursor", TextViewInsertAtCursorSignalInfo), '("insertEmoji", TextViewInsertEmojiSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveCursor", TextViewMoveCursorSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("moveViewport", TextViewMoveViewportSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("pasteClipboard", TextViewPasteClipboardSignalInfo), '("populatePopup", TextViewPopulatePopupSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("preeditChanged", TextViewPreeditChangedSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectAll", TextViewSelectAllSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setAnchor", TextViewSetAnchorSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("toggleCursorVisible", TextViewToggleCursorVisibleSignalInfo), '("toggleOverwrite", TextViewToggleOverwriteSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method TextView::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "TextView" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_new" gtk_text_view_new :: 
    IO (Ptr TextView)

-- | Creates a new t'GI.Gtk.Objects.TextView.TextView'. If you don’t call 'GI.Gtk.Objects.TextView.textViewSetBuffer'
-- before using the text view, an empty default buffer will be created
-- for you. Get the buffer with 'GI.Gtk.Objects.TextView.textViewGetBuffer'. If you want
-- to specify your own buffer, consider 'GI.Gtk.Objects.TextView.textViewNewWithBuffer'.
textViewNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m TextView
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.TextView.TextView'
textViewNew  = liftIO $ do
    result <- gtk_text_view_new
    checkUnexpectedReturnNULL "textViewNew" result
    result' <- (newObject TextView) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method TextView::new_with_buffer
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "buffer"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextBuffer" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextBuffer" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "TextView" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_new_with_buffer" gtk_text_view_new_with_buffer :: 
    Ptr Gtk.TextBuffer.TextBuffer ->        -- buffer : TInterface (Name {namespace = "Gtk", name = "TextBuffer"})
    IO (Ptr TextView)

-- | Creates a new t'GI.Gtk.Objects.TextView.TextView' widget displaying the buffer
-- /@buffer@/. One buffer can be shared among many widgets.
-- /@buffer@/ may be 'P.Nothing' to create a default buffer, in which case
-- this function is equivalent to 'GI.Gtk.Objects.TextView.textViewNew'. The
-- text view adds its own reference count to the buffer; it does not
-- take over an existing reference.
textViewNewWithBuffer ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.TextBuffer.IsTextBuffer a) =>
    a
    -- ^ /@buffer@/: a t'GI.Gtk.Objects.TextBuffer.TextBuffer'
    -> m TextView
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.TextView.TextView'.
textViewNewWithBuffer buffer = liftIO $ do
    buffer' <- unsafeManagedPtrCastPtr buffer
    result <- gtk_text_view_new_with_buffer buffer'
    checkUnexpectedReturnNULL "textViewNewWithBuffer" result
    result' <- (newObject TextView) result
    touchManagedPtr buffer
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method TextView::add_child_at_anchor
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "child"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkWidget" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "anchor"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextChildAnchor" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a #GtkTextChildAnchor in the #GtkTextBuffer for @text_view"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_add_child_at_anchor" gtk_text_view_add_child_at_anchor :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    Ptr Gtk.TextChildAnchor.TextChildAnchor -> -- anchor : TInterface (Name {namespace = "Gtk", name = "TextChildAnchor"})
    IO ()

-- | Adds a child widget in the text buffer, at the given /@anchor@/.
textViewAddChildAtAnchor ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a, Gtk.Widget.IsWidget b, Gtk.TextChildAnchor.IsTextChildAnchor c) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> b
    -- ^ /@child@/: a t'GI.Gtk.Objects.Widget.Widget'
    -> c
    -- ^ /@anchor@/: a t'GI.Gtk.Objects.TextChildAnchor.TextChildAnchor' in the t'GI.Gtk.Objects.TextBuffer.TextBuffer' for /@textView@/
    -> m ()
textViewAddChildAtAnchor textView child anchor = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    child' <- unsafeManagedPtrCastPtr child
    anchor' <- unsafeManagedPtrCastPtr anchor
    gtk_text_view_add_child_at_anchor textView' child' anchor'
    touchManagedPtr textView
    touchManagedPtr child
    touchManagedPtr anchor
    return ()

#if defined(ENABLE_OVERLOADING)
data TextViewAddChildAtAnchorMethodInfo
instance (signature ~ (b -> c -> m ()), MonadIO m, IsTextView a, Gtk.Widget.IsWidget b, Gtk.TextChildAnchor.IsTextChildAnchor c) => O.MethodInfo TextViewAddChildAtAnchorMethodInfo a signature where
    overloadedMethod = textViewAddChildAtAnchor

#endif

-- method TextView::add_child_in_window
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "child"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkWidget" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "which_window"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextWindowType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "which window the child should appear in"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "xpos"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "X position of child in window coordinates"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "ypos"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Y position of child in window coordinates"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_add_child_in_window" gtk_text_view_add_child_in_window :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    CUInt ->                                -- which_window : TInterface (Name {namespace = "Gtk", name = "TextWindowType"})
    Int32 ->                                -- xpos : TBasicType TInt
    Int32 ->                                -- ypos : TBasicType TInt
    IO ()

-- | Adds a child at fixed coordinates in one of the text widget\'s
-- windows.
-- 
-- The window must have nonzero size (see
-- 'GI.Gtk.Objects.TextView.textViewSetBorderWindowSize'). Note that the child
-- coordinates are given relative to scrolling. When
-- placing a child in @/GTK_TEXT_WINDOW_WIDGET/@, scrolling is
-- irrelevant, the child floats above all scrollable areas. But when
-- placing a child in one of the scrollable windows (border windows or
-- text window) it will move with the scrolling as needed.
textViewAddChildInWindow ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> b
    -- ^ /@child@/: a t'GI.Gtk.Objects.Widget.Widget'
    -> Gtk.Enums.TextWindowType
    -- ^ /@whichWindow@/: which window the child should appear in
    -> Int32
    -- ^ /@xpos@/: X position of child in window coordinates
    -> Int32
    -- ^ /@ypos@/: Y position of child in window coordinates
    -> m ()
textViewAddChildInWindow textView child whichWindow xpos ypos = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    child' <- unsafeManagedPtrCastPtr child
    let whichWindow' = (fromIntegral . fromEnum) whichWindow
    gtk_text_view_add_child_in_window textView' child' whichWindow' xpos ypos
    touchManagedPtr textView
    touchManagedPtr child
    return ()

#if defined(ENABLE_OVERLOADING)
data TextViewAddChildInWindowMethodInfo
instance (signature ~ (b -> Gtk.Enums.TextWindowType -> Int32 -> Int32 -> m ()), MonadIO m, IsTextView a, Gtk.Widget.IsWidget b) => O.MethodInfo TextViewAddChildInWindowMethodInfo a signature where
    overloadedMethod = textViewAddChildInWindow

#endif

-- method TextView::backward_display_line
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "iter"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextIter" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextIter" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_backward_display_line" gtk_text_view_backward_display_line :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    Ptr Gtk.TextIter.TextIter ->            -- iter : TInterface (Name {namespace = "Gtk", name = "TextIter"})
    IO CInt

-- | Moves the given /@iter@/ backward by one display (wrapped) line.
-- A display line is different from a paragraph. Paragraphs are
-- separated by newlines or other paragraph separator characters.
-- Display lines are created by line-wrapping a paragraph. If
-- wrapping is turned off, display lines and paragraphs will be the
-- same. Display lines are divided differently for each view, since
-- they depend on the view’s width; paragraphs are the same in all
-- views, since they depend on the contents of the t'GI.Gtk.Objects.TextBuffer.TextBuffer'.
textViewBackwardDisplayLine ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> Gtk.TextIter.TextIter
    -- ^ /@iter@/: a t'GI.Gtk.Structs.TextIter.TextIter'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if /@iter@/ was moved and is not on the end iterator
textViewBackwardDisplayLine textView iter = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    iter' <- unsafeManagedPtrGetPtr iter
    result <- gtk_text_view_backward_display_line textView' iter'
    let result' = (/= 0) result
    touchManagedPtr textView
    touchManagedPtr iter
    return result'

#if defined(ENABLE_OVERLOADING)
data TextViewBackwardDisplayLineMethodInfo
instance (signature ~ (Gtk.TextIter.TextIter -> m Bool), MonadIO m, IsTextView a) => O.MethodInfo TextViewBackwardDisplayLineMethodInfo a signature where
    overloadedMethod = textViewBackwardDisplayLine

#endif

-- method TextView::backward_display_line_start
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "iter"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextIter" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextIter" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_backward_display_line_start" gtk_text_view_backward_display_line_start :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    Ptr Gtk.TextIter.TextIter ->            -- iter : TInterface (Name {namespace = "Gtk", name = "TextIter"})
    IO CInt

-- | Moves the given /@iter@/ backward to the next display line start.
-- A display line is different from a paragraph. Paragraphs are
-- separated by newlines or other paragraph separator characters.
-- Display lines are created by line-wrapping a paragraph. If
-- wrapping is turned off, display lines and paragraphs will be the
-- same. Display lines are divided differently for each view, since
-- they depend on the view’s width; paragraphs are the same in all
-- views, since they depend on the contents of the t'GI.Gtk.Objects.TextBuffer.TextBuffer'.
textViewBackwardDisplayLineStart ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> Gtk.TextIter.TextIter
    -- ^ /@iter@/: a t'GI.Gtk.Structs.TextIter.TextIter'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if /@iter@/ was moved and is not on the end iterator
textViewBackwardDisplayLineStart textView iter = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    iter' <- unsafeManagedPtrGetPtr iter
    result <- gtk_text_view_backward_display_line_start textView' iter'
    let result' = (/= 0) result
    touchManagedPtr textView
    touchManagedPtr iter
    return result'

#if defined(ENABLE_OVERLOADING)
data TextViewBackwardDisplayLineStartMethodInfo
instance (signature ~ (Gtk.TextIter.TextIter -> m Bool), MonadIO m, IsTextView a) => O.MethodInfo TextViewBackwardDisplayLineStartMethodInfo a signature where
    overloadedMethod = textViewBackwardDisplayLineStart

#endif

-- method TextView::buffer_to_window_coords
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "win"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextWindowType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a #GtkTextWindowType, except %GTK_TEXT_WINDOW_PRIVATE"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "buffer_x"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "buffer x coordinate"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "buffer_y"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "buffer y coordinate"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "window_x"
--           , argType = TBasicType TInt
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "window x coordinate return location or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "window_y"
--           , argType = TBasicType TInt
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "window y coordinate return location or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_buffer_to_window_coords" gtk_text_view_buffer_to_window_coords :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    CUInt ->                                -- win : TInterface (Name {namespace = "Gtk", name = "TextWindowType"})
    Int32 ->                                -- buffer_x : TBasicType TInt
    Int32 ->                                -- buffer_y : TBasicType TInt
    Ptr Int32 ->                            -- window_x : TBasicType TInt
    Ptr Int32 ->                            -- window_y : TBasicType TInt
    IO ()

-- | Converts coordinate (/@bufferX@/, /@bufferY@/) to coordinates for the window
-- /@win@/, and stores the result in (/@windowX@/, /@windowY@/).
-- 
-- Note that you can’t convert coordinates for a nonexisting window (see
-- 'GI.Gtk.Objects.TextView.textViewSetBorderWindowSize').
textViewBufferToWindowCoords ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> Gtk.Enums.TextWindowType
    -- ^ /@win@/: a t'GI.Gtk.Enums.TextWindowType', except 'GI.Gtk.Enums.TextWindowTypePrivate'
    -> Int32
    -- ^ /@bufferX@/: buffer x coordinate
    -> Int32
    -- ^ /@bufferY@/: buffer y coordinate
    -> m ((Int32, Int32))
textViewBufferToWindowCoords textView win bufferX bufferY = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    let win' = (fromIntegral . fromEnum) win
    windowX <- allocMem :: IO (Ptr Int32)
    windowY <- allocMem :: IO (Ptr Int32)
    gtk_text_view_buffer_to_window_coords textView' win' bufferX bufferY windowX windowY
    windowX' <- peek windowX
    windowY' <- peek windowY
    touchManagedPtr textView
    freeMem windowX
    freeMem windowY
    return (windowX', windowY')

#if defined(ENABLE_OVERLOADING)
data TextViewBufferToWindowCoordsMethodInfo
instance (signature ~ (Gtk.Enums.TextWindowType -> Int32 -> Int32 -> m ((Int32, Int32))), MonadIO m, IsTextView a) => O.MethodInfo TextViewBufferToWindowCoordsMethodInfo a signature where
    overloadedMethod = textViewBufferToWindowCoords

#endif

-- method TextView::forward_display_line
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "iter"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextIter" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextIter" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_forward_display_line" gtk_text_view_forward_display_line :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    Ptr Gtk.TextIter.TextIter ->            -- iter : TInterface (Name {namespace = "Gtk", name = "TextIter"})
    IO CInt

-- | Moves the given /@iter@/ forward by one display (wrapped) line.
-- A display line is different from a paragraph. Paragraphs are
-- separated by newlines or other paragraph separator characters.
-- Display lines are created by line-wrapping a paragraph. If
-- wrapping is turned off, display lines and paragraphs will be the
-- same. Display lines are divided differently for each view, since
-- they depend on the view’s width; paragraphs are the same in all
-- views, since they depend on the contents of the t'GI.Gtk.Objects.TextBuffer.TextBuffer'.
textViewForwardDisplayLine ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> Gtk.TextIter.TextIter
    -- ^ /@iter@/: a t'GI.Gtk.Structs.TextIter.TextIter'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if /@iter@/ was moved and is not on the end iterator
textViewForwardDisplayLine textView iter = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    iter' <- unsafeManagedPtrGetPtr iter
    result <- gtk_text_view_forward_display_line textView' iter'
    let result' = (/= 0) result
    touchManagedPtr textView
    touchManagedPtr iter
    return result'

#if defined(ENABLE_OVERLOADING)
data TextViewForwardDisplayLineMethodInfo
instance (signature ~ (Gtk.TextIter.TextIter -> m Bool), MonadIO m, IsTextView a) => O.MethodInfo TextViewForwardDisplayLineMethodInfo a signature where
    overloadedMethod = textViewForwardDisplayLine

#endif

-- method TextView::forward_display_line_end
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "iter"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextIter" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextIter" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_forward_display_line_end" gtk_text_view_forward_display_line_end :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    Ptr Gtk.TextIter.TextIter ->            -- iter : TInterface (Name {namespace = "Gtk", name = "TextIter"})
    IO CInt

-- | Moves the given /@iter@/ forward to the next display line end.
-- A display line is different from a paragraph. Paragraphs are
-- separated by newlines or other paragraph separator characters.
-- Display lines are created by line-wrapping a paragraph. If
-- wrapping is turned off, display lines and paragraphs will be the
-- same. Display lines are divided differently for each view, since
-- they depend on the view’s width; paragraphs are the same in all
-- views, since they depend on the contents of the t'GI.Gtk.Objects.TextBuffer.TextBuffer'.
textViewForwardDisplayLineEnd ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> Gtk.TextIter.TextIter
    -- ^ /@iter@/: a t'GI.Gtk.Structs.TextIter.TextIter'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if /@iter@/ was moved and is not on the end iterator
textViewForwardDisplayLineEnd textView iter = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    iter' <- unsafeManagedPtrGetPtr iter
    result <- gtk_text_view_forward_display_line_end textView' iter'
    let result' = (/= 0) result
    touchManagedPtr textView
    touchManagedPtr iter
    return result'

#if defined(ENABLE_OVERLOADING)
data TextViewForwardDisplayLineEndMethodInfo
instance (signature ~ (Gtk.TextIter.TextIter -> m Bool), MonadIO m, IsTextView a) => O.MethodInfo TextViewForwardDisplayLineEndMethodInfo a signature where
    overloadedMethod = textViewForwardDisplayLineEnd

#endif

-- method TextView::get_accepts_tab
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_get_accepts_tab" gtk_text_view_get_accepts_tab :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    IO CInt

-- | Returns whether pressing the Tab key inserts a tab characters.
-- 'GI.Gtk.Objects.TextView.textViewSetAcceptsTab'.
-- 
-- /Since: 2.4/
textViewGetAcceptsTab ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: A t'GI.Gtk.Objects.TextView.TextView'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if pressing the Tab key inserts a tab character,
    --   'P.False' if pressing the Tab key moves the keyboard focus.
textViewGetAcceptsTab textView = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    result <- gtk_text_view_get_accepts_tab textView'
    let result' = (/= 0) result
    touchManagedPtr textView
    return result'

#if defined(ENABLE_OVERLOADING)
data TextViewGetAcceptsTabMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsTextView a) => O.MethodInfo TextViewGetAcceptsTabMethodInfo a signature where
    overloadedMethod = textViewGetAcceptsTab

#endif

-- method TextView::get_border_window_size
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "type"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextWindowType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "window to return size from"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_get_border_window_size" gtk_text_view_get_border_window_size :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    CUInt ->                                -- type : TInterface (Name {namespace = "Gtk", name = "TextWindowType"})
    IO Int32

-- | Gets the width of the specified border window. See
-- 'GI.Gtk.Objects.TextView.textViewSetBorderWindowSize'.
textViewGetBorderWindowSize ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> Gtk.Enums.TextWindowType
    -- ^ /@type@/: window to return size from
    -> m Int32
    -- ^ __Returns:__ width of window
textViewGetBorderWindowSize textView type_ = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    let type_' = (fromIntegral . fromEnum) type_
    result <- gtk_text_view_get_border_window_size textView' type_'
    touchManagedPtr textView
    return result

#if defined(ENABLE_OVERLOADING)
data TextViewGetBorderWindowSizeMethodInfo
instance (signature ~ (Gtk.Enums.TextWindowType -> m Int32), MonadIO m, IsTextView a) => O.MethodInfo TextViewGetBorderWindowSizeMethodInfo a signature where
    overloadedMethod = textViewGetBorderWindowSize

#endif

-- method TextView::get_bottom_margin
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_get_bottom_margin" gtk_text_view_get_bottom_margin :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    IO Int32

-- | Gets the bottom margin for text in the /@textView@/.
-- 
-- /Since: 3.18/
textViewGetBottomMargin ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> m Int32
    -- ^ __Returns:__ bottom margin in pixels
textViewGetBottomMargin textView = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    result <- gtk_text_view_get_bottom_margin textView'
    touchManagedPtr textView
    return result

#if defined(ENABLE_OVERLOADING)
data TextViewGetBottomMarginMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsTextView a) => O.MethodInfo TextViewGetBottomMarginMethodInfo a signature where
    overloadedMethod = textViewGetBottomMargin

#endif

-- method TextView::get_buffer
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "TextBuffer" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_get_buffer" gtk_text_view_get_buffer :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    IO (Ptr Gtk.TextBuffer.TextBuffer)

-- | Returns the t'GI.Gtk.Objects.TextBuffer.TextBuffer' being displayed by this text view.
-- The reference count on the buffer is not incremented; the caller
-- of this function won’t own a new reference.
textViewGetBuffer ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> m Gtk.TextBuffer.TextBuffer
    -- ^ __Returns:__ a t'GI.Gtk.Objects.TextBuffer.TextBuffer'
textViewGetBuffer textView = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    result <- gtk_text_view_get_buffer textView'
    checkUnexpectedReturnNULL "textViewGetBuffer" result
    result' <- (newObject Gtk.TextBuffer.TextBuffer) result
    touchManagedPtr textView
    return result'

#if defined(ENABLE_OVERLOADING)
data TextViewGetBufferMethodInfo
instance (signature ~ (m Gtk.TextBuffer.TextBuffer), MonadIO m, IsTextView a) => O.MethodInfo TextViewGetBufferMethodInfo a signature where
    overloadedMethod = textViewGetBuffer

#endif

-- method TextView::get_cursor_locations
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "iter"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextIter" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextIter" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "strong"
--           , argType =
--               TInterface Name { namespace = "Gdk" , name = "Rectangle" }
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "location to store the strong\n    cursor position (may be %NULL)"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = True
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "weak"
--           , argType =
--               TInterface Name { namespace = "Gdk" , name = "Rectangle" }
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "location to store the weak\n    cursor position (may be %NULL)"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = True
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_get_cursor_locations" gtk_text_view_get_cursor_locations :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    Ptr Gtk.TextIter.TextIter ->            -- iter : TInterface (Name {namespace = "Gtk", name = "TextIter"})
    Ptr Gdk.Rectangle.Rectangle ->          -- strong : TInterface (Name {namespace = "Gdk", name = "Rectangle"})
    Ptr Gdk.Rectangle.Rectangle ->          -- weak : TInterface (Name {namespace = "Gdk", name = "Rectangle"})
    IO ()

-- | Given an /@iter@/ within a text layout, determine the positions of the
-- strong and weak cursors if the insertion point is at that
-- iterator. The position of each cursor is stored as a zero-width
-- rectangle. The strong cursor location is the location where
-- characters of the directionality equal to the base direction of the
-- paragraph are inserted.  The weak cursor location is the location
-- where characters of the directionality opposite to the base
-- direction of the paragraph are inserted.
-- 
-- If /@iter@/ is 'P.Nothing', the actual cursor position is used.
-- 
-- Note that if /@iter@/ happens to be the actual cursor position, and
-- there is currently an IM preedit sequence being entered, the
-- returned locations will be adjusted to account for the preedit
-- cursor’s offset within the preedit sequence.
-- 
-- The rectangle position is in buffer coordinates; use
-- 'GI.Gtk.Objects.TextView.textViewBufferToWindowCoords' to convert these
-- coordinates to coordinates for one of the windows in the text view.
-- 
-- /Since: 3.0/
textViewGetCursorLocations ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> Maybe (Gtk.TextIter.TextIter)
    -- ^ /@iter@/: a t'GI.Gtk.Structs.TextIter.TextIter'
    -> m ((Gdk.Rectangle.Rectangle, Gdk.Rectangle.Rectangle))
textViewGetCursorLocations textView iter = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    maybeIter <- case iter of
        Nothing -> return nullPtr
        Just jIter -> do
            jIter' <- unsafeManagedPtrGetPtr jIter
            return jIter'
    strong <- callocBoxedBytes 16 :: IO (Ptr Gdk.Rectangle.Rectangle)
    weak <- callocBoxedBytes 16 :: IO (Ptr Gdk.Rectangle.Rectangle)
    gtk_text_view_get_cursor_locations textView' maybeIter strong weak
    strong' <- (wrapBoxed Gdk.Rectangle.Rectangle) strong
    weak' <- (wrapBoxed Gdk.Rectangle.Rectangle) weak
    touchManagedPtr textView
    whenJust iter touchManagedPtr
    return (strong', weak')

#if defined(ENABLE_OVERLOADING)
data TextViewGetCursorLocationsMethodInfo
instance (signature ~ (Maybe (Gtk.TextIter.TextIter) -> m ((Gdk.Rectangle.Rectangle, Gdk.Rectangle.Rectangle))), MonadIO m, IsTextView a) => O.MethodInfo TextViewGetCursorLocationsMethodInfo a signature where
    overloadedMethod = textViewGetCursorLocations

#endif

-- method TextView::get_cursor_visible
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_get_cursor_visible" gtk_text_view_get_cursor_visible :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    IO CInt

-- | Find out whether the cursor should be displayed.
textViewGetCursorVisible ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> m Bool
    -- ^ __Returns:__ whether the insertion mark is visible
textViewGetCursorVisible textView = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    result <- gtk_text_view_get_cursor_visible textView'
    let result' = (/= 0) result
    touchManagedPtr textView
    return result'

#if defined(ENABLE_OVERLOADING)
data TextViewGetCursorVisibleMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsTextView a) => O.MethodInfo TextViewGetCursorVisibleMethodInfo a signature where
    overloadedMethod = textViewGetCursorVisible

#endif

-- method TextView::get_default_attributes
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Gtk" , name = "TextAttributes" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_get_default_attributes" gtk_text_view_get_default_attributes :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    IO (Ptr Gtk.TextAttributes.TextAttributes)

-- | Obtains a copy of the default text attributes. These are the
-- attributes used for text unless a tag overrides them.
-- You’d typically pass the default attributes in to
-- 'GI.Gtk.Structs.TextIter.textIterGetAttributes' in order to get the
-- attributes in effect at a given text position.
-- 
-- The return value is a copy owned by the caller of this function,
-- and should be freed with 'GI.Gtk.Structs.TextAttributes.textAttributesUnref'.
textViewGetDefaultAttributes ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> m Gtk.TextAttributes.TextAttributes
    -- ^ __Returns:__ a new t'GI.Gtk.Structs.TextAttributes.TextAttributes'
textViewGetDefaultAttributes textView = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    result <- gtk_text_view_get_default_attributes textView'
    checkUnexpectedReturnNULL "textViewGetDefaultAttributes" result
    result' <- (wrapBoxed Gtk.TextAttributes.TextAttributes) result
    touchManagedPtr textView
    return result'

#if defined(ENABLE_OVERLOADING)
data TextViewGetDefaultAttributesMethodInfo
instance (signature ~ (m Gtk.TextAttributes.TextAttributes), MonadIO m, IsTextView a) => O.MethodInfo TextViewGetDefaultAttributesMethodInfo a signature where
    overloadedMethod = textViewGetDefaultAttributes

#endif

-- method TextView::get_editable
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_get_editable" gtk_text_view_get_editable :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    IO CInt

-- | Returns the default editability of the t'GI.Gtk.Objects.TextView.TextView'. Tags in the
-- buffer may override this setting for some ranges of text.
textViewGetEditable ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> m Bool
    -- ^ __Returns:__ whether text is editable by default
textViewGetEditable textView = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    result <- gtk_text_view_get_editable textView'
    let result' = (/= 0) result
    touchManagedPtr textView
    return result'

#if defined(ENABLE_OVERLOADING)
data TextViewGetEditableMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsTextView a) => O.MethodInfo TextViewGetEditableMethodInfo a signature where
    overloadedMethod = textViewGetEditable

#endif

-- method TextView::get_hadjustment
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Adjustment" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_get_hadjustment" gtk_text_view_get_hadjustment :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    IO (Ptr Gtk.Adjustment.Adjustment)

{-# DEPRECATED textViewGetHadjustment ["(Since version 3.0)","Use 'GI.Gtk.Interfaces.Scrollable.scrollableGetHadjustment'"] #-}
-- | Gets the horizontal-scrolling t'GI.Gtk.Objects.Adjustment.Adjustment'.
-- 
-- /Since: 2.22/
textViewGetHadjustment ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> m Gtk.Adjustment.Adjustment
    -- ^ __Returns:__ pointer to the horizontal t'GI.Gtk.Objects.Adjustment.Adjustment'
textViewGetHadjustment textView = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    result <- gtk_text_view_get_hadjustment textView'
    checkUnexpectedReturnNULL "textViewGetHadjustment" result
    result' <- (newObject Gtk.Adjustment.Adjustment) result
    touchManagedPtr textView
    return result'

#if defined(ENABLE_OVERLOADING)
data TextViewGetHadjustmentMethodInfo
instance (signature ~ (m Gtk.Adjustment.Adjustment), MonadIO m, IsTextView a) => O.MethodInfo TextViewGetHadjustmentMethodInfo a signature where
    overloadedMethod = textViewGetHadjustment

#endif

-- method TextView::get_indent
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_get_indent" gtk_text_view_get_indent :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    IO Int32

-- | Gets the default indentation of paragraphs in /@textView@/.
-- Tags in the view’s buffer may override the default.
-- The indentation may be negative.
textViewGetIndent ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> m Int32
    -- ^ __Returns:__ number of pixels of indentation
textViewGetIndent textView = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    result <- gtk_text_view_get_indent textView'
    touchManagedPtr textView
    return result

#if defined(ENABLE_OVERLOADING)
data TextViewGetIndentMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsTextView a) => O.MethodInfo TextViewGetIndentMethodInfo a signature where
    overloadedMethod = textViewGetIndent

#endif

-- method TextView::get_input_hints
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "InputHints" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_get_input_hints" gtk_text_view_get_input_hints :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    IO CUInt

-- | Gets the value of the t'GI.Gtk.Objects.TextView.TextView':@/input-hints/@ property.
-- 
-- /Since: 3.6/
textViewGetInputHints ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> m [Gtk.Flags.InputHints]
textViewGetInputHints textView = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    result <- gtk_text_view_get_input_hints textView'
    let result' = wordToGFlags result
    touchManagedPtr textView
    return result'

#if defined(ENABLE_OVERLOADING)
data TextViewGetInputHintsMethodInfo
instance (signature ~ (m [Gtk.Flags.InputHints]), MonadIO m, IsTextView a) => O.MethodInfo TextViewGetInputHintsMethodInfo a signature where
    overloadedMethod = textViewGetInputHints

#endif

-- method TextView::get_input_purpose
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Gtk" , name = "InputPurpose" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_get_input_purpose" gtk_text_view_get_input_purpose :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    IO CUInt

-- | Gets the value of the t'GI.Gtk.Objects.TextView.TextView':@/input-purpose/@ property.
-- 
-- /Since: 3.6/
textViewGetInputPurpose ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> m Gtk.Enums.InputPurpose
textViewGetInputPurpose textView = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    result <- gtk_text_view_get_input_purpose textView'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr textView
    return result'

#if defined(ENABLE_OVERLOADING)
data TextViewGetInputPurposeMethodInfo
instance (signature ~ (m Gtk.Enums.InputPurpose), MonadIO m, IsTextView a) => O.MethodInfo TextViewGetInputPurposeMethodInfo a signature where
    overloadedMethod = textViewGetInputPurpose

#endif

-- method TextView::get_iter_at_location
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "iter"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextIter" }
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextIter" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = True
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "x"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "x position, in buffer coordinates"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "y"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "y position, in buffer coordinates"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_get_iter_at_location" gtk_text_view_get_iter_at_location :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    Ptr Gtk.TextIter.TextIter ->            -- iter : TInterface (Name {namespace = "Gtk", name = "TextIter"})
    Int32 ->                                -- x : TBasicType TInt
    Int32 ->                                -- y : TBasicType TInt
    IO CInt

-- | Retrieves the iterator at buffer coordinates /@x@/ and /@y@/. Buffer
-- coordinates are coordinates for the entire buffer, not just the
-- currently-displayed portion.  If you have coordinates from an
-- event, you have to convert those to buffer coordinates with
-- 'GI.Gtk.Objects.TextView.textViewWindowToBufferCoords'.
textViewGetIterAtLocation ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> Int32
    -- ^ /@x@/: x position, in buffer coordinates
    -> Int32
    -- ^ /@y@/: y position, in buffer coordinates
    -> m ((Bool, Gtk.TextIter.TextIter))
    -- ^ __Returns:__ 'P.True' if the position is over text
textViewGetIterAtLocation textView x y = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    iter <- callocBoxedBytes 80 :: IO (Ptr Gtk.TextIter.TextIter)
    result <- gtk_text_view_get_iter_at_location textView' iter x y
    let result' = (/= 0) result
    iter' <- (wrapBoxed Gtk.TextIter.TextIter) iter
    touchManagedPtr textView
    return (result', iter')

#if defined(ENABLE_OVERLOADING)
data TextViewGetIterAtLocationMethodInfo
instance (signature ~ (Int32 -> Int32 -> m ((Bool, Gtk.TextIter.TextIter))), MonadIO m, IsTextView a) => O.MethodInfo TextViewGetIterAtLocationMethodInfo a signature where
    overloadedMethod = textViewGetIterAtLocation

#endif

-- method TextView::get_iter_at_position
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "iter"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextIter" }
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextIter" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = True
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "trailing"
--           , argType = TBasicType TInt
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "if non-%NULL, location to store an integer indicating where\n   in the grapheme the user clicked. It will either be\n   zero, or the number of characters in the grapheme.\n   0 represents the trailing edge of the grapheme."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "x"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "x position, in buffer coordinates"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "y"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "y position, in buffer coordinates"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_get_iter_at_position" gtk_text_view_get_iter_at_position :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    Ptr Gtk.TextIter.TextIter ->            -- iter : TInterface (Name {namespace = "Gtk", name = "TextIter"})
    Ptr Int32 ->                            -- trailing : TBasicType TInt
    Int32 ->                                -- x : TBasicType TInt
    Int32 ->                                -- y : TBasicType TInt
    IO CInt

-- | Retrieves the iterator pointing to the character at buffer
-- coordinates /@x@/ and /@y@/. Buffer coordinates are coordinates for
-- the entire buffer, not just the currently-displayed portion.
-- If you have coordinates from an event, you have to convert
-- those to buffer coordinates with
-- 'GI.Gtk.Objects.TextView.textViewWindowToBufferCoords'.
-- 
-- Note that this is different from 'GI.Gtk.Objects.TextView.textViewGetIterAtLocation',
-- which returns cursor locations, i.e. positions between
-- characters.
-- 
-- /Since: 2.6/
textViewGetIterAtPosition ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> Int32
    -- ^ /@x@/: x position, in buffer coordinates
    -> Int32
    -- ^ /@y@/: y position, in buffer coordinates
    -> m ((Bool, Gtk.TextIter.TextIter, Int32))
    -- ^ __Returns:__ 'P.True' if the position is over text
textViewGetIterAtPosition textView x y = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    iter <- callocBoxedBytes 80 :: IO (Ptr Gtk.TextIter.TextIter)
    trailing <- allocMem :: IO (Ptr Int32)
    result <- gtk_text_view_get_iter_at_position textView' iter trailing x y
    let result' = (/= 0) result
    iter' <- (wrapBoxed Gtk.TextIter.TextIter) iter
    trailing' <- peek trailing
    touchManagedPtr textView
    freeMem trailing
    return (result', iter', trailing')

#if defined(ENABLE_OVERLOADING)
data TextViewGetIterAtPositionMethodInfo
instance (signature ~ (Int32 -> Int32 -> m ((Bool, Gtk.TextIter.TextIter, Int32))), MonadIO m, IsTextView a) => O.MethodInfo TextViewGetIterAtPositionMethodInfo a signature where
    overloadedMethod = textViewGetIterAtPosition

#endif

-- method TextView::get_iter_location
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "iter"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextIter" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextIter" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "location"
--           , argType =
--               TInterface Name { namespace = "Gdk" , name = "Rectangle" }
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "bounds of the character at @iter"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = True
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_get_iter_location" gtk_text_view_get_iter_location :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    Ptr Gtk.TextIter.TextIter ->            -- iter : TInterface (Name {namespace = "Gtk", name = "TextIter"})
    Ptr Gdk.Rectangle.Rectangle ->          -- location : TInterface (Name {namespace = "Gdk", name = "Rectangle"})
    IO ()

-- | Gets a rectangle which roughly contains the character at /@iter@/.
-- The rectangle position is in buffer coordinates; use
-- 'GI.Gtk.Objects.TextView.textViewBufferToWindowCoords' to convert these
-- coordinates to coordinates for one of the windows in the text view.
textViewGetIterLocation ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> Gtk.TextIter.TextIter
    -- ^ /@iter@/: a t'GI.Gtk.Structs.TextIter.TextIter'
    -> m (Gdk.Rectangle.Rectangle)
textViewGetIterLocation textView iter = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    iter' <- unsafeManagedPtrGetPtr iter
    location <- callocBoxedBytes 16 :: IO (Ptr Gdk.Rectangle.Rectangle)
    gtk_text_view_get_iter_location textView' iter' location
    location' <- (wrapBoxed Gdk.Rectangle.Rectangle) location
    touchManagedPtr textView
    touchManagedPtr iter
    return location'

#if defined(ENABLE_OVERLOADING)
data TextViewGetIterLocationMethodInfo
instance (signature ~ (Gtk.TextIter.TextIter -> m (Gdk.Rectangle.Rectangle)), MonadIO m, IsTextView a) => O.MethodInfo TextViewGetIterLocationMethodInfo a signature where
    overloadedMethod = textViewGetIterLocation

#endif

-- method TextView::get_justification
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Gtk" , name = "Justification" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_get_justification" gtk_text_view_get_justification :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    IO CUInt

-- | Gets the default justification of paragraphs in /@textView@/.
-- Tags in the buffer may override the default.
textViewGetJustification ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> m Gtk.Enums.Justification
    -- ^ __Returns:__ default justification
textViewGetJustification textView = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    result <- gtk_text_view_get_justification textView'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr textView
    return result'

#if defined(ENABLE_OVERLOADING)
data TextViewGetJustificationMethodInfo
instance (signature ~ (m Gtk.Enums.Justification), MonadIO m, IsTextView a) => O.MethodInfo TextViewGetJustificationMethodInfo a signature where
    overloadedMethod = textViewGetJustification

#endif

-- method TextView::get_left_margin
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_get_left_margin" gtk_text_view_get_left_margin :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    IO Int32

-- | Gets the default left margin size of paragraphs in the /@textView@/.
-- Tags in the buffer may override the default.
textViewGetLeftMargin ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> m Int32
    -- ^ __Returns:__ left margin in pixels
textViewGetLeftMargin textView = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    result <- gtk_text_view_get_left_margin textView'
    touchManagedPtr textView
    return result

#if defined(ENABLE_OVERLOADING)
data TextViewGetLeftMarginMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsTextView a) => O.MethodInfo TextViewGetLeftMarginMethodInfo a signature where
    overloadedMethod = textViewGetLeftMargin

#endif

-- method TextView::get_line_at_y
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "target_iter"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextIter" }
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextIter" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = True
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "y"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a y coordinate" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "line_top"
--           , argType = TBasicType TInt
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "return location for top coordinate of the line"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_get_line_at_y" gtk_text_view_get_line_at_y :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    Ptr Gtk.TextIter.TextIter ->            -- target_iter : TInterface (Name {namespace = "Gtk", name = "TextIter"})
    Int32 ->                                -- y : TBasicType TInt
    Ptr Int32 ->                            -- line_top : TBasicType TInt
    IO ()

-- | Gets the t'GI.Gtk.Structs.TextIter.TextIter' at the start of the line containing
-- the coordinate /@y@/. /@y@/ is in buffer coordinates, convert from
-- window coordinates with 'GI.Gtk.Objects.TextView.textViewWindowToBufferCoords'.
-- If non-'P.Nothing', /@lineTop@/ will be filled with the coordinate of the top
-- edge of the line.
textViewGetLineAtY ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> Int32
    -- ^ /@y@/: a y coordinate
    -> m ((Gtk.TextIter.TextIter, Int32))
textViewGetLineAtY textView y = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    targetIter <- callocBoxedBytes 80 :: IO (Ptr Gtk.TextIter.TextIter)
    lineTop <- allocMem :: IO (Ptr Int32)
    gtk_text_view_get_line_at_y textView' targetIter y lineTop
    targetIter' <- (wrapBoxed Gtk.TextIter.TextIter) targetIter
    lineTop' <- peek lineTop
    touchManagedPtr textView
    freeMem lineTop
    return (targetIter', lineTop')

#if defined(ENABLE_OVERLOADING)
data TextViewGetLineAtYMethodInfo
instance (signature ~ (Int32 -> m ((Gtk.TextIter.TextIter, Int32))), MonadIO m, IsTextView a) => O.MethodInfo TextViewGetLineAtYMethodInfo a signature where
    overloadedMethod = textViewGetLineAtY

#endif

-- method TextView::get_line_yrange
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "iter"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextIter" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextIter" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "y"
--           , argType = TBasicType TInt
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "return location for a y coordinate"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "height"
--           , argType = TBasicType TInt
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "return location for a height"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_get_line_yrange" gtk_text_view_get_line_yrange :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    Ptr Gtk.TextIter.TextIter ->            -- iter : TInterface (Name {namespace = "Gtk", name = "TextIter"})
    Ptr Int32 ->                            -- y : TBasicType TInt
    Ptr Int32 ->                            -- height : TBasicType TInt
    IO ()

-- | Gets the y coordinate of the top of the line containing /@iter@/,
-- and the height of the line. The coordinate is a buffer coordinate;
-- convert to window coordinates with 'GI.Gtk.Objects.TextView.textViewBufferToWindowCoords'.
textViewGetLineYrange ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> Gtk.TextIter.TextIter
    -- ^ /@iter@/: a t'GI.Gtk.Structs.TextIter.TextIter'
    -> m ((Int32, Int32))
textViewGetLineYrange textView iter = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    iter' <- unsafeManagedPtrGetPtr iter
    y <- allocMem :: IO (Ptr Int32)
    height <- allocMem :: IO (Ptr Int32)
    gtk_text_view_get_line_yrange textView' iter' y height
    y' <- peek y
    height' <- peek height
    touchManagedPtr textView
    touchManagedPtr iter
    freeMem y
    freeMem height
    return (y', height')

#if defined(ENABLE_OVERLOADING)
data TextViewGetLineYrangeMethodInfo
instance (signature ~ (Gtk.TextIter.TextIter -> m ((Int32, Int32))), MonadIO m, IsTextView a) => O.MethodInfo TextViewGetLineYrangeMethodInfo a signature where
    overloadedMethod = textViewGetLineYrange

#endif

-- method TextView::get_monospace
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_get_monospace" gtk_text_view_get_monospace :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    IO CInt

-- | Gets the value of the t'GI.Gtk.Objects.TextView.TextView':@/monospace/@ property.
-- 
-- /Since: 3.16/
textViewGetMonospace ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if monospace fonts are desired
textViewGetMonospace textView = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    result <- gtk_text_view_get_monospace textView'
    let result' = (/= 0) result
    touchManagedPtr textView
    return result'

#if defined(ENABLE_OVERLOADING)
data TextViewGetMonospaceMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsTextView a) => O.MethodInfo TextViewGetMonospaceMethodInfo a signature where
    overloadedMethod = textViewGetMonospace

#endif

-- method TextView::get_overwrite
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_get_overwrite" gtk_text_view_get_overwrite :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    IO CInt

-- | Returns whether the t'GI.Gtk.Objects.TextView.TextView' is in overwrite mode or not.
-- 
-- /Since: 2.4/
textViewGetOverwrite ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> m Bool
    -- ^ __Returns:__ whether /@textView@/ is in overwrite mode or not.
textViewGetOverwrite textView = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    result <- gtk_text_view_get_overwrite textView'
    let result' = (/= 0) result
    touchManagedPtr textView
    return result'

#if defined(ENABLE_OVERLOADING)
data TextViewGetOverwriteMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsTextView a) => O.MethodInfo TextViewGetOverwriteMethodInfo a signature where
    overloadedMethod = textViewGetOverwrite

#endif

-- method TextView::get_pixels_above_lines
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_get_pixels_above_lines" gtk_text_view_get_pixels_above_lines :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    IO Int32

-- | Gets the default number of pixels to put above paragraphs.
-- Adding this function with 'GI.Gtk.Objects.TextView.textViewGetPixelsBelowLines'
-- is equal to the line space between each paragraph.
textViewGetPixelsAboveLines ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> m Int32
    -- ^ __Returns:__ default number of pixels above paragraphs
textViewGetPixelsAboveLines textView = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    result <- gtk_text_view_get_pixels_above_lines textView'
    touchManagedPtr textView
    return result

#if defined(ENABLE_OVERLOADING)
data TextViewGetPixelsAboveLinesMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsTextView a) => O.MethodInfo TextViewGetPixelsAboveLinesMethodInfo a signature where
    overloadedMethod = textViewGetPixelsAboveLines

#endif

-- method TextView::get_pixels_below_lines
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_get_pixels_below_lines" gtk_text_view_get_pixels_below_lines :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    IO Int32

-- | Gets the value set by 'GI.Gtk.Objects.TextView.textViewSetPixelsBelowLines'.
-- 
-- The line space is the sum of the value returned by this function and the
-- value returned by 'GI.Gtk.Objects.TextView.textViewGetPixelsAboveLines'.
textViewGetPixelsBelowLines ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> m Int32
    -- ^ __Returns:__ default number of blank pixels below paragraphs
textViewGetPixelsBelowLines textView = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    result <- gtk_text_view_get_pixels_below_lines textView'
    touchManagedPtr textView
    return result

#if defined(ENABLE_OVERLOADING)
data TextViewGetPixelsBelowLinesMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsTextView a) => O.MethodInfo TextViewGetPixelsBelowLinesMethodInfo a signature where
    overloadedMethod = textViewGetPixelsBelowLines

#endif

-- method TextView::get_pixels_inside_wrap
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_get_pixels_inside_wrap" gtk_text_view_get_pixels_inside_wrap :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    IO Int32

-- | Gets the value set by 'GI.Gtk.Objects.TextView.textViewSetPixelsInsideWrap'.
textViewGetPixelsInsideWrap ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> m Int32
    -- ^ __Returns:__ default number of pixels of blank space between wrapped lines
textViewGetPixelsInsideWrap textView = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    result <- gtk_text_view_get_pixels_inside_wrap textView'
    touchManagedPtr textView
    return result

#if defined(ENABLE_OVERLOADING)
data TextViewGetPixelsInsideWrapMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsTextView a) => O.MethodInfo TextViewGetPixelsInsideWrapMethodInfo a signature where
    overloadedMethod = textViewGetPixelsInsideWrap

#endif

-- method TextView::get_right_margin
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_get_right_margin" gtk_text_view_get_right_margin :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    IO Int32

-- | Gets the default right margin for text in /@textView@/. Tags
-- in the buffer may override the default.
textViewGetRightMargin ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> m Int32
    -- ^ __Returns:__ right margin in pixels
textViewGetRightMargin textView = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    result <- gtk_text_view_get_right_margin textView'
    touchManagedPtr textView
    return result

#if defined(ENABLE_OVERLOADING)
data TextViewGetRightMarginMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsTextView a) => O.MethodInfo TextViewGetRightMarginMethodInfo a signature where
    overloadedMethod = textViewGetRightMargin

#endif

-- method TextView::get_tabs
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Pango" , name = "TabArray" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_get_tabs" gtk_text_view_get_tabs :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    IO (Ptr Pango.TabArray.TabArray)

-- | Gets the default tabs for /@textView@/. Tags in the buffer may
-- override the defaults. The returned array will be 'P.Nothing' if
-- “standard” (8-space) tabs are used. Free the return value
-- with 'GI.Pango.Structs.TabArray.tabArrayFree'.
textViewGetTabs ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> m (Maybe Pango.TabArray.TabArray)
    -- ^ __Returns:__ copy of default tab array, or 'P.Nothing' if
    --    “standard\" tabs are used; must be freed with 'GI.Pango.Structs.TabArray.tabArrayFree'.
textViewGetTabs textView = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    result <- gtk_text_view_get_tabs textView'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (wrapBoxed Pango.TabArray.TabArray) result'
        return result''
    touchManagedPtr textView
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data TextViewGetTabsMethodInfo
instance (signature ~ (m (Maybe Pango.TabArray.TabArray)), MonadIO m, IsTextView a) => O.MethodInfo TextViewGetTabsMethodInfo a signature where
    overloadedMethod = textViewGetTabs

#endif

-- method TextView::get_top_margin
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_get_top_margin" gtk_text_view_get_top_margin :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    IO Int32

-- | Gets the top margin for text in the /@textView@/.
-- 
-- /Since: 3.18/
textViewGetTopMargin ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> m Int32
    -- ^ __Returns:__ top margin in pixels
textViewGetTopMargin textView = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    result <- gtk_text_view_get_top_margin textView'
    touchManagedPtr textView
    return result

#if defined(ENABLE_OVERLOADING)
data TextViewGetTopMarginMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsTextView a) => O.MethodInfo TextViewGetTopMarginMethodInfo a signature where
    overloadedMethod = textViewGetTopMargin

#endif

-- method TextView::get_vadjustment
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Adjustment" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_get_vadjustment" gtk_text_view_get_vadjustment :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    IO (Ptr Gtk.Adjustment.Adjustment)

{-# DEPRECATED textViewGetVadjustment ["(Since version 3.0)","Use 'GI.Gtk.Interfaces.Scrollable.scrollableGetVadjustment'"] #-}
-- | Gets the vertical-scrolling t'GI.Gtk.Objects.Adjustment.Adjustment'.
-- 
-- /Since: 2.22/
textViewGetVadjustment ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> m Gtk.Adjustment.Adjustment
    -- ^ __Returns:__ pointer to the vertical t'GI.Gtk.Objects.Adjustment.Adjustment'
textViewGetVadjustment textView = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    result <- gtk_text_view_get_vadjustment textView'
    checkUnexpectedReturnNULL "textViewGetVadjustment" result
    result' <- (newObject Gtk.Adjustment.Adjustment) result
    touchManagedPtr textView
    return result'

#if defined(ENABLE_OVERLOADING)
data TextViewGetVadjustmentMethodInfo
instance (signature ~ (m Gtk.Adjustment.Adjustment), MonadIO m, IsTextView a) => O.MethodInfo TextViewGetVadjustmentMethodInfo a signature where
    overloadedMethod = textViewGetVadjustment

#endif

-- method TextView::get_visible_rect
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "visible_rect"
--           , argType =
--               TInterface Name { namespace = "Gdk" , name = "Rectangle" }
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "rectangle to fill" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = True
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_get_visible_rect" gtk_text_view_get_visible_rect :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    Ptr Gdk.Rectangle.Rectangle ->          -- visible_rect : TInterface (Name {namespace = "Gdk", name = "Rectangle"})
    IO ()

-- | Fills /@visibleRect@/ with the currently-visible
-- region of the buffer, in buffer coordinates. Convert to window coordinates
-- with 'GI.Gtk.Objects.TextView.textViewBufferToWindowCoords'.
textViewGetVisibleRect ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> m (Gdk.Rectangle.Rectangle)
textViewGetVisibleRect textView = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    visibleRect <- callocBoxedBytes 16 :: IO (Ptr Gdk.Rectangle.Rectangle)
    gtk_text_view_get_visible_rect textView' visibleRect
    visibleRect' <- (wrapBoxed Gdk.Rectangle.Rectangle) visibleRect
    touchManagedPtr textView
    return visibleRect'

#if defined(ENABLE_OVERLOADING)
data TextViewGetVisibleRectMethodInfo
instance (signature ~ (m (Gdk.Rectangle.Rectangle)), MonadIO m, IsTextView a) => O.MethodInfo TextViewGetVisibleRectMethodInfo a signature where
    overloadedMethod = textViewGetVisibleRect

#endif

-- method TextView::get_window
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "win"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextWindowType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "window to get" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gdk" , name = "Window" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_get_window" gtk_text_view_get_window :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    CUInt ->                                -- win : TInterface (Name {namespace = "Gtk", name = "TextWindowType"})
    IO (Ptr Gdk.Window.Window)

-- | Retrieves the t'GI.Gdk.Objects.Window.Window' corresponding to an area of the text view;
-- possible windows include the overall widget window, child windows
-- on the left, right, top, bottom, and the window that displays the
-- text buffer. Windows are 'P.Nothing' and nonexistent if their width or
-- height is 0, and are nonexistent before the widget has been
-- realized.
textViewGetWindow ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> Gtk.Enums.TextWindowType
    -- ^ /@win@/: window to get
    -> m (Maybe Gdk.Window.Window)
    -- ^ __Returns:__ a t'GI.Gdk.Objects.Window.Window', or 'P.Nothing'
textViewGetWindow textView win = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    let win' = (fromIntegral . fromEnum) win
    result <- gtk_text_view_get_window textView' win'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gdk.Window.Window) result'
        return result''
    touchManagedPtr textView
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data TextViewGetWindowMethodInfo
instance (signature ~ (Gtk.Enums.TextWindowType -> m (Maybe Gdk.Window.Window)), MonadIO m, IsTextView a) => O.MethodInfo TextViewGetWindowMethodInfo a signature where
    overloadedMethod = textViewGetWindow

#endif

-- method TextView::get_window_type
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "window"
--           , argType = TInterface Name { namespace = "Gdk" , name = "Window" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a window type" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Gtk" , name = "TextWindowType" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_get_window_type" gtk_text_view_get_window_type :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    Ptr Gdk.Window.Window ->                -- window : TInterface (Name {namespace = "Gdk", name = "Window"})
    IO CUInt

-- | Usually used to find out which window an event corresponds to.
-- 
-- If you connect to an event signal on /@textView@/, this function
-- should be called on @event->window@ to see which window it was.
textViewGetWindowType ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a, Gdk.Window.IsWindow b) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> b
    -- ^ /@window@/: a window type
    -> m Gtk.Enums.TextWindowType
    -- ^ __Returns:__ the window type.
textViewGetWindowType textView window = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    window' <- unsafeManagedPtrCastPtr window
    result <- gtk_text_view_get_window_type textView' window'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr textView
    touchManagedPtr window
    return result'

#if defined(ENABLE_OVERLOADING)
data TextViewGetWindowTypeMethodInfo
instance (signature ~ (b -> m Gtk.Enums.TextWindowType), MonadIO m, IsTextView a, Gdk.Window.IsWindow b) => O.MethodInfo TextViewGetWindowTypeMethodInfo a signature where
    overloadedMethod = textViewGetWindowType

#endif

-- method TextView::get_wrap_mode
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "WrapMode" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_get_wrap_mode" gtk_text_view_get_wrap_mode :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    IO CUInt

-- | Gets the line wrapping for the view.
textViewGetWrapMode ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> m Gtk.Enums.WrapMode
    -- ^ __Returns:__ the line wrap setting
textViewGetWrapMode textView = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    result <- gtk_text_view_get_wrap_mode textView'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr textView
    return result'

#if defined(ENABLE_OVERLOADING)
data TextViewGetWrapModeMethodInfo
instance (signature ~ (m Gtk.Enums.WrapMode), MonadIO m, IsTextView a) => O.MethodInfo TextViewGetWrapModeMethodInfo a signature where
    overloadedMethod = textViewGetWrapMode

#endif

-- method TextView::im_context_filter_keypress
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "event"
--           , argType =
--               TInterface Name { namespace = "Gdk" , name = "EventKey" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the key event" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_im_context_filter_keypress" gtk_text_view_im_context_filter_keypress :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    Ptr Gdk.EventKey.EventKey ->            -- event : TInterface (Name {namespace = "Gdk", name = "EventKey"})
    IO CInt

-- | Allow the t'GI.Gtk.Objects.TextView.TextView' input method to internally handle key press
-- and release events. If this function returns 'P.True', then no further
-- processing should be done for this key event. See
-- 'GI.Gtk.Objects.IMContext.iMContextFilterKeypress'.
-- 
-- Note that you are expected to call this function from your handler
-- when overriding key event handling. This is needed in the case when
-- you need to insert your own key handling between the input method
-- and the default key event handling of the t'GI.Gtk.Objects.TextView.TextView'.
-- 
-- 
-- === /C code/
-- >
-- >static gboolean
-- >gtk_foo_bar_key_press_event (GtkWidget   *widget,
-- >                             GdkEventKey *event)
-- >{
-- >  guint keyval;
-- >
-- >  gdk_event_get_keyval ((GdkEvent*)event, &keyval);
-- >
-- >  if (keyval == GDK_KEY_Return || keyval == GDK_KEY_KP_Enter)
-- >    {
-- >      if (gtk_text_view_im_context_filter_keypress (GTK_TEXT_VIEW (widget), event))
-- >        return TRUE;
-- >    }
-- >
-- >  // Do some stuff
-- >
-- >  return GTK_WIDGET_CLASS (gtk_foo_bar_parent_class)->key_press_event (widget, event);
-- >}
-- 
-- 
-- /Since: 2.22/
textViewImContextFilterKeypress ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> Gdk.EventKey.EventKey
    -- ^ /@event@/: the key event
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the input method handled the key event.
textViewImContextFilterKeypress textView event = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    event' <- unsafeManagedPtrGetPtr event
    result <- gtk_text_view_im_context_filter_keypress textView' event'
    let result' = (/= 0) result
    touchManagedPtr textView
    touchManagedPtr event
    return result'

#if defined(ENABLE_OVERLOADING)
data TextViewImContextFilterKeypressMethodInfo
instance (signature ~ (Gdk.EventKey.EventKey -> m Bool), MonadIO m, IsTextView a) => O.MethodInfo TextViewImContextFilterKeypressMethodInfo a signature where
    overloadedMethod = textViewImContextFilterKeypress

#endif

-- method TextView::move_child
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "child"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "child widget already added to the text view"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "xpos"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "new X position in window coordinates"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "ypos"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "new Y position in window coordinates"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_move_child" gtk_text_view_move_child :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    Int32 ->                                -- xpos : TBasicType TInt
    Int32 ->                                -- ypos : TBasicType TInt
    IO ()

-- | Updates the position of a child, as for 'GI.Gtk.Objects.TextView.textViewAddChildInWindow'.
textViewMoveChild ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> b
    -- ^ /@child@/: child widget already added to the text view
    -> Int32
    -- ^ /@xpos@/: new X position in window coordinates
    -> Int32
    -- ^ /@ypos@/: new Y position in window coordinates
    -> m ()
textViewMoveChild textView child xpos ypos = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    child' <- unsafeManagedPtrCastPtr child
    gtk_text_view_move_child textView' child' xpos ypos
    touchManagedPtr textView
    touchManagedPtr child
    return ()

#if defined(ENABLE_OVERLOADING)
data TextViewMoveChildMethodInfo
instance (signature ~ (b -> Int32 -> Int32 -> m ()), MonadIO m, IsTextView a, Gtk.Widget.IsWidget b) => O.MethodInfo TextViewMoveChildMethodInfo a signature where
    overloadedMethod = textViewMoveChild

#endif

-- method TextView::move_mark_onscreen
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "mark"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextMark" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextMark" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_move_mark_onscreen" gtk_text_view_move_mark_onscreen :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    Ptr Gtk.TextMark.TextMark ->            -- mark : TInterface (Name {namespace = "Gtk", name = "TextMark"})
    IO CInt

-- | Moves a mark within the buffer so that it\'s
-- located within the currently-visible text area.
textViewMoveMarkOnscreen ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a, Gtk.TextMark.IsTextMark b) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> b
    -- ^ /@mark@/: a t'GI.Gtk.Objects.TextMark.TextMark'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the mark moved (wasn’t already onscreen)
textViewMoveMarkOnscreen textView mark = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    mark' <- unsafeManagedPtrCastPtr mark
    result <- gtk_text_view_move_mark_onscreen textView' mark'
    let result' = (/= 0) result
    touchManagedPtr textView
    touchManagedPtr mark
    return result'

#if defined(ENABLE_OVERLOADING)
data TextViewMoveMarkOnscreenMethodInfo
instance (signature ~ (b -> m Bool), MonadIO m, IsTextView a, Gtk.TextMark.IsTextMark b) => O.MethodInfo TextViewMoveMarkOnscreenMethodInfo a signature where
    overloadedMethod = textViewMoveMarkOnscreen

#endif

-- method TextView::move_visually
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "iter"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextIter" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextIter" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "count"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "number of characters to move (negative moves left,\n   positive moves right)"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_move_visually" gtk_text_view_move_visually :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    Ptr Gtk.TextIter.TextIter ->            -- iter : TInterface (Name {namespace = "Gtk", name = "TextIter"})
    Int32 ->                                -- count : TBasicType TInt
    IO CInt

-- | Move the iterator a given number of characters visually, treating
-- it as the strong cursor position. If /@count@/ is positive, then the
-- new strong cursor position will be /@count@/ positions to the right of
-- the old cursor position. If /@count@/ is negative then the new strong
-- cursor position will be /@count@/ positions to the left of the old
-- cursor position.
-- 
-- In the presence of bi-directional text, the correspondence
-- between logical and visual order will depend on the direction
-- of the current run, and there may be jumps when the cursor
-- is moved off of the end of a run.
textViewMoveVisually ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> Gtk.TextIter.TextIter
    -- ^ /@iter@/: a t'GI.Gtk.Structs.TextIter.TextIter'
    -> Int32
    -- ^ /@count@/: number of characters to move (negative moves left,
    --    positive moves right)
    -> m Bool
    -- ^ __Returns:__ 'P.True' if /@iter@/ moved and is not on the end iterator
textViewMoveVisually textView iter count = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    iter' <- unsafeManagedPtrGetPtr iter
    result <- gtk_text_view_move_visually textView' iter' count
    let result' = (/= 0) result
    touchManagedPtr textView
    touchManagedPtr iter
    return result'

#if defined(ENABLE_OVERLOADING)
data TextViewMoveVisuallyMethodInfo
instance (signature ~ (Gtk.TextIter.TextIter -> Int32 -> m Bool), MonadIO m, IsTextView a) => O.MethodInfo TextViewMoveVisuallyMethodInfo a signature where
    overloadedMethod = textViewMoveVisually

#endif

-- method TextView::place_cursor_onscreen
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_place_cursor_onscreen" gtk_text_view_place_cursor_onscreen :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    IO CInt

-- | Moves the cursor to the currently visible region of the
-- buffer, it it isn’t there already.
textViewPlaceCursorOnscreen ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the cursor had to be moved.
textViewPlaceCursorOnscreen textView = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    result <- gtk_text_view_place_cursor_onscreen textView'
    let result' = (/= 0) result
    touchManagedPtr textView
    return result'

#if defined(ENABLE_OVERLOADING)
data TextViewPlaceCursorOnscreenMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsTextView a) => O.MethodInfo TextViewPlaceCursorOnscreenMethodInfo a signature where
    overloadedMethod = textViewPlaceCursorOnscreen

#endif

-- method TextView::reset_cursor_blink
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_reset_cursor_blink" gtk_text_view_reset_cursor_blink :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    IO ()

-- | Ensures that the cursor is shown (i.e. not in an \'off\' blink
-- interval) and resets the time that it will stay blinking (or
-- visible, in case blinking is disabled).
-- 
-- This function should be called in response to user input
-- (e.g. from derived classes that override the textview\'s
-- [keyPressEvent]("GI.Gtk.Objects.Widget#signal:keyPressEvent") handler).
-- 
-- /Since: 3.20/
textViewResetCursorBlink ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> m ()
textViewResetCursorBlink textView = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    gtk_text_view_reset_cursor_blink textView'
    touchManagedPtr textView
    return ()

#if defined(ENABLE_OVERLOADING)
data TextViewResetCursorBlinkMethodInfo
instance (signature ~ (m ()), MonadIO m, IsTextView a) => O.MethodInfo TextViewResetCursorBlinkMethodInfo a signature where
    overloadedMethod = textViewResetCursorBlink

#endif

-- method TextView::reset_im_context
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_reset_im_context" gtk_text_view_reset_im_context :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    IO ()

-- | Reset the input method context of the text view if needed.
-- 
-- This can be necessary in the case where modifying the buffer
-- would confuse on-going input method behavior.
-- 
-- /Since: 2.22/
textViewResetImContext ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> m ()
textViewResetImContext textView = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    gtk_text_view_reset_im_context textView'
    touchManagedPtr textView
    return ()

#if defined(ENABLE_OVERLOADING)
data TextViewResetImContextMethodInfo
instance (signature ~ (m ()), MonadIO m, IsTextView a) => O.MethodInfo TextViewResetImContextMethodInfo a signature where
    overloadedMethod = textViewResetImContext

#endif

-- method TextView::scroll_mark_onscreen
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "mark"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextMark" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a mark in the buffer for @text_view"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_scroll_mark_onscreen" gtk_text_view_scroll_mark_onscreen :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    Ptr Gtk.TextMark.TextMark ->            -- mark : TInterface (Name {namespace = "Gtk", name = "TextMark"})
    IO ()

-- | Scrolls /@textView@/ the minimum distance such that /@mark@/ is contained
-- within the visible area of the widget.
textViewScrollMarkOnscreen ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a, Gtk.TextMark.IsTextMark b) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> b
    -- ^ /@mark@/: a mark in the buffer for /@textView@/
    -> m ()
textViewScrollMarkOnscreen textView mark = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    mark' <- unsafeManagedPtrCastPtr mark
    gtk_text_view_scroll_mark_onscreen textView' mark'
    touchManagedPtr textView
    touchManagedPtr mark
    return ()

#if defined(ENABLE_OVERLOADING)
data TextViewScrollMarkOnscreenMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsTextView a, Gtk.TextMark.IsTextMark b) => O.MethodInfo TextViewScrollMarkOnscreenMethodInfo a signature where
    overloadedMethod = textViewScrollMarkOnscreen

#endif

-- method TextView::scroll_to_iter
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "iter"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextIter" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextIter" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "within_margin"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "margin as a [0.0,0.5) fraction of screen size"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "use_align"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "whether to use alignment arguments (if %FALSE,\n   just get the mark onscreen)"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "xalign"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "horizontal alignment of mark within visible area"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "yalign"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "vertical alignment of mark within visible area"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_scroll_to_iter" gtk_text_view_scroll_to_iter :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    Ptr Gtk.TextIter.TextIter ->            -- iter : TInterface (Name {namespace = "Gtk", name = "TextIter"})
    CDouble ->                              -- within_margin : TBasicType TDouble
    CInt ->                                 -- use_align : TBasicType TBoolean
    CDouble ->                              -- xalign : TBasicType TDouble
    CDouble ->                              -- yalign : TBasicType TDouble
    IO CInt

-- | Scrolls /@textView@/ so that /@iter@/ is on the screen in the position
-- indicated by /@xalign@/ and /@yalign@/. An alignment of 0.0 indicates
-- left or top, 1.0 indicates right or bottom, 0.5 means center.
-- If /@useAlign@/ is 'P.False', the text scrolls the minimal distance to
-- get the mark onscreen, possibly not scrolling at all. The effective
-- screen for purposes of this function is reduced by a margin of size
-- /@withinMargin@/.
-- 
-- Note that this function uses the currently-computed height of the
-- lines in the text buffer. Line heights are computed in an idle
-- handler; so this function may not have the desired effect if it’s
-- called before the height computations. To avoid oddness, consider
-- using 'GI.Gtk.Objects.TextView.textViewScrollToMark' which saves a point to be
-- scrolled to after line validation.
textViewScrollToIter ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> Gtk.TextIter.TextIter
    -- ^ /@iter@/: a t'GI.Gtk.Structs.TextIter.TextIter'
    -> Double
    -- ^ /@withinMargin@/: margin as a [0.0,0.5) fraction of screen size
    -> Bool
    -- ^ /@useAlign@/: whether to use alignment arguments (if 'P.False',
    --    just get the mark onscreen)
    -> Double
    -- ^ /@xalign@/: horizontal alignment of mark within visible area
    -> Double
    -- ^ /@yalign@/: vertical alignment of mark within visible area
    -> m Bool
    -- ^ __Returns:__ 'P.True' if scrolling occurred
textViewScrollToIter textView iter withinMargin useAlign xalign yalign = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    iter' <- unsafeManagedPtrGetPtr iter
    let withinMargin' = realToFrac withinMargin
    let useAlign' = (fromIntegral . fromEnum) useAlign
    let xalign' = realToFrac xalign
    let yalign' = realToFrac yalign
    result <- gtk_text_view_scroll_to_iter textView' iter' withinMargin' useAlign' xalign' yalign'
    let result' = (/= 0) result
    touchManagedPtr textView
    touchManagedPtr iter
    return result'

#if defined(ENABLE_OVERLOADING)
data TextViewScrollToIterMethodInfo
instance (signature ~ (Gtk.TextIter.TextIter -> Double -> Bool -> Double -> Double -> m Bool), MonadIO m, IsTextView a) => O.MethodInfo TextViewScrollToIterMethodInfo a signature where
    overloadedMethod = textViewScrollToIter

#endif

-- method TextView::scroll_to_mark
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "mark"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextMark" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextMark" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "within_margin"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "margin as a [0.0,0.5) fraction of screen size"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "use_align"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "whether to use alignment arguments (if %FALSE, just\n   get the mark onscreen)"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "xalign"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "horizontal alignment of mark within visible area"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "yalign"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "vertical alignment of mark within visible area"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_scroll_to_mark" gtk_text_view_scroll_to_mark :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    Ptr Gtk.TextMark.TextMark ->            -- mark : TInterface (Name {namespace = "Gtk", name = "TextMark"})
    CDouble ->                              -- within_margin : TBasicType TDouble
    CInt ->                                 -- use_align : TBasicType TBoolean
    CDouble ->                              -- xalign : TBasicType TDouble
    CDouble ->                              -- yalign : TBasicType TDouble
    IO ()

-- | Scrolls /@textView@/ so that /@mark@/ is on the screen in the position
-- indicated by /@xalign@/ and /@yalign@/. An alignment of 0.0 indicates
-- left or top, 1.0 indicates right or bottom, 0.5 means center.
-- If /@useAlign@/ is 'P.False', the text scrolls the minimal distance to
-- get the mark onscreen, possibly not scrolling at all. The effective
-- screen for purposes of this function is reduced by a margin of size
-- /@withinMargin@/.
textViewScrollToMark ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a, Gtk.TextMark.IsTextMark b) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> b
    -- ^ /@mark@/: a t'GI.Gtk.Objects.TextMark.TextMark'
    -> Double
    -- ^ /@withinMargin@/: margin as a [0.0,0.5) fraction of screen size
    -> Bool
    -- ^ /@useAlign@/: whether to use alignment arguments (if 'P.False', just
    --    get the mark onscreen)
    -> Double
    -- ^ /@xalign@/: horizontal alignment of mark within visible area
    -> Double
    -- ^ /@yalign@/: vertical alignment of mark within visible area
    -> m ()
textViewScrollToMark textView mark withinMargin useAlign xalign yalign = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    mark' <- unsafeManagedPtrCastPtr mark
    let withinMargin' = realToFrac withinMargin
    let useAlign' = (fromIntegral . fromEnum) useAlign
    let xalign' = realToFrac xalign
    let yalign' = realToFrac yalign
    gtk_text_view_scroll_to_mark textView' mark' withinMargin' useAlign' xalign' yalign'
    touchManagedPtr textView
    touchManagedPtr mark
    return ()

#if defined(ENABLE_OVERLOADING)
data TextViewScrollToMarkMethodInfo
instance (signature ~ (b -> Double -> Bool -> Double -> Double -> m ()), MonadIO m, IsTextView a, Gtk.TextMark.IsTextMark b) => O.MethodInfo TextViewScrollToMarkMethodInfo a signature where
    overloadedMethod = textViewScrollToMark

#endif

-- method TextView::set_accepts_tab
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "accepts_tab"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "%TRUE if pressing the Tab key should insert a tab\n   character, %FALSE, if pressing the Tab key should move the\n   keyboard focus."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_set_accepts_tab" gtk_text_view_set_accepts_tab :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    CInt ->                                 -- accepts_tab : TBasicType TBoolean
    IO ()

-- | Sets the behavior of the text widget when the Tab key is pressed.
-- If /@acceptsTab@/ is 'P.True', a tab character is inserted. If /@acceptsTab@/
-- is 'P.False' the keyboard focus is moved to the next widget in the focus
-- chain.
-- 
-- /Since: 2.4/
textViewSetAcceptsTab ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: A t'GI.Gtk.Objects.TextView.TextView'
    -> Bool
    -- ^ /@acceptsTab@/: 'P.True' if pressing the Tab key should insert a tab
    --    character, 'P.False', if pressing the Tab key should move the
    --    keyboard focus.
    -> m ()
textViewSetAcceptsTab textView acceptsTab = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    let acceptsTab' = (fromIntegral . fromEnum) acceptsTab
    gtk_text_view_set_accepts_tab textView' acceptsTab'
    touchManagedPtr textView
    return ()

#if defined(ENABLE_OVERLOADING)
data TextViewSetAcceptsTabMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsTextView a) => O.MethodInfo TextViewSetAcceptsTabMethodInfo a signature where
    overloadedMethod = textViewSetAcceptsTab

#endif

-- method TextView::set_border_window_size
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "type"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextWindowType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "window to affect" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "size"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "width or height of the window"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_set_border_window_size" gtk_text_view_set_border_window_size :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    CUInt ->                                -- type : TInterface (Name {namespace = "Gtk", name = "TextWindowType"})
    Int32 ->                                -- size : TBasicType TInt
    IO ()

-- | Sets the width of 'GI.Gtk.Enums.TextWindowTypeLeft' or 'GI.Gtk.Enums.TextWindowTypeRight',
-- or the height of 'GI.Gtk.Enums.TextWindowTypeTop' or 'GI.Gtk.Enums.TextWindowTypeBottom'.
-- Automatically destroys the corresponding window if the size is set
-- to 0, and creates the window if the size is set to non-zero.  This
-- function can only be used for the “border windows”, and it won’t
-- work with 'GI.Gtk.Enums.TextWindowTypeWidget', 'GI.Gtk.Enums.TextWindowTypeText', or
-- 'GI.Gtk.Enums.TextWindowTypePrivate'.
textViewSetBorderWindowSize ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> Gtk.Enums.TextWindowType
    -- ^ /@type@/: window to affect
    -> Int32
    -- ^ /@size@/: width or height of the window
    -> m ()
textViewSetBorderWindowSize textView type_ size = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    let type_' = (fromIntegral . fromEnum) type_
    gtk_text_view_set_border_window_size textView' type_' size
    touchManagedPtr textView
    return ()

#if defined(ENABLE_OVERLOADING)
data TextViewSetBorderWindowSizeMethodInfo
instance (signature ~ (Gtk.Enums.TextWindowType -> Int32 -> m ()), MonadIO m, IsTextView a) => O.MethodInfo TextViewSetBorderWindowSizeMethodInfo a signature where
    overloadedMethod = textViewSetBorderWindowSize

#endif

-- method TextView::set_bottom_margin
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "bottom_margin"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "bottom margin in pixels"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_set_bottom_margin" gtk_text_view_set_bottom_margin :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    Int32 ->                                -- bottom_margin : TBasicType TInt
    IO ()

-- | Sets the bottom margin for text in /@textView@/.
-- 
-- Note that this function is confusingly named.
-- In CSS terms, the value set here is padding.
-- 
-- /Since: 3.18/
textViewSetBottomMargin ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> Int32
    -- ^ /@bottomMargin@/: bottom margin in pixels
    -> m ()
textViewSetBottomMargin textView bottomMargin = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    gtk_text_view_set_bottom_margin textView' bottomMargin
    touchManagedPtr textView
    return ()

#if defined(ENABLE_OVERLOADING)
data TextViewSetBottomMarginMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsTextView a) => O.MethodInfo TextViewSetBottomMarginMethodInfo a signature where
    overloadedMethod = textViewSetBottomMargin

#endif

-- method TextView::set_buffer
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "buffer"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextBuffer" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextBuffer" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_set_buffer" gtk_text_view_set_buffer :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    Ptr Gtk.TextBuffer.TextBuffer ->        -- buffer : TInterface (Name {namespace = "Gtk", name = "TextBuffer"})
    IO ()

-- | Sets /@buffer@/ as the buffer being displayed by /@textView@/. The previous
-- buffer displayed by the text view is unreferenced, and a reference is
-- added to /@buffer@/. If you owned a reference to /@buffer@/ before passing it
-- to this function, you must remove that reference yourself; t'GI.Gtk.Objects.TextView.TextView'
-- will not “adopt” it.
textViewSetBuffer ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a, Gtk.TextBuffer.IsTextBuffer b) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> Maybe (b)
    -- ^ /@buffer@/: a t'GI.Gtk.Objects.TextBuffer.TextBuffer'
    -> m ()
textViewSetBuffer textView buffer = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    maybeBuffer <- case buffer of
        Nothing -> return nullPtr
        Just jBuffer -> do
            jBuffer' <- unsafeManagedPtrCastPtr jBuffer
            return jBuffer'
    gtk_text_view_set_buffer textView' maybeBuffer
    touchManagedPtr textView
    whenJust buffer touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data TextViewSetBufferMethodInfo
instance (signature ~ (Maybe (b) -> m ()), MonadIO m, IsTextView a, Gtk.TextBuffer.IsTextBuffer b) => O.MethodInfo TextViewSetBufferMethodInfo a signature where
    overloadedMethod = textViewSetBuffer

#endif

-- method TextView::set_cursor_visible
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "setting"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "whether to show the insertion cursor"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_set_cursor_visible" gtk_text_view_set_cursor_visible :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    CInt ->                                 -- setting : TBasicType TBoolean
    IO ()

-- | Toggles whether the insertion point should be displayed. A buffer with
-- no editable text probably shouldn’t have a visible cursor, so you may
-- want to turn the cursor off.
-- 
-- Note that this property may be overridden by the
-- t'GI.Gtk.Objects.Settings.Settings':@/gtk-keynave-use-caret/@ settings.
textViewSetCursorVisible ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> Bool
    -- ^ /@setting@/: whether to show the insertion cursor
    -> m ()
textViewSetCursorVisible textView setting = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    let setting' = (fromIntegral . fromEnum) setting
    gtk_text_view_set_cursor_visible textView' setting'
    touchManagedPtr textView
    return ()

#if defined(ENABLE_OVERLOADING)
data TextViewSetCursorVisibleMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsTextView a) => O.MethodInfo TextViewSetCursorVisibleMethodInfo a signature where
    overloadedMethod = textViewSetCursorVisible

#endif

-- method TextView::set_editable
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "setting"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "whether it\8217s editable"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_set_editable" gtk_text_view_set_editable :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    CInt ->                                 -- setting : TBasicType TBoolean
    IO ()

-- | Sets the default editability of the t'GI.Gtk.Objects.TextView.TextView'. You can override
-- this default setting with tags in the buffer, using the “editable”
-- attribute of tags.
textViewSetEditable ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> Bool
    -- ^ /@setting@/: whether it’s editable
    -> m ()
textViewSetEditable textView setting = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    let setting' = (fromIntegral . fromEnum) setting
    gtk_text_view_set_editable textView' setting'
    touchManagedPtr textView
    return ()

#if defined(ENABLE_OVERLOADING)
data TextViewSetEditableMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsTextView a) => O.MethodInfo TextViewSetEditableMethodInfo a signature where
    overloadedMethod = textViewSetEditable

#endif

-- method TextView::set_indent
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "indent"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "indentation in pixels"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_set_indent" gtk_text_view_set_indent :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    Int32 ->                                -- indent : TBasicType TInt
    IO ()

-- | Sets the default indentation for paragraphs in /@textView@/.
-- Tags in the buffer may override the default.
textViewSetIndent ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> Int32
    -- ^ /@indent@/: indentation in pixels
    -> m ()
textViewSetIndent textView indent = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    gtk_text_view_set_indent textView' indent
    touchManagedPtr textView
    return ()

#if defined(ENABLE_OVERLOADING)
data TextViewSetIndentMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsTextView a) => O.MethodInfo TextViewSetIndentMethodInfo a signature where
    overloadedMethod = textViewSetIndent

#endif

-- method TextView::set_input_hints
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "hints"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "InputHints" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the hints" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_set_input_hints" gtk_text_view_set_input_hints :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    CUInt ->                                -- hints : TInterface (Name {namespace = "Gtk", name = "InputHints"})
    IO ()

-- | Sets the t'GI.Gtk.Objects.TextView.TextView':@/input-hints/@ property, which
-- allows input methods to fine-tune their behaviour.
-- 
-- /Since: 3.6/
textViewSetInputHints ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> [Gtk.Flags.InputHints]
    -- ^ /@hints@/: the hints
    -> m ()
textViewSetInputHints textView hints = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    let hints' = gflagsToWord hints
    gtk_text_view_set_input_hints textView' hints'
    touchManagedPtr textView
    return ()

#if defined(ENABLE_OVERLOADING)
data TextViewSetInputHintsMethodInfo
instance (signature ~ ([Gtk.Flags.InputHints] -> m ()), MonadIO m, IsTextView a) => O.MethodInfo TextViewSetInputHintsMethodInfo a signature where
    overloadedMethod = textViewSetInputHints

#endif

-- method TextView::set_input_purpose
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "purpose"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "InputPurpose" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the purpose" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_set_input_purpose" gtk_text_view_set_input_purpose :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    CUInt ->                                -- purpose : TInterface (Name {namespace = "Gtk", name = "InputPurpose"})
    IO ()

-- | Sets the t'GI.Gtk.Objects.TextView.TextView':@/input-purpose/@ property which
-- can be used by on-screen keyboards and other input
-- methods to adjust their behaviour.
-- 
-- /Since: 3.6/
textViewSetInputPurpose ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> Gtk.Enums.InputPurpose
    -- ^ /@purpose@/: the purpose
    -> m ()
textViewSetInputPurpose textView purpose = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    let purpose' = (fromIntegral . fromEnum) purpose
    gtk_text_view_set_input_purpose textView' purpose'
    touchManagedPtr textView
    return ()

#if defined(ENABLE_OVERLOADING)
data TextViewSetInputPurposeMethodInfo
instance (signature ~ (Gtk.Enums.InputPurpose -> m ()), MonadIO m, IsTextView a) => O.MethodInfo TextViewSetInputPurposeMethodInfo a signature where
    overloadedMethod = textViewSetInputPurpose

#endif

-- method TextView::set_justification
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "justification"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Justification" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "justification" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_set_justification" gtk_text_view_set_justification :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    CUInt ->                                -- justification : TInterface (Name {namespace = "Gtk", name = "Justification"})
    IO ()

-- | Sets the default justification of text in /@textView@/.
-- Tags in the view’s buffer may override the default.
textViewSetJustification ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> Gtk.Enums.Justification
    -- ^ /@justification@/: justification
    -> m ()
textViewSetJustification textView justification = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    let justification' = (fromIntegral . fromEnum) justification
    gtk_text_view_set_justification textView' justification'
    touchManagedPtr textView
    return ()

#if defined(ENABLE_OVERLOADING)
data TextViewSetJustificationMethodInfo
instance (signature ~ (Gtk.Enums.Justification -> m ()), MonadIO m, IsTextView a) => O.MethodInfo TextViewSetJustificationMethodInfo a signature where
    overloadedMethod = textViewSetJustification

#endif

-- method TextView::set_left_margin
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "left_margin"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "left margin in pixels"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_set_left_margin" gtk_text_view_set_left_margin :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    Int32 ->                                -- left_margin : TBasicType TInt
    IO ()

-- | Sets the default left margin for text in /@textView@/.
-- Tags in the buffer may override the default.
-- 
-- Note that this function is confusingly named.
-- In CSS terms, the value set here is padding.
textViewSetLeftMargin ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> Int32
    -- ^ /@leftMargin@/: left margin in pixels
    -> m ()
textViewSetLeftMargin textView leftMargin = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    gtk_text_view_set_left_margin textView' leftMargin
    touchManagedPtr textView
    return ()

#if defined(ENABLE_OVERLOADING)
data TextViewSetLeftMarginMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsTextView a) => O.MethodInfo TextViewSetLeftMarginMethodInfo a signature where
    overloadedMethod = textViewSetLeftMargin

#endif

-- method TextView::set_monospace
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "monospace"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "%TRUE to request monospace styling"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_set_monospace" gtk_text_view_set_monospace :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    CInt ->                                 -- monospace : TBasicType TBoolean
    IO ()

-- | Sets the t'GI.Gtk.Objects.TextView.TextView':@/monospace/@ property, which
-- indicates that the text view should use monospace
-- fonts.
-- 
-- /Since: 3.16/
textViewSetMonospace ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> Bool
    -- ^ /@monospace@/: 'P.True' to request monospace styling
    -> m ()
textViewSetMonospace textView monospace = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    let monospace' = (fromIntegral . fromEnum) monospace
    gtk_text_view_set_monospace textView' monospace'
    touchManagedPtr textView
    return ()

#if defined(ENABLE_OVERLOADING)
data TextViewSetMonospaceMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsTextView a) => O.MethodInfo TextViewSetMonospaceMethodInfo a signature where
    overloadedMethod = textViewSetMonospace

#endif

-- method TextView::set_overwrite
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "overwrite"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "%TRUE to turn on overwrite mode, %FALSE to turn it off"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_set_overwrite" gtk_text_view_set_overwrite :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    CInt ->                                 -- overwrite : TBasicType TBoolean
    IO ()

-- | Changes the t'GI.Gtk.Objects.TextView.TextView' overwrite mode.
-- 
-- /Since: 2.4/
textViewSetOverwrite ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> Bool
    -- ^ /@overwrite@/: 'P.True' to turn on overwrite mode, 'P.False' to turn it off
    -> m ()
textViewSetOverwrite textView overwrite = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    let overwrite' = (fromIntegral . fromEnum) overwrite
    gtk_text_view_set_overwrite textView' overwrite'
    touchManagedPtr textView
    return ()

#if defined(ENABLE_OVERLOADING)
data TextViewSetOverwriteMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsTextView a) => O.MethodInfo TextViewSetOverwriteMethodInfo a signature where
    overloadedMethod = textViewSetOverwrite

#endif

-- method TextView::set_pixels_above_lines
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "pixels_above_lines"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "pixels above paragraphs"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_set_pixels_above_lines" gtk_text_view_set_pixels_above_lines :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    Int32 ->                                -- pixels_above_lines : TBasicType TInt
    IO ()

-- | Sets the default number of blank pixels above paragraphs in /@textView@/.
-- Tags in the buffer for /@textView@/ may override the defaults.
textViewSetPixelsAboveLines ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> Int32
    -- ^ /@pixelsAboveLines@/: pixels above paragraphs
    -> m ()
textViewSetPixelsAboveLines textView pixelsAboveLines = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    gtk_text_view_set_pixels_above_lines textView' pixelsAboveLines
    touchManagedPtr textView
    return ()

#if defined(ENABLE_OVERLOADING)
data TextViewSetPixelsAboveLinesMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsTextView a) => O.MethodInfo TextViewSetPixelsAboveLinesMethodInfo a signature where
    overloadedMethod = textViewSetPixelsAboveLines

#endif

-- method TextView::set_pixels_below_lines
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "pixels_below_lines"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "pixels below paragraphs"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_set_pixels_below_lines" gtk_text_view_set_pixels_below_lines :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    Int32 ->                                -- pixels_below_lines : TBasicType TInt
    IO ()

-- | Sets the default number of pixels of blank space
-- to put below paragraphs in /@textView@/. May be overridden
-- by tags applied to /@textView@/’s buffer.
textViewSetPixelsBelowLines ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> Int32
    -- ^ /@pixelsBelowLines@/: pixels below paragraphs
    -> m ()
textViewSetPixelsBelowLines textView pixelsBelowLines = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    gtk_text_view_set_pixels_below_lines textView' pixelsBelowLines
    touchManagedPtr textView
    return ()

#if defined(ENABLE_OVERLOADING)
data TextViewSetPixelsBelowLinesMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsTextView a) => O.MethodInfo TextViewSetPixelsBelowLinesMethodInfo a signature where
    overloadedMethod = textViewSetPixelsBelowLines

#endif

-- method TextView::set_pixels_inside_wrap
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "pixels_inside_wrap"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "default number of pixels between wrapped lines"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_set_pixels_inside_wrap" gtk_text_view_set_pixels_inside_wrap :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    Int32 ->                                -- pixels_inside_wrap : TBasicType TInt
    IO ()

-- | Sets the default number of pixels of blank space to leave between
-- display\/wrapped lines within a paragraph. May be overridden by
-- tags in /@textView@/’s buffer.
textViewSetPixelsInsideWrap ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> Int32
    -- ^ /@pixelsInsideWrap@/: default number of pixels between wrapped lines
    -> m ()
textViewSetPixelsInsideWrap textView pixelsInsideWrap = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    gtk_text_view_set_pixels_inside_wrap textView' pixelsInsideWrap
    touchManagedPtr textView
    return ()

#if defined(ENABLE_OVERLOADING)
data TextViewSetPixelsInsideWrapMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsTextView a) => O.MethodInfo TextViewSetPixelsInsideWrapMethodInfo a signature where
    overloadedMethod = textViewSetPixelsInsideWrap

#endif

-- method TextView::set_right_margin
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "right_margin"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "right margin in pixels"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_set_right_margin" gtk_text_view_set_right_margin :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    Int32 ->                                -- right_margin : TBasicType TInt
    IO ()

-- | Sets the default right margin for text in the text view.
-- Tags in the buffer may override the default.
-- 
-- Note that this function is confusingly named.
-- In CSS terms, the value set here is padding.
textViewSetRightMargin ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> Int32
    -- ^ /@rightMargin@/: right margin in pixels
    -> m ()
textViewSetRightMargin textView rightMargin = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    gtk_text_view_set_right_margin textView' rightMargin
    touchManagedPtr textView
    return ()

#if defined(ENABLE_OVERLOADING)
data TextViewSetRightMarginMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsTextView a) => O.MethodInfo TextViewSetRightMarginMethodInfo a signature where
    overloadedMethod = textViewSetRightMargin

#endif

-- method TextView::set_tabs
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "tabs"
--           , argType =
--               TInterface Name { namespace = "Pango" , name = "TabArray" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "tabs as a #PangoTabArray"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_set_tabs" gtk_text_view_set_tabs :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    Ptr Pango.TabArray.TabArray ->          -- tabs : TInterface (Name {namespace = "Pango", name = "TabArray"})
    IO ()

-- | Sets the default tab stops for paragraphs in /@textView@/.
-- Tags in the buffer may override the default.
textViewSetTabs ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> Pango.TabArray.TabArray
    -- ^ /@tabs@/: tabs as a t'GI.Pango.Structs.TabArray.TabArray'
    -> m ()
textViewSetTabs textView tabs = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    tabs' <- unsafeManagedPtrGetPtr tabs
    gtk_text_view_set_tabs textView' tabs'
    touchManagedPtr textView
    touchManagedPtr tabs
    return ()

#if defined(ENABLE_OVERLOADING)
data TextViewSetTabsMethodInfo
instance (signature ~ (Pango.TabArray.TabArray -> m ()), MonadIO m, IsTextView a) => O.MethodInfo TextViewSetTabsMethodInfo a signature where
    overloadedMethod = textViewSetTabs

#endif

-- method TextView::set_top_margin
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "top_margin"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "top margin in pixels"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_set_top_margin" gtk_text_view_set_top_margin :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    Int32 ->                                -- top_margin : TBasicType TInt
    IO ()

-- | Sets the top margin for text in /@textView@/.
-- 
-- Note that this function is confusingly named.
-- In CSS terms, the value set here is padding.
-- 
-- /Since: 3.18/
textViewSetTopMargin ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> Int32
    -- ^ /@topMargin@/: top margin in pixels
    -> m ()
textViewSetTopMargin textView topMargin = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    gtk_text_view_set_top_margin textView' topMargin
    touchManagedPtr textView
    return ()

#if defined(ENABLE_OVERLOADING)
data TextViewSetTopMarginMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsTextView a) => O.MethodInfo TextViewSetTopMarginMethodInfo a signature where
    overloadedMethod = textViewSetTopMargin

#endif

-- method TextView::set_wrap_mode
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "wrap_mode"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "WrapMode" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkWrapMode" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_set_wrap_mode" gtk_text_view_set_wrap_mode :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    CUInt ->                                -- wrap_mode : TInterface (Name {namespace = "Gtk", name = "WrapMode"})
    IO ()

-- | Sets the line wrapping for the view.
textViewSetWrapMode ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> Gtk.Enums.WrapMode
    -- ^ /@wrapMode@/: a t'GI.Gtk.Enums.WrapMode'
    -> m ()
textViewSetWrapMode textView wrapMode = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    let wrapMode' = (fromIntegral . fromEnum) wrapMode
    gtk_text_view_set_wrap_mode textView' wrapMode'
    touchManagedPtr textView
    return ()

#if defined(ENABLE_OVERLOADING)
data TextViewSetWrapModeMethodInfo
instance (signature ~ (Gtk.Enums.WrapMode -> m ()), MonadIO m, IsTextView a) => O.MethodInfo TextViewSetWrapModeMethodInfo a signature where
    overloadedMethod = textViewSetWrapMode

#endif

-- method TextView::starts_display_line
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "iter"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextIter" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextIter" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_starts_display_line" gtk_text_view_starts_display_line :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    Ptr Gtk.TextIter.TextIter ->            -- iter : TInterface (Name {namespace = "Gtk", name = "TextIter"})
    IO CInt

-- | Determines whether /@iter@/ is at the start of a display line.
-- See 'GI.Gtk.Objects.TextView.textViewForwardDisplayLine' for an explanation of
-- display lines vs. paragraphs.
textViewStartsDisplayLine ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> Gtk.TextIter.TextIter
    -- ^ /@iter@/: a t'GI.Gtk.Structs.TextIter.TextIter'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if /@iter@/ begins a wrapped line
textViewStartsDisplayLine textView iter = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    iter' <- unsafeManagedPtrGetPtr iter
    result <- gtk_text_view_starts_display_line textView' iter'
    let result' = (/= 0) result
    touchManagedPtr textView
    touchManagedPtr iter
    return result'

#if defined(ENABLE_OVERLOADING)
data TextViewStartsDisplayLineMethodInfo
instance (signature ~ (Gtk.TextIter.TextIter -> m Bool), MonadIO m, IsTextView a) => O.MethodInfo TextViewStartsDisplayLineMethodInfo a signature where
    overloadedMethod = textViewStartsDisplayLine

#endif

-- method TextView::window_to_buffer_coords
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "text_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTextView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "win"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TextWindowType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a #GtkTextWindowType except %GTK_TEXT_WINDOW_PRIVATE"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "window_x"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "window x coordinate"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "window_y"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "window y coordinate"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "buffer_x"
--           , argType = TBasicType TInt
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "buffer x coordinate return location or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "buffer_y"
--           , argType = TBasicType TInt
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "buffer y coordinate return location or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_text_view_window_to_buffer_coords" gtk_text_view_window_to_buffer_coords :: 
    Ptr TextView ->                         -- text_view : TInterface (Name {namespace = "Gtk", name = "TextView"})
    CUInt ->                                -- win : TInterface (Name {namespace = "Gtk", name = "TextWindowType"})
    Int32 ->                                -- window_x : TBasicType TInt
    Int32 ->                                -- window_y : TBasicType TInt
    Ptr Int32 ->                            -- buffer_x : TBasicType TInt
    Ptr Int32 ->                            -- buffer_y : TBasicType TInt
    IO ()

-- | Converts coordinates on the window identified by /@win@/ to buffer
-- coordinates, storing the result in (/@bufferX@/,/@bufferY@/).
-- 
-- Note that you can’t convert coordinates for a nonexisting window (see
-- 'GI.Gtk.Objects.TextView.textViewSetBorderWindowSize').
textViewWindowToBufferCoords ::
    (B.CallStack.HasCallStack, MonadIO m, IsTextView a) =>
    a
    -- ^ /@textView@/: a t'GI.Gtk.Objects.TextView.TextView'
    -> Gtk.Enums.TextWindowType
    -- ^ /@win@/: a t'GI.Gtk.Enums.TextWindowType' except 'GI.Gtk.Enums.TextWindowTypePrivate'
    -> Int32
    -- ^ /@windowX@/: window x coordinate
    -> Int32
    -- ^ /@windowY@/: window y coordinate
    -> m ((Int32, Int32))
textViewWindowToBufferCoords textView win windowX windowY = liftIO $ do
    textView' <- unsafeManagedPtrCastPtr textView
    let win' = (fromIntegral . fromEnum) win
    bufferX <- allocMem :: IO (Ptr Int32)
    bufferY <- allocMem :: IO (Ptr Int32)
    gtk_text_view_window_to_buffer_coords textView' win' windowX windowY bufferX bufferY
    bufferX' <- peek bufferX
    bufferY' <- peek bufferY
    touchManagedPtr textView
    freeMem bufferX
    freeMem bufferY
    return (bufferX', bufferY')

#if defined(ENABLE_OVERLOADING)
data TextViewWindowToBufferCoordsMethodInfo
instance (signature ~ (Gtk.Enums.TextWindowType -> Int32 -> Int32 -> m ((Int32, Int32))), MonadIO m, IsTextView a) => O.MethodInfo TextViewWindowToBufferCoordsMethodInfo a signature where
    overloadedMethod = textViewWindowToBufferCoords

#endif

