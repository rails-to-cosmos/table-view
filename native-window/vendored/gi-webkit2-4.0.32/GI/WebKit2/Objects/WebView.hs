{-# LANGUAGE ImplicitParams, RankNTypes, TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- The central class of the WPE WebKit and WebKitGTK APIs.
-- 
-- t'GI.WebKit2.Objects.WebView.WebView' is the central class of the WPE WebKit and WebKitGTK
-- APIs. It is responsible for managing the drawing of the content and
-- forwarding of events. You can load any URI into the t'GI.WebKit2.Objects.WebView.WebView' or
-- a data string. With t'GI.WebKit2.Objects.Settings.Settings' you can control various aspects
-- of the rendering and loading of the content.
-- 
-- Note that in WebKitGTK, t'GI.WebKit2.Objects.WebView.WebView' is scrollable by itself, so
-- you don\'t need to embed it in a t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow'.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.WebView
    ( 

-- * Exported types
    WebView(..)                             ,
    IsWebView                               ,
    toWebView                               ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [activate]("GI.Gtk.Objects.Widget#g:method:activate"), [add]("GI.Gtk.Objects.Container#g:method:add"), [addAccelerator]("GI.Gtk.Objects.Widget#g:method:addAccelerator"), [addChild]("GI.Gtk.Interfaces.Buildable#g:method:addChild"), [addDeviceEvents]("GI.Gtk.Objects.Widget#g:method:addDeviceEvents"), [addEvents]("GI.Gtk.Objects.Widget#g:method:addEvents"), [addMnemonicLabel]("GI.Gtk.Objects.Widget#g:method:addMnemonicLabel"), [addTickCallback]("GI.Gtk.Objects.Widget#g:method:addTickCallback"), [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [callAsyncJavascriptFunction]("GI.WebKit2.Objects.WebView#g:method:callAsyncJavascriptFunction"), [callAsyncJavascriptFunctionFinish]("GI.WebKit2.Objects.WebView#g:method:callAsyncJavascriptFunctionFinish"), [canActivateAccel]("GI.Gtk.Objects.Widget#g:method:canActivateAccel"), [canExecuteEditingCommand]("GI.WebKit2.Objects.WebView#g:method:canExecuteEditingCommand"), [canExecuteEditingCommandFinish]("GI.WebKit2.Objects.WebView#g:method:canExecuteEditingCommandFinish"), [canGoBack]("GI.WebKit2.Objects.WebView#g:method:canGoBack"), [canGoForward]("GI.WebKit2.Objects.WebView#g:method:canGoForward"), [canShowMimeType]("GI.WebKit2.Objects.WebView#g:method:canShowMimeType"), [checkResize]("GI.Gtk.Objects.Container#g:method:checkResize"), [childFocus]("GI.Gtk.Objects.Widget#g:method:childFocus"), [childGetProperty]("GI.Gtk.Objects.Container#g:method:childGetProperty"), [childNotify]("GI.Gtk.Objects.Container#g:method:childNotify"), [childNotifyByPspec]("GI.Gtk.Objects.Container#g:method:childNotifyByPspec"), [childSetProperty]("GI.Gtk.Objects.Container#g:method:childSetProperty"), [childType]("GI.Gtk.Objects.Container#g:method:childType"), [classPath]("GI.Gtk.Objects.Widget#g:method:classPath"), [computeExpand]("GI.Gtk.Objects.Widget#g:method:computeExpand"), [constructChild]("GI.Gtk.Interfaces.Buildable#g:method:constructChild"), [createPangoContext]("GI.Gtk.Objects.Widget#g:method:createPangoContext"), [createPangoLayout]("GI.Gtk.Objects.Widget#g:method:createPangoLayout"), [customFinished]("GI.Gtk.Interfaces.Buildable#g:method:customFinished"), [customTagEnd]("GI.Gtk.Interfaces.Buildable#g:method:customTagEnd"), [customTagStart]("GI.Gtk.Interfaces.Buildable#g:method:customTagStart"), [destroy]("GI.Gtk.Objects.Widget#g:method:destroy"), [destroyed]("GI.Gtk.Objects.Widget#g:method:destroyed"), [deviceIsShadowed]("GI.Gtk.Objects.Widget#g:method:deviceIsShadowed"), [downloadUri]("GI.WebKit2.Objects.WebView#g:method:downloadUri"), [dragBegin]("GI.Gtk.Objects.Widget#g:method:dragBegin"), [dragBeginWithCoordinates]("GI.Gtk.Objects.Widget#g:method:dragBeginWithCoordinates"), [dragCheckThreshold]("GI.Gtk.Objects.Widget#g:method:dragCheckThreshold"), [dragDestAddImageTargets]("GI.Gtk.Objects.Widget#g:method:dragDestAddImageTargets"), [dragDestAddTextTargets]("GI.Gtk.Objects.Widget#g:method:dragDestAddTextTargets"), [dragDestAddUriTargets]("GI.Gtk.Objects.Widget#g:method:dragDestAddUriTargets"), [dragDestFindTarget]("GI.Gtk.Objects.Widget#g:method:dragDestFindTarget"), [dragDestGetTargetList]("GI.Gtk.Objects.Widget#g:method:dragDestGetTargetList"), [dragDestGetTrackMotion]("GI.Gtk.Objects.Widget#g:method:dragDestGetTrackMotion"), [dragDestSet]("GI.Gtk.Objects.Widget#g:method:dragDestSet"), [dragDestSetProxy]("GI.Gtk.Objects.Widget#g:method:dragDestSetProxy"), [dragDestSetTargetList]("GI.Gtk.Objects.Widget#g:method:dragDestSetTargetList"), [dragDestSetTrackMotion]("GI.Gtk.Objects.Widget#g:method:dragDestSetTrackMotion"), [dragDestUnset]("GI.Gtk.Objects.Widget#g:method:dragDestUnset"), [dragGetData]("GI.Gtk.Objects.Widget#g:method:dragGetData"), [dragHighlight]("GI.Gtk.Objects.Widget#g:method:dragHighlight"), [dragSourceAddImageTargets]("GI.Gtk.Objects.Widget#g:method:dragSourceAddImageTargets"), [dragSourceAddTextTargets]("GI.Gtk.Objects.Widget#g:method:dragSourceAddTextTargets"), [dragSourceAddUriTargets]("GI.Gtk.Objects.Widget#g:method:dragSourceAddUriTargets"), [dragSourceGetTargetList]("GI.Gtk.Objects.Widget#g:method:dragSourceGetTargetList"), [dragSourceSet]("GI.Gtk.Objects.Widget#g:method:dragSourceSet"), [dragSourceSetIconGicon]("GI.Gtk.Objects.Widget#g:method:dragSourceSetIconGicon"), [dragSourceSetIconName]("GI.Gtk.Objects.Widget#g:method:dragSourceSetIconName"), [dragSourceSetIconPixbuf]("GI.Gtk.Objects.Widget#g:method:dragSourceSetIconPixbuf"), [dragSourceSetIconStock]("GI.Gtk.Objects.Widget#g:method:dragSourceSetIconStock"), [dragSourceSetTargetList]("GI.Gtk.Objects.Widget#g:method:dragSourceSetTargetList"), [dragSourceUnset]("GI.Gtk.Objects.Widget#g:method:dragSourceUnset"), [dragUnhighlight]("GI.Gtk.Objects.Widget#g:method:dragUnhighlight"), [draw]("GI.Gtk.Objects.Widget#g:method:draw"), [ensureStyle]("GI.Gtk.Objects.Widget#g:method:ensureStyle"), [errorBell]("GI.Gtk.Objects.Widget#g:method:errorBell"), [evaluateJavascript]("GI.WebKit2.Objects.WebView#g:method:evaluateJavascript"), [evaluateJavascriptFinish]("GI.WebKit2.Objects.WebView#g:method:evaluateJavascriptFinish"), [event]("GI.Gtk.Objects.Widget#g:method:event"), [executeEditingCommand]("GI.WebKit2.Objects.WebView#g:method:executeEditingCommand"), [executeEditingCommandWithArgument]("GI.WebKit2.Objects.WebView#g:method:executeEditingCommandWithArgument"), [forall]("GI.Gtk.Objects.Container#g:method:forall"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [foreach]("GI.Gtk.Objects.Container#g:method:foreach"), [freezeChildNotify]("GI.Gtk.Objects.Widget#g:method:freezeChildNotify"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [goBack]("GI.WebKit2.Objects.WebView#g:method:goBack"), [goForward]("GI.WebKit2.Objects.WebView#g:method:goForward"), [goToBackForwardListItem]("GI.WebKit2.Objects.WebView#g:method:goToBackForwardListItem"), [grabAdd]("GI.Gtk.Objects.Widget#g:method:grabAdd"), [grabDefault]("GI.Gtk.Objects.Widget#g:method:grabDefault"), [grabFocus]("GI.Gtk.Objects.Widget#g:method:grabFocus"), [grabRemove]("GI.Gtk.Objects.Widget#g:method:grabRemove"), [hasDefault]("GI.Gtk.Objects.Widget#g:method:hasDefault"), [hasFocus]("GI.Gtk.Objects.Widget#g:method:hasFocus"), [hasGrab]("GI.Gtk.Objects.Widget#g:method:hasGrab"), [hasRcStyle]("GI.Gtk.Objects.Widget#g:method:hasRcStyle"), [hasScreen]("GI.Gtk.Objects.Widget#g:method:hasScreen"), [hasVisibleFocus]("GI.Gtk.Objects.Widget#g:method:hasVisibleFocus"), [hide]("GI.Gtk.Objects.Widget#g:method:hide"), [hideOnDelete]("GI.Gtk.Objects.Widget#g:method:hideOnDelete"), [inDestruction]("GI.Gtk.Objects.Widget#g:method:inDestruction"), [initTemplate]("GI.Gtk.Objects.Widget#g:method:initTemplate"), [inputShapeCombineRegion]("GI.Gtk.Objects.Widget#g:method:inputShapeCombineRegion"), [insertActionGroup]("GI.Gtk.Objects.Widget#g:method:insertActionGroup"), [intersect]("GI.Gtk.Objects.Widget#g:method:intersect"), [isAncestor]("GI.Gtk.Objects.Widget#g:method:isAncestor"), [isComposited]("GI.Gtk.Objects.Widget#g:method:isComposited"), [isControlledByAutomation]("GI.WebKit2.Objects.WebView#g:method:isControlledByAutomation"), [isDrawable]("GI.Gtk.Objects.Widget#g:method:isDrawable"), [isEditable]("GI.WebKit2.Objects.WebView#g:method:isEditable"), [isEphemeral]("GI.WebKit2.Objects.WebView#g:method:isEphemeral"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [isFocus]("GI.Gtk.Objects.Widget#g:method:isFocus"), [isImmersiveModeEnabled]("GI.WebKit2.Objects.WebView#g:method:isImmersiveModeEnabled"), [isLoading]("GI.WebKit2.Objects.WebView#g:method:isLoading"), [isPlayingAudio]("GI.WebKit2.Objects.WebView#g:method:isPlayingAudio"), [isSensitive]("GI.Gtk.Objects.Widget#g:method:isSensitive"), [isToplevel]("GI.Gtk.Objects.Widget#g:method:isToplevel"), [isVisible]("GI.Gtk.Objects.Widget#g:method:isVisible"), [keynavFailed]("GI.Gtk.Objects.Widget#g:method:keynavFailed"), [leaveImmersiveMode]("GI.WebKit2.Objects.WebView#g:method:leaveImmersiveMode"), [listAccelClosures]("GI.Gtk.Objects.Widget#g:method:listAccelClosures"), [listActionPrefixes]("GI.Gtk.Objects.Widget#g:method:listActionPrefixes"), [listMnemonicLabels]("GI.Gtk.Objects.Widget#g:method:listMnemonicLabels"), [loadAlternateHtml]("GI.WebKit2.Objects.WebView#g:method:loadAlternateHtml"), [loadBytes]("GI.WebKit2.Objects.WebView#g:method:loadBytes"), [loadHtml]("GI.WebKit2.Objects.WebView#g:method:loadHtml"), [loadPlainText]("GI.WebKit2.Objects.WebView#g:method:loadPlainText"), [loadRequest]("GI.WebKit2.Objects.WebView#g:method:loadRequest"), [loadUri]("GI.WebKit2.Objects.WebView#g:method:loadUri"), [map]("GI.Gtk.Objects.Widget#g:method:map"), [mnemonicActivate]("GI.Gtk.Objects.Widget#g:method:mnemonicActivate"), [modifyBase]("GI.Gtk.Objects.Widget#g:method:modifyBase"), [modifyBg]("GI.Gtk.Objects.Widget#g:method:modifyBg"), [modifyCursor]("GI.Gtk.Objects.Widget#g:method:modifyCursor"), [modifyFg]("GI.Gtk.Objects.Widget#g:method:modifyFg"), [modifyFont]("GI.Gtk.Objects.Widget#g:method:modifyFont"), [modifyStyle]("GI.Gtk.Objects.Widget#g:method:modifyStyle"), [modifyText]("GI.Gtk.Objects.Widget#g:method:modifyText"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [overrideBackgroundColor]("GI.Gtk.Objects.Widget#g:method:overrideBackgroundColor"), [overrideColor]("GI.Gtk.Objects.Widget#g:method:overrideColor"), [overrideCursor]("GI.Gtk.Objects.Widget#g:method:overrideCursor"), [overrideFont]("GI.Gtk.Objects.Widget#g:method:overrideFont"), [overrideSymbolicColor]("GI.Gtk.Objects.Widget#g:method:overrideSymbolicColor"), [parserFinished]("GI.Gtk.Interfaces.Buildable#g:method:parserFinished"), [path]("GI.Gtk.Objects.Widget#g:method:path"), [propagateDraw]("GI.Gtk.Objects.Container#g:method:propagateDraw"), [queueAllocate]("GI.Gtk.Objects.Widget#g:method:queueAllocate"), [queueComputeExpand]("GI.Gtk.Objects.Widget#g:method:queueComputeExpand"), [queueDraw]("GI.Gtk.Objects.Widget#g:method:queueDraw"), [queueDrawArea]("GI.Gtk.Objects.Widget#g:method:queueDrawArea"), [queueDrawRegion]("GI.Gtk.Objects.Widget#g:method:queueDrawRegion"), [queueResize]("GI.Gtk.Objects.Widget#g:method:queueResize"), [queueResizeNoRedraw]("GI.Gtk.Objects.Widget#g:method:queueResizeNoRedraw"), [realize]("GI.Gtk.Objects.Widget#g:method:realize"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [regionIntersect]("GI.Gtk.Objects.Widget#g:method:regionIntersect"), [registerWindow]("GI.Gtk.Objects.Widget#g:method:registerWindow"), [reload]("GI.WebKit2.Objects.WebView#g:method:reload"), [reloadBypassCache]("GI.WebKit2.Objects.WebView#g:method:reloadBypassCache"), [remove]("GI.Gtk.Objects.Container#g:method:remove"), [removeAccelerator]("GI.Gtk.Objects.Widget#g:method:removeAccelerator"), [removeMnemonicLabel]("GI.Gtk.Objects.Widget#g:method:removeMnemonicLabel"), [removeTickCallback]("GI.Gtk.Objects.Widget#g:method:removeTickCallback"), [renderIcon]("GI.Gtk.Objects.Widget#g:method:renderIcon"), [renderIconPixbuf]("GI.Gtk.Objects.Widget#g:method:renderIconPixbuf"), [reparent]("GI.Gtk.Objects.Widget#g:method:reparent"), [resetRcStyles]("GI.Gtk.Objects.Widget#g:method:resetRcStyles"), [resetStyle]("GI.Gtk.Objects.Widget#g:method:resetStyle"), [resizeChildren]("GI.Gtk.Objects.Container#g:method:resizeChildren"), [restoreSessionState]("GI.WebKit2.Objects.WebView#g:method:restoreSessionState"), [runAsyncJavascriptFunctionInWorld]("GI.WebKit2.Objects.WebView#g:method:runAsyncJavascriptFunctionInWorld"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [runJavascript]("GI.WebKit2.Objects.WebView#g:method:runJavascript"), [runJavascriptFinish]("GI.WebKit2.Objects.WebView#g:method:runJavascriptFinish"), [runJavascriptFromGresource]("GI.WebKit2.Objects.WebView#g:method:runJavascriptFromGresource"), [runJavascriptFromGresourceFinish]("GI.WebKit2.Objects.WebView#g:method:runJavascriptFromGresourceFinish"), [runJavascriptInWorld]("GI.WebKit2.Objects.WebView#g:method:runJavascriptInWorld"), [runJavascriptInWorldFinish]("GI.WebKit2.Objects.WebView#g:method:runJavascriptInWorldFinish"), [save]("GI.WebKit2.Objects.WebView#g:method:save"), [saveFinish]("GI.WebKit2.Objects.WebView#g:method:saveFinish"), [saveToFile]("GI.WebKit2.Objects.WebView#g:method:saveToFile"), [saveToFileFinish]("GI.WebKit2.Objects.WebView#g:method:saveToFileFinish"), [sendExpose]("GI.Gtk.Objects.Widget#g:method:sendExpose"), [sendFocusChange]("GI.Gtk.Objects.Widget#g:method:sendFocusChange"), [sendMessageToPage]("GI.WebKit2.Objects.WebView#g:method:sendMessageToPage"), [sendMessageToPageFinish]("GI.WebKit2.Objects.WebView#g:method:sendMessageToPageFinish"), [shapeCombineRegion]("GI.Gtk.Objects.Widget#g:method:shapeCombineRegion"), [show]("GI.Gtk.Objects.Widget#g:method:show"), [showAll]("GI.Gtk.Objects.Widget#g:method:showAll"), [showNow]("GI.Gtk.Objects.Widget#g:method:showNow"), [sizeAllocate]("GI.Gtk.Objects.Widget#g:method:sizeAllocate"), [sizeAllocateWithBaseline]("GI.Gtk.Objects.Widget#g:method:sizeAllocateWithBaseline"), [sizeRequest]("GI.Gtk.Objects.Widget#g:method:sizeRequest"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [stopLoading]("GI.WebKit2.Objects.WebView#g:method:stopLoading"), [styleAttach]("GI.Gtk.Objects.Widget#g:method:styleAttach"), [styleGetProperty]("GI.Gtk.Objects.Widget#g:method:styleGetProperty"), [terminateWebProcess]("GI.WebKit2.Objects.WebView#g:method:terminateWebProcess"), [thawChildNotify]("GI.Gtk.Objects.Widget#g:method:thawChildNotify"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [translateCoordinates]("GI.Gtk.Objects.Widget#g:method:translateCoordinates"), [triggerTooltipQuery]("GI.Gtk.Objects.Widget#g:method:triggerTooltipQuery"), [tryClose]("GI.WebKit2.Objects.WebView#g:method:tryClose"), [unmap]("GI.Gtk.Objects.Widget#g:method:unmap"), [unparent]("GI.Gtk.Objects.Widget#g:method:unparent"), [unrealize]("GI.Gtk.Objects.Widget#g:method:unrealize"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [unregisterWindow]("GI.Gtk.Objects.Widget#g:method:unregisterWindow"), [unsetFocusChain]("GI.Gtk.Objects.Container#g:method:unsetFocusChain"), [unsetStateFlags]("GI.Gtk.Objects.Widget#g:method:unsetStateFlags"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getAccessible]("GI.Gtk.Objects.Widget#g:method:getAccessible"), [getActionGroup]("GI.Gtk.Objects.Widget#g:method:getActionGroup"), [getAllocatedBaseline]("GI.Gtk.Objects.Widget#g:method:getAllocatedBaseline"), [getAllocatedHeight]("GI.Gtk.Objects.Widget#g:method:getAllocatedHeight"), [getAllocatedSize]("GI.Gtk.Objects.Widget#g:method:getAllocatedSize"), [getAllocatedWidth]("GI.Gtk.Objects.Widget#g:method:getAllocatedWidth"), [getAllocation]("GI.Gtk.Objects.Widget#g:method:getAllocation"), [getAncestor]("GI.Gtk.Objects.Widget#g:method:getAncestor"), [getAppPaintable]("GI.Gtk.Objects.Widget#g:method:getAppPaintable"), [getAutomationPresentationType]("GI.WebKit2.Objects.WebView#g:method:getAutomationPresentationType"), [getBackForwardList]("GI.WebKit2.Objects.WebView#g:method:getBackForwardList"), [getBackgroundColor]("GI.WebKit2.Objects.WebView#g:method:getBackgroundColor"), [getBorderWidth]("GI.Gtk.Objects.Container#g:method:getBorderWidth"), [getCameraCaptureState]("GI.WebKit2.Objects.WebView#g:method:getCameraCaptureState"), [getCanDefault]("GI.Gtk.Objects.Widget#g:method:getCanDefault"), [getCanFocus]("GI.Gtk.Objects.Widget#g:method:getCanFocus"), [getChildRequisition]("GI.Gtk.Objects.Widget#g:method:getChildRequisition"), [getChildVisible]("GI.Gtk.Objects.Widget#g:method:getChildVisible"), [getChildren]("GI.Gtk.Objects.Container#g:method:getChildren"), [getClip]("GI.Gtk.Objects.Widget#g:method:getClip"), [getClipboard]("GI.Gtk.Objects.Widget#g:method:getClipboard"), [getCompositeName]("GI.Gtk.Objects.Widget#g:method:getCompositeName"), [getContext]("GI.WebKit2.Objects.WebView#g:method:getContext"), [getCustomCharset]("GI.WebKit2.Objects.WebView#g:method:getCustomCharset"), [getData]("GI.GObject.Objects.Object#g:method:getData"), [getDefaultContentSecurityPolicy]("GI.WebKit2.Objects.WebView#g:method:getDefaultContentSecurityPolicy"), [getDeviceEnabled]("GI.Gtk.Objects.Widget#g:method:getDeviceEnabled"), [getDeviceEvents]("GI.Gtk.Objects.Widget#g:method:getDeviceEvents"), [getDirection]("GI.Gtk.Objects.Widget#g:method:getDirection"), [getDisplay]("GI.Gtk.Objects.Widget#g:method:getDisplay"), [getDisplayCaptureState]("GI.WebKit2.Objects.WebView#g:method:getDisplayCaptureState"), [getDoubleBuffered]("GI.Gtk.Objects.Widget#g:method:getDoubleBuffered"), [getEditorState]("GI.WebKit2.Objects.WebView#g:method:getEditorState"), [getEstimatedLoadProgress]("GI.WebKit2.Objects.WebView#g:method:getEstimatedLoadProgress"), [getEvents]("GI.Gtk.Objects.Widget#g:method:getEvents"), [getFavicon]("GI.WebKit2.Objects.WebView#g:method:getFavicon"), [getFindController]("GI.WebKit2.Objects.WebView#g:method:getFindController"), [getFocusChain]("GI.Gtk.Objects.Container#g:method:getFocusChain"), [getFocusChild]("GI.Gtk.Objects.Container#g:method:getFocusChild"), [getFocusHadjustment]("GI.Gtk.Objects.Container#g:method:getFocusHadjustment"), [getFocusOnClick]("GI.Gtk.Objects.Widget#g:method:getFocusOnClick"), [getFocusVadjustment]("GI.Gtk.Objects.Container#g:method:getFocusVadjustment"), [getFontMap]("GI.Gtk.Objects.Widget#g:method:getFontMap"), [getFontOptions]("GI.Gtk.Objects.Widget#g:method:getFontOptions"), [getFrameClock]("GI.Gtk.Objects.Widget#g:method:getFrameClock"), [getHalign]("GI.Gtk.Objects.Widget#g:method:getHalign"), [getHasTooltip]("GI.Gtk.Objects.Widget#g:method:getHasTooltip"), [getHasWindow]("GI.Gtk.Objects.Widget#g:method:getHasWindow"), [getHexpand]("GI.Gtk.Objects.Widget#g:method:getHexpand"), [getHexpandSet]("GI.Gtk.Objects.Widget#g:method:getHexpandSet"), [getInputMethodContext]("GI.WebKit2.Objects.WebView#g:method:getInputMethodContext"), [getInspector]("GI.WebKit2.Objects.WebView#g:method:getInspector"), [getInternalChild]("GI.Gtk.Interfaces.Buildable#g:method:getInternalChild"), [getIsMuted]("GI.WebKit2.Objects.WebView#g:method:getIsMuted"), [getIsWebProcessResponsive]("GI.WebKit2.Objects.WebView#g:method:getIsWebProcessResponsive"), [getMainResource]("GI.WebKit2.Objects.WebView#g:method:getMainResource"), [getMapped]("GI.Gtk.Objects.Widget#g:method:getMapped"), [getMarginBottom]("GI.Gtk.Objects.Widget#g:method:getMarginBottom"), [getMarginEnd]("GI.Gtk.Objects.Widget#g:method:getMarginEnd"), [getMarginLeft]("GI.Gtk.Objects.Widget#g:method:getMarginLeft"), [getMarginRight]("GI.Gtk.Objects.Widget#g:method:getMarginRight"), [getMarginStart]("GI.Gtk.Objects.Widget#g:method:getMarginStart"), [getMarginTop]("GI.Gtk.Objects.Widget#g:method:getMarginTop"), [getMicrophoneCaptureState]("GI.WebKit2.Objects.WebView#g:method:getMicrophoneCaptureState"), [getModifierMask]("GI.Gtk.Objects.Widget#g:method:getModifierMask"), [getModifierStyle]("GI.Gtk.Objects.Widget#g:method:getModifierStyle"), [getName]("GI.Gtk.Objects.Widget#g:method:getName"), [getNoShowAll]("GI.Gtk.Objects.Widget#g:method:getNoShowAll"), [getOpacity]("GI.Gtk.Objects.Widget#g:method:getOpacity"), [getPageId]("GI.WebKit2.Objects.WebView#g:method:getPageId"), [getPangoContext]("GI.Gtk.Objects.Widget#g:method:getPangoContext"), [getParent]("GI.Gtk.Objects.Widget#g:method:getParent"), [getParentWindow]("GI.Gtk.Objects.Widget#g:method:getParentWindow"), [getPath]("GI.Gtk.Objects.Widget#g:method:getPath"), [getPathForChild]("GI.Gtk.Objects.Container#g:method:getPathForChild"), [getPointer]("GI.Gtk.Objects.Widget#g:method:getPointer"), [getPreferredHeight]("GI.Gtk.Objects.Widget#g:method:getPreferredHeight"), [getPreferredHeightAndBaselineForWidth]("GI.Gtk.Objects.Widget#g:method:getPreferredHeightAndBaselineForWidth"), [getPreferredHeightForWidth]("GI.Gtk.Objects.Widget#g:method:getPreferredHeightForWidth"), [getPreferredSize]("GI.Gtk.Objects.Widget#g:method:getPreferredSize"), [getPreferredWidth]("GI.Gtk.Objects.Widget#g:method:getPreferredWidth"), [getPreferredWidthForHeight]("GI.Gtk.Objects.Widget#g:method:getPreferredWidthForHeight"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata"), [getRealized]("GI.Gtk.Objects.Widget#g:method:getRealized"), [getReceivesDefault]("GI.Gtk.Objects.Widget#g:method:getReceivesDefault"), [getRequestMode]("GI.Gtk.Objects.Widget#g:method:getRequestMode"), [getRequisition]("GI.Gtk.Objects.Widget#g:method:getRequisition"), [getResizeMode]("GI.Gtk.Objects.Container#g:method:getResizeMode"), [getRootWindow]("GI.Gtk.Objects.Widget#g:method:getRootWindow"), [getScaleFactor]("GI.Gtk.Objects.Widget#g:method:getScaleFactor"), [getScreen]("GI.Gtk.Objects.Widget#g:method:getScreen"), [getSensitive]("GI.Gtk.Objects.Widget#g:method:getSensitive"), [getSessionState]("GI.WebKit2.Objects.WebView#g:method:getSessionState"), [getSettings]("GI.WebKit2.Objects.WebView#g:method:getSettings"), [getSizeRequest]("GI.Gtk.Objects.Widget#g:method:getSizeRequest"), [getSnapshot]("GI.WebKit2.Objects.WebView#g:method:getSnapshot"), [getSnapshotFinish]("GI.WebKit2.Objects.WebView#g:method:getSnapshotFinish"), [getState]("GI.Gtk.Objects.Widget#g:method:getState"), [getStateFlags]("GI.Gtk.Objects.Widget#g:method:getStateFlags"), [getStyle]("GI.Gtk.Objects.Widget#g:method:getStyle"), [getStyleContext]("GI.Gtk.Objects.Widget#g:method:getStyleContext"), [getSupportMultidevice]("GI.Gtk.Objects.Widget#g:method:getSupportMultidevice"), [getTemplateChild]("GI.Gtk.Objects.Widget#g:method:getTemplateChild"), [getThemeColor]("GI.WebKit2.Objects.WebView#g:method:getThemeColor"), [getTitle]("GI.WebKit2.Objects.WebView#g:method:getTitle"), [getTlsInfo]("GI.WebKit2.Objects.WebView#g:method:getTlsInfo"), [getTooltipMarkup]("GI.Gtk.Objects.Widget#g:method:getTooltipMarkup"), [getTooltipText]("GI.Gtk.Objects.Widget#g:method:getTooltipText"), [getTooltipWindow]("GI.Gtk.Objects.Widget#g:method:getTooltipWindow"), [getToplevel]("GI.Gtk.Objects.Widget#g:method:getToplevel"), [getUri]("GI.WebKit2.Objects.WebView#g:method:getUri"), [getUserContentManager]("GI.WebKit2.Objects.WebView#g:method:getUserContentManager"), [getValign]("GI.Gtk.Objects.Widget#g:method:getValign"), [getValignWithBaseline]("GI.Gtk.Objects.Widget#g:method:getValignWithBaseline"), [getVexpand]("GI.Gtk.Objects.Widget#g:method:getVexpand"), [getVexpandSet]("GI.Gtk.Objects.Widget#g:method:getVexpandSet"), [getVisible]("GI.Gtk.Objects.Widget#g:method:getVisible"), [getVisual]("GI.Gtk.Objects.Widget#g:method:getVisual"), [getWebExtensionMode]("GI.WebKit2.Objects.WebView#g:method:getWebExtensionMode"), [getWebsiteDataManager]("GI.WebKit2.Objects.WebView#g:method:getWebsiteDataManager"), [getWebsitePolicies]("GI.WebKit2.Objects.WebView#g:method:getWebsitePolicies"), [getWindow]("GI.Gtk.Objects.Widget#g:method:getWindow"), [getWindowProperties]("GI.WebKit2.Objects.WebView#g:method:getWindowProperties"), [getZoomLevel]("GI.WebKit2.Objects.WebView#g:method:getZoomLevel").
-- 
-- ==== Setters
-- [setAccelPath]("GI.Gtk.Objects.Widget#g:method:setAccelPath"), [setAllocation]("GI.Gtk.Objects.Widget#g:method:setAllocation"), [setAppPaintable]("GI.Gtk.Objects.Widget#g:method:setAppPaintable"), [setBackgroundColor]("GI.WebKit2.Objects.WebView#g:method:setBackgroundColor"), [setBorderWidth]("GI.Gtk.Objects.Container#g:method:setBorderWidth"), [setBuildableProperty]("GI.Gtk.Interfaces.Buildable#g:method:setBuildableProperty"), [setCameraCaptureState]("GI.WebKit2.Objects.WebView#g:method:setCameraCaptureState"), [setCanDefault]("GI.Gtk.Objects.Widget#g:method:setCanDefault"), [setCanFocus]("GI.Gtk.Objects.Widget#g:method:setCanFocus"), [setChildVisible]("GI.Gtk.Objects.Widget#g:method:setChildVisible"), [setClip]("GI.Gtk.Objects.Widget#g:method:setClip"), [setCompositeName]("GI.Gtk.Objects.Widget#g:method:setCompositeName"), [setCorsAllowlist]("GI.WebKit2.Objects.WebView#g:method:setCorsAllowlist"), [setCustomCharset]("GI.WebKit2.Objects.WebView#g:method:setCustomCharset"), [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setDeviceEnabled]("GI.Gtk.Objects.Widget#g:method:setDeviceEnabled"), [setDeviceEvents]("GI.Gtk.Objects.Widget#g:method:setDeviceEvents"), [setDirection]("GI.Gtk.Objects.Widget#g:method:setDirection"), [setDisplayCaptureState]("GI.WebKit2.Objects.WebView#g:method:setDisplayCaptureState"), [setDoubleBuffered]("GI.Gtk.Objects.Widget#g:method:setDoubleBuffered"), [setEditable]("GI.WebKit2.Objects.WebView#g:method:setEditable"), [setEvents]("GI.Gtk.Objects.Widget#g:method:setEvents"), [setFocusChain]("GI.Gtk.Objects.Container#g:method:setFocusChain"), [setFocusChild]("GI.Gtk.Objects.Container#g:method:setFocusChild"), [setFocusHadjustment]("GI.Gtk.Objects.Container#g:method:setFocusHadjustment"), [setFocusOnClick]("GI.Gtk.Objects.Widget#g:method:setFocusOnClick"), [setFocusVadjustment]("GI.Gtk.Objects.Container#g:method:setFocusVadjustment"), [setFontMap]("GI.Gtk.Objects.Widget#g:method:setFontMap"), [setFontOptions]("GI.Gtk.Objects.Widget#g:method:setFontOptions"), [setHalign]("GI.Gtk.Objects.Widget#g:method:setHalign"), [setHasTooltip]("GI.Gtk.Objects.Widget#g:method:setHasTooltip"), [setHasWindow]("GI.Gtk.Objects.Widget#g:method:setHasWindow"), [setHexpand]("GI.Gtk.Objects.Widget#g:method:setHexpand"), [setHexpandSet]("GI.Gtk.Objects.Widget#g:method:setHexpandSet"), [setInputMethodContext]("GI.WebKit2.Objects.WebView#g:method:setInputMethodContext"), [setIsMuted]("GI.WebKit2.Objects.WebView#g:method:setIsMuted"), [setMapped]("GI.Gtk.Objects.Widget#g:method:setMapped"), [setMarginBottom]("GI.Gtk.Objects.Widget#g:method:setMarginBottom"), [setMarginEnd]("GI.Gtk.Objects.Widget#g:method:setMarginEnd"), [setMarginLeft]("GI.Gtk.Objects.Widget#g:method:setMarginLeft"), [setMarginRight]("GI.Gtk.Objects.Widget#g:method:setMarginRight"), [setMarginStart]("GI.Gtk.Objects.Widget#g:method:setMarginStart"), [setMarginTop]("GI.Gtk.Objects.Widget#g:method:setMarginTop"), [setMicrophoneCaptureState]("GI.WebKit2.Objects.WebView#g:method:setMicrophoneCaptureState"), [setName]("GI.Gtk.Objects.Widget#g:method:setName"), [setNoShowAll]("GI.Gtk.Objects.Widget#g:method:setNoShowAll"), [setOpacity]("GI.Gtk.Objects.Widget#g:method:setOpacity"), [setParent]("GI.Gtk.Objects.Widget#g:method:setParent"), [setParentWindow]("GI.Gtk.Objects.Widget#g:method:setParentWindow"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty"), [setRealized]("GI.Gtk.Objects.Widget#g:method:setRealized"), [setReallocateRedraws]("GI.Gtk.Objects.Container#g:method:setReallocateRedraws"), [setReceivesDefault]("GI.Gtk.Objects.Widget#g:method:setReceivesDefault"), [setRedrawOnAllocate]("GI.Gtk.Objects.Widget#g:method:setRedrawOnAllocate"), [setResizeMode]("GI.Gtk.Objects.Container#g:method:setResizeMode"), [setSensitive]("GI.Gtk.Objects.Widget#g:method:setSensitive"), [setSettings]("GI.WebKit2.Objects.WebView#g:method:setSettings"), [setSizeRequest]("GI.Gtk.Objects.Widget#g:method:setSizeRequest"), [setState]("GI.Gtk.Objects.Widget#g:method:setState"), [setStateFlags]("GI.Gtk.Objects.Widget#g:method:setStateFlags"), [setStyle]("GI.Gtk.Objects.Widget#g:method:setStyle"), [setSupportMultidevice]("GI.Gtk.Objects.Widget#g:method:setSupportMultidevice"), [setTooltipMarkup]("GI.Gtk.Objects.Widget#g:method:setTooltipMarkup"), [setTooltipText]("GI.Gtk.Objects.Widget#g:method:setTooltipText"), [setTooltipWindow]("GI.Gtk.Objects.Widget#g:method:setTooltipWindow"), [setValign]("GI.Gtk.Objects.Widget#g:method:setValign"), [setVexpand]("GI.Gtk.Objects.Widget#g:method:setVexpand"), [setVexpandSet]("GI.Gtk.Objects.Widget#g:method:setVexpandSet"), [setVisible]("GI.Gtk.Objects.Widget#g:method:setVisible"), [setVisual]("GI.Gtk.Objects.Widget#g:method:setVisual"), [setWindow]("GI.Gtk.Objects.Widget#g:method:setWindow"), [setZoomLevel]("GI.WebKit2.Objects.WebView#g:method:setZoomLevel").

#if defined(ENABLE_OVERLOADING)
    ResolveWebViewMethod                    ,
#endif

-- ** callAsyncJavascriptFunction #method:callAsyncJavascriptFunction#

#if defined(ENABLE_OVERLOADING)
    WebViewCallAsyncJavascriptFunctionMethodInfo,
#endif
    webViewCallAsyncJavascriptFunction      ,


-- ** callAsyncJavascriptFunctionFinish #method:callAsyncJavascriptFunctionFinish#

#if defined(ENABLE_OVERLOADING)
    WebViewCallAsyncJavascriptFunctionFinishMethodInfo,
#endif
    webViewCallAsyncJavascriptFunctionFinish,


-- ** canExecuteEditingCommand #method:canExecuteEditingCommand#

#if defined(ENABLE_OVERLOADING)
    WebViewCanExecuteEditingCommandMethodInfo,
#endif
    webViewCanExecuteEditingCommand         ,


-- ** canExecuteEditingCommandFinish #method:canExecuteEditingCommandFinish#

#if defined(ENABLE_OVERLOADING)
    WebViewCanExecuteEditingCommandFinishMethodInfo,
#endif
    webViewCanExecuteEditingCommandFinish   ,


-- ** canGoBack #method:canGoBack#

#if defined(ENABLE_OVERLOADING)
    WebViewCanGoBackMethodInfo              ,
#endif
    webViewCanGoBack                        ,


-- ** canGoForward #method:canGoForward#

#if defined(ENABLE_OVERLOADING)
    WebViewCanGoForwardMethodInfo           ,
#endif
    webViewCanGoForward                     ,


-- ** canShowMimeType #method:canShowMimeType#

#if defined(ENABLE_OVERLOADING)
    WebViewCanShowMimeTypeMethodInfo        ,
#endif
    webViewCanShowMimeType                  ,


-- ** downloadUri #method:downloadUri#

#if defined(ENABLE_OVERLOADING)
    WebViewDownloadUriMethodInfo            ,
#endif
    webViewDownloadUri                      ,


-- ** evaluateJavascript #method:evaluateJavascript#

#if defined(ENABLE_OVERLOADING)
    WebViewEvaluateJavascriptMethodInfo     ,
#endif
    webViewEvaluateJavascript               ,


-- ** evaluateJavascriptFinish #method:evaluateJavascriptFinish#

#if defined(ENABLE_OVERLOADING)
    WebViewEvaluateJavascriptFinishMethodInfo,
#endif
    webViewEvaluateJavascriptFinish         ,


-- ** executeEditingCommand #method:executeEditingCommand#

#if defined(ENABLE_OVERLOADING)
    WebViewExecuteEditingCommandMethodInfo  ,
#endif
    webViewExecuteEditingCommand            ,


-- ** executeEditingCommandWithArgument #method:executeEditingCommandWithArgument#

#if defined(ENABLE_OVERLOADING)
    WebViewExecuteEditingCommandWithArgumentMethodInfo,
#endif
    webViewExecuteEditingCommandWithArgument,


-- ** getAutomationPresentationType #method:getAutomationPresentationType#

#if defined(ENABLE_OVERLOADING)
    WebViewGetAutomationPresentationTypeMethodInfo,
#endif
    webViewGetAutomationPresentationType    ,


-- ** getBackForwardList #method:getBackForwardList#

#if defined(ENABLE_OVERLOADING)
    WebViewGetBackForwardListMethodInfo     ,
#endif
    webViewGetBackForwardList               ,


-- ** getBackgroundColor #method:getBackgroundColor#

#if defined(ENABLE_OVERLOADING)
    WebViewGetBackgroundColorMethodInfo     ,
#endif
    webViewGetBackgroundColor               ,


-- ** getCameraCaptureState #method:getCameraCaptureState#

#if defined(ENABLE_OVERLOADING)
    WebViewGetCameraCaptureStateMethodInfo  ,
#endif
    webViewGetCameraCaptureState            ,


-- ** getContext #method:getContext#

#if defined(ENABLE_OVERLOADING)
    WebViewGetContextMethodInfo             ,
#endif
    webViewGetContext                       ,


-- ** getCustomCharset #method:getCustomCharset#

#if defined(ENABLE_OVERLOADING)
    WebViewGetCustomCharsetMethodInfo       ,
#endif
    webViewGetCustomCharset                 ,


-- ** getDefaultContentSecurityPolicy #method:getDefaultContentSecurityPolicy#

#if defined(ENABLE_OVERLOADING)
    WebViewGetDefaultContentSecurityPolicyMethodInfo,
#endif
    webViewGetDefaultContentSecurityPolicy  ,


-- ** getDisplayCaptureState #method:getDisplayCaptureState#

#if defined(ENABLE_OVERLOADING)
    WebViewGetDisplayCaptureStateMethodInfo ,
#endif
    webViewGetDisplayCaptureState           ,


-- ** getEditorState #method:getEditorState#

#if defined(ENABLE_OVERLOADING)
    WebViewGetEditorStateMethodInfo         ,
#endif
    webViewGetEditorState                   ,


-- ** getEstimatedLoadProgress #method:getEstimatedLoadProgress#

#if defined(ENABLE_OVERLOADING)
    WebViewGetEstimatedLoadProgressMethodInfo,
#endif
    webViewGetEstimatedLoadProgress         ,


-- ** getFavicon #method:getFavicon#

#if defined(ENABLE_OVERLOADING)
    WebViewGetFaviconMethodInfo             ,
#endif
    webViewGetFavicon                       ,


-- ** getFindController #method:getFindController#

#if defined(ENABLE_OVERLOADING)
    WebViewGetFindControllerMethodInfo      ,
#endif
    webViewGetFindController                ,


-- ** getInputMethodContext #method:getInputMethodContext#

#if defined(ENABLE_OVERLOADING)
    WebViewGetInputMethodContextMethodInfo  ,
#endif
    webViewGetInputMethodContext            ,


-- ** getInspector #method:getInspector#

#if defined(ENABLE_OVERLOADING)
    WebViewGetInspectorMethodInfo           ,
#endif
    webViewGetInspector                     ,


-- ** getIsMuted #method:getIsMuted#

#if defined(ENABLE_OVERLOADING)
    WebViewGetIsMutedMethodInfo             ,
#endif
    webViewGetIsMuted                       ,


-- ** getIsWebProcessResponsive #method:getIsWebProcessResponsive#

#if defined(ENABLE_OVERLOADING)
    WebViewGetIsWebProcessResponsiveMethodInfo,
#endif
    webViewGetIsWebProcessResponsive        ,


-- ** getMainResource #method:getMainResource#

#if defined(ENABLE_OVERLOADING)
    WebViewGetMainResourceMethodInfo        ,
#endif
    webViewGetMainResource                  ,


-- ** getMicrophoneCaptureState #method:getMicrophoneCaptureState#

#if defined(ENABLE_OVERLOADING)
    WebViewGetMicrophoneCaptureStateMethodInfo,
#endif
    webViewGetMicrophoneCaptureState        ,


-- ** getPageId #method:getPageId#

#if defined(ENABLE_OVERLOADING)
    WebViewGetPageIdMethodInfo              ,
#endif
    webViewGetPageId                        ,


-- ** getSessionState #method:getSessionState#

#if defined(ENABLE_OVERLOADING)
    WebViewGetSessionStateMethodInfo        ,
#endif
    webViewGetSessionState                  ,


-- ** getSettings #method:getSettings#

#if defined(ENABLE_OVERLOADING)
    WebViewGetSettingsMethodInfo            ,
#endif
    webViewGetSettings                      ,


-- ** getSnapshot #method:getSnapshot#

#if defined(ENABLE_OVERLOADING)
    WebViewGetSnapshotMethodInfo            ,
#endif
    webViewGetSnapshot                      ,


-- ** getSnapshotFinish #method:getSnapshotFinish#

#if defined(ENABLE_OVERLOADING)
    WebViewGetSnapshotFinishMethodInfo      ,
#endif
    webViewGetSnapshotFinish                ,


-- ** getThemeColor #method:getThemeColor#

#if defined(ENABLE_OVERLOADING)
    WebViewGetThemeColorMethodInfo          ,
#endif
    webViewGetThemeColor                    ,


-- ** getTitle #method:getTitle#

#if defined(ENABLE_OVERLOADING)
    WebViewGetTitleMethodInfo               ,
#endif
    webViewGetTitle                         ,


-- ** getTlsInfo #method:getTlsInfo#

#if defined(ENABLE_OVERLOADING)
    WebViewGetTlsInfoMethodInfo             ,
#endif
    webViewGetTlsInfo                       ,


-- ** getUri #method:getUri#

#if defined(ENABLE_OVERLOADING)
    WebViewGetUriMethodInfo                 ,
#endif
    webViewGetUri                           ,


-- ** getUserContentManager #method:getUserContentManager#

#if defined(ENABLE_OVERLOADING)
    WebViewGetUserContentManagerMethodInfo  ,
#endif
    webViewGetUserContentManager            ,


-- ** getWebExtensionMode #method:getWebExtensionMode#

#if defined(ENABLE_OVERLOADING)
    WebViewGetWebExtensionModeMethodInfo    ,
#endif
    webViewGetWebExtensionMode              ,


-- ** getWebsiteDataManager #method:getWebsiteDataManager#

#if defined(ENABLE_OVERLOADING)
    WebViewGetWebsiteDataManagerMethodInfo  ,
#endif
    webViewGetWebsiteDataManager            ,


-- ** getWebsitePolicies #method:getWebsitePolicies#

#if defined(ENABLE_OVERLOADING)
    WebViewGetWebsitePoliciesMethodInfo     ,
#endif
    webViewGetWebsitePolicies               ,


-- ** getWindowProperties #method:getWindowProperties#

#if defined(ENABLE_OVERLOADING)
    WebViewGetWindowPropertiesMethodInfo    ,
#endif
    webViewGetWindowProperties              ,


-- ** getZoomLevel #method:getZoomLevel#

#if defined(ENABLE_OVERLOADING)
    WebViewGetZoomLevelMethodInfo           ,
#endif
    webViewGetZoomLevel                     ,


-- ** goBack #method:goBack#

#if defined(ENABLE_OVERLOADING)
    WebViewGoBackMethodInfo                 ,
#endif
    webViewGoBack                           ,


-- ** goForward #method:goForward#

#if defined(ENABLE_OVERLOADING)
    WebViewGoForwardMethodInfo              ,
#endif
    webViewGoForward                        ,


-- ** goToBackForwardListItem #method:goToBackForwardListItem#

#if defined(ENABLE_OVERLOADING)
    WebViewGoToBackForwardListItemMethodInfo,
#endif
    webViewGoToBackForwardListItem          ,


-- ** isControlledByAutomation #method:isControlledByAutomation#

#if defined(ENABLE_OVERLOADING)
    WebViewIsControlledByAutomationMethodInfo,
#endif
    webViewIsControlledByAutomation         ,


-- ** isEditable #method:isEditable#

#if defined(ENABLE_OVERLOADING)
    WebViewIsEditableMethodInfo             ,
#endif
    webViewIsEditable                       ,


-- ** isEphemeral #method:isEphemeral#

#if defined(ENABLE_OVERLOADING)
    WebViewIsEphemeralMethodInfo            ,
#endif
    webViewIsEphemeral                      ,


-- ** isImmersiveModeEnabled #method:isImmersiveModeEnabled#

#if defined(ENABLE_OVERLOADING)
    WebViewIsImmersiveModeEnabledMethodInfo ,
#endif
    webViewIsImmersiveModeEnabled           ,


-- ** isLoading #method:isLoading#

#if defined(ENABLE_OVERLOADING)
    WebViewIsLoadingMethodInfo              ,
#endif
    webViewIsLoading                        ,


-- ** isPlayingAudio #method:isPlayingAudio#

#if defined(ENABLE_OVERLOADING)
    WebViewIsPlayingAudioMethodInfo         ,
#endif
    webViewIsPlayingAudio                   ,


-- ** leaveImmersiveMode #method:leaveImmersiveMode#

#if defined(ENABLE_OVERLOADING)
    WebViewLeaveImmersiveModeMethodInfo     ,
#endif
    webViewLeaveImmersiveMode               ,


-- ** loadAlternateHtml #method:loadAlternateHtml#

#if defined(ENABLE_OVERLOADING)
    WebViewLoadAlternateHtmlMethodInfo      ,
#endif
    webViewLoadAlternateHtml                ,


-- ** loadBytes #method:loadBytes#

#if defined(ENABLE_OVERLOADING)
    WebViewLoadBytesMethodInfo              ,
#endif
    webViewLoadBytes                        ,


-- ** loadHtml #method:loadHtml#

#if defined(ENABLE_OVERLOADING)
    WebViewLoadHtmlMethodInfo               ,
#endif
    webViewLoadHtml                         ,


-- ** loadPlainText #method:loadPlainText#

#if defined(ENABLE_OVERLOADING)
    WebViewLoadPlainTextMethodInfo          ,
#endif
    webViewLoadPlainText                    ,


-- ** loadRequest #method:loadRequest#

#if defined(ENABLE_OVERLOADING)
    WebViewLoadRequestMethodInfo            ,
#endif
    webViewLoadRequest                      ,


-- ** loadUri #method:loadUri#

#if defined(ENABLE_OVERLOADING)
    WebViewLoadUriMethodInfo                ,
#endif
    webViewLoadUri                          ,


-- ** new #method:new#

    webViewNew                              ,


-- ** newWithContext #method:newWithContext#

    webViewNewWithContext                   ,


-- ** newWithRelatedView #method:newWithRelatedView#

    webViewNewWithRelatedView               ,


-- ** newWithSettings #method:newWithSettings#

    webViewNewWithSettings                  ,


-- ** newWithUserContentManager #method:newWithUserContentManager#

    webViewNewWithUserContentManager        ,


-- ** reload #method:reload#

#if defined(ENABLE_OVERLOADING)
    WebViewReloadMethodInfo                 ,
#endif
    webViewReload                           ,


-- ** reloadBypassCache #method:reloadBypassCache#

#if defined(ENABLE_OVERLOADING)
    WebViewReloadBypassCacheMethodInfo      ,
#endif
    webViewReloadBypassCache                ,


-- ** restoreSessionState #method:restoreSessionState#

#if defined(ENABLE_OVERLOADING)
    WebViewRestoreSessionStateMethodInfo    ,
#endif
    webViewRestoreSessionState              ,


-- ** runAsyncJavascriptFunctionInWorld #method:runAsyncJavascriptFunctionInWorld#

#if defined(ENABLE_OVERLOADING)
    WebViewRunAsyncJavascriptFunctionInWorldMethodInfo,
#endif
    webViewRunAsyncJavascriptFunctionInWorld,


-- ** runJavascript #method:runJavascript#

#if defined(ENABLE_OVERLOADING)
    WebViewRunJavascriptMethodInfo          ,
#endif
    webViewRunJavascript                    ,


-- ** runJavascriptFinish #method:runJavascriptFinish#

#if defined(ENABLE_OVERLOADING)
    WebViewRunJavascriptFinishMethodInfo    ,
#endif
    webViewRunJavascriptFinish              ,


-- ** runJavascriptFromGresource #method:runJavascriptFromGresource#

#if defined(ENABLE_OVERLOADING)
    WebViewRunJavascriptFromGresourceMethodInfo,
#endif
    webViewRunJavascriptFromGresource       ,


-- ** runJavascriptFromGresourceFinish #method:runJavascriptFromGresourceFinish#

#if defined(ENABLE_OVERLOADING)
    WebViewRunJavascriptFromGresourceFinishMethodInfo,
#endif
    webViewRunJavascriptFromGresourceFinish ,


-- ** runJavascriptInWorld #method:runJavascriptInWorld#

#if defined(ENABLE_OVERLOADING)
    WebViewRunJavascriptInWorldMethodInfo   ,
#endif
    webViewRunJavascriptInWorld             ,


-- ** runJavascriptInWorldFinish #method:runJavascriptInWorldFinish#

#if defined(ENABLE_OVERLOADING)
    WebViewRunJavascriptInWorldFinishMethodInfo,
#endif
    webViewRunJavascriptInWorldFinish       ,


-- ** save #method:save#

#if defined(ENABLE_OVERLOADING)
    WebViewSaveMethodInfo                   ,
#endif
    webViewSave                             ,


-- ** saveFinish #method:saveFinish#

#if defined(ENABLE_OVERLOADING)
    WebViewSaveFinishMethodInfo             ,
#endif
    webViewSaveFinish                       ,


-- ** saveToFile #method:saveToFile#

#if defined(ENABLE_OVERLOADING)
    WebViewSaveToFileMethodInfo             ,
#endif
    webViewSaveToFile                       ,


-- ** saveToFileFinish #method:saveToFileFinish#

#if defined(ENABLE_OVERLOADING)
    WebViewSaveToFileFinishMethodInfo       ,
#endif
    webViewSaveToFileFinish                 ,


-- ** sendMessageToPage #method:sendMessageToPage#

#if defined(ENABLE_OVERLOADING)
    WebViewSendMessageToPageMethodInfo      ,
#endif
    webViewSendMessageToPage                ,


-- ** sendMessageToPageFinish #method:sendMessageToPageFinish#

#if defined(ENABLE_OVERLOADING)
    WebViewSendMessageToPageFinishMethodInfo,
#endif
    webViewSendMessageToPageFinish          ,


-- ** setBackgroundColor #method:setBackgroundColor#

#if defined(ENABLE_OVERLOADING)
    WebViewSetBackgroundColorMethodInfo     ,
#endif
    webViewSetBackgroundColor               ,


-- ** setCameraCaptureState #method:setCameraCaptureState#

#if defined(ENABLE_OVERLOADING)
    WebViewSetCameraCaptureStateMethodInfo  ,
#endif
    webViewSetCameraCaptureState            ,


-- ** setCorsAllowlist #method:setCorsAllowlist#

#if defined(ENABLE_OVERLOADING)
    WebViewSetCorsAllowlistMethodInfo       ,
#endif
    webViewSetCorsAllowlist                 ,


-- ** setCustomCharset #method:setCustomCharset#

#if defined(ENABLE_OVERLOADING)
    WebViewSetCustomCharsetMethodInfo       ,
#endif
    webViewSetCustomCharset                 ,


-- ** setDisplayCaptureState #method:setDisplayCaptureState#

#if defined(ENABLE_OVERLOADING)
    WebViewSetDisplayCaptureStateMethodInfo ,
#endif
    webViewSetDisplayCaptureState           ,


-- ** setEditable #method:setEditable#

#if defined(ENABLE_OVERLOADING)
    WebViewSetEditableMethodInfo            ,
#endif
    webViewSetEditable                      ,


-- ** setInputMethodContext #method:setInputMethodContext#

#if defined(ENABLE_OVERLOADING)
    WebViewSetInputMethodContextMethodInfo  ,
#endif
    webViewSetInputMethodContext            ,


-- ** setIsMuted #method:setIsMuted#

#if defined(ENABLE_OVERLOADING)
    WebViewSetIsMutedMethodInfo             ,
#endif
    webViewSetIsMuted                       ,


-- ** setMicrophoneCaptureState #method:setMicrophoneCaptureState#

#if defined(ENABLE_OVERLOADING)
    WebViewSetMicrophoneCaptureStateMethodInfo,
#endif
    webViewSetMicrophoneCaptureState        ,


-- ** setSettings #method:setSettings#

#if defined(ENABLE_OVERLOADING)
    WebViewSetSettingsMethodInfo            ,
#endif
    webViewSetSettings                      ,


-- ** setZoomLevel #method:setZoomLevel#

#if defined(ENABLE_OVERLOADING)
    WebViewSetZoomLevelMethodInfo           ,
#endif
    webViewSetZoomLevel                     ,


-- ** stopLoading #method:stopLoading#

#if defined(ENABLE_OVERLOADING)
    WebViewStopLoadingMethodInfo            ,
#endif
    webViewStopLoading                      ,


-- ** terminateWebProcess #method:terminateWebProcess#

#if defined(ENABLE_OVERLOADING)
    WebViewTerminateWebProcessMethodInfo    ,
#endif
    webViewTerminateWebProcess              ,


-- ** tryClose #method:tryClose#

#if defined(ENABLE_OVERLOADING)
    WebViewTryCloseMethodInfo               ,
#endif
    webViewTryClose                         ,




 -- * Properties


-- ** automationPresentationType #attr:automationPresentationType#
-- | The t'GI.WebKit2.Enums.AutomationBrowsingContextPresentation' of t'GI.WebKit2.Objects.WebView.WebView'. This should only be used when
-- creating a new t'GI.WebKit2.Objects.WebView.WebView' as a response to [AutomationSession::createWebView]("GI.WebKit2.Objects.AutomationSession#g:signal:createWebView")
-- signal request. If the new WebView was added to a new tab of current browsing context window
-- 'GI.WebKit2.Enums.AutomationBrowsingContextPresentationTab' should be used.
-- 
-- /Since: 2.28/

#if defined(ENABLE_OVERLOADING)
    WebViewAutomationPresentationTypePropertyInfo,
#endif
    constructWebViewAutomationPresentationType,
    getWebViewAutomationPresentationType    ,
#if defined(ENABLE_OVERLOADING)
    webViewAutomationPresentationType       ,
#endif


-- ** cameraCaptureState #attr:cameraCaptureState#
-- | Capture state of the camera device. Whenever the user grants a media-request sent by the web
-- page, requesting video capture capabilities (@navigator.mediaDevices.getUserMedia({video:
-- true})@) this property will be set to 'GI.WebKit2.Enums.MediaCaptureStateActive'.
-- 
-- The application can monitor this property and provide a visual indicator allowing to optionally
-- deactivate or mute the capture device by setting this property respectively to
-- 'GI.WebKit2.Enums.MediaCaptureStateNone' or 'GI.WebKit2.Enums.MediaCaptureStateMuted'.
-- 
-- If the capture state of the device is set to 'GI.WebKit2.Enums.MediaCaptureStateNone' the web-page
-- can still re-request the permission to the user. Permission desision caching is left to the
-- application.
-- 
-- /Since: 2.34/

#if defined(ENABLE_OVERLOADING)
    WebViewCameraCaptureStatePropertyInfo   ,
#endif
    constructWebViewCameraCaptureState      ,
    getWebViewCameraCaptureState            ,
    setWebViewCameraCaptureState            ,
#if defined(ENABLE_OVERLOADING)
    webViewCameraCaptureState               ,
#endif


-- ** defaultContentSecurityPolicy #attr:defaultContentSecurityPolicy#
-- | The default Content-Security-Policy used by the webview as if it were set
-- by an HTTP header.
-- 
-- This applies to all content loaded including through navigation or via the various
-- webkit_web_view_load_\\* APIs. However do note that many WebKit APIs bypass
-- Content-Security-Policy in general such as t'GI.WebKit2.Objects.UserContentManager.UserContentManager' and
-- 'GI.WebKit2.Objects.WebView.webViewRunJavascript'.
-- 
-- Policies are additive so if a website sets its own policy it still applies
-- on top of the policy set here.
-- 
-- /Since: 2.38/

#if defined(ENABLE_OVERLOADING)
    WebViewDefaultContentSecurityPolicyPropertyInfo,
#endif
    constructWebViewDefaultContentSecurityPolicy,
    getWebViewDefaultContentSecurityPolicy  ,
#if defined(ENABLE_OVERLOADING)
    webViewDefaultContentSecurityPolicy     ,
#endif


-- ** displayCaptureState #attr:displayCaptureState#
-- | Capture state of the display device. Whenever the user grants a media-request sent by the web
-- page, requesting screencasting capabilities (\`navigator.mediaDevices.@/getDisplayMedia()/@ this
-- property will be set to 'GI.WebKit2.Enums.MediaCaptureStateActive'.
-- 
-- The application can monitor this property and provide a visual indicator allowing to
-- optionally deactivate or mute the capture device by setting this property respectively to
-- 'GI.WebKit2.Enums.MediaCaptureStateNone' or 'GI.WebKit2.Enums.MediaCaptureStateMuted'.
-- 
-- If the capture state of the device is set to 'GI.WebKit2.Enums.MediaCaptureStateNone' the web-page
-- can still re-request the permission to the user. Permission desision caching is left to the
-- application.
-- 
-- /Since: 2.34/

#if defined(ENABLE_OVERLOADING)
    WebViewDisplayCaptureStatePropertyInfo  ,
#endif
    constructWebViewDisplayCaptureState     ,
    getWebViewDisplayCaptureState           ,
    setWebViewDisplayCaptureState           ,
#if defined(ENABLE_OVERLOADING)
    webViewDisplayCaptureState              ,
#endif


-- ** editable #attr:editable#
-- | Whether the pages loaded inside t'GI.WebKit2.Objects.WebView.WebView' are editable. For more
-- information see 'GI.WebKit2.Objects.WebView.webViewSetEditable'.
-- 
-- /Since: 2.8/

#if defined(ENABLE_OVERLOADING)
    WebViewEditablePropertyInfo             ,
#endif
    constructWebViewEditable                ,
    getWebViewEditable                      ,
    setWebViewEditable                      ,
#if defined(ENABLE_OVERLOADING)
    webViewEditable                         ,
#endif


-- ** estimatedLoadProgress #attr:estimatedLoadProgress#
-- | An estimate of the percent completion for the current loading operation.
-- This value will range from 0.0 to 1.0 and, once a load completes,
-- will remain at 1.0 until a new load starts, at which point it
-- will be reset to 0.0.
-- The value is an estimate based on the total number of bytes expected
-- to be received for a document, including all its possible subresources
-- and child documents.

#if defined(ENABLE_OVERLOADING)
    WebViewEstimatedLoadProgressPropertyInfo,
#endif
    getWebViewEstimatedLoadProgress         ,
#if defined(ENABLE_OVERLOADING)
    webViewEstimatedLoadProgress            ,
#endif


-- ** favicon #attr:favicon#
-- | The favicon currently associated to the t'GI.WebKit2.Objects.WebView.WebView'.
-- See 'GI.WebKit2.Objects.WebView.webViewGetFavicon' for more details.

#if defined(ENABLE_OVERLOADING)
    WebViewFaviconPropertyInfo              ,
#endif
    getWebViewFavicon                       ,
#if defined(ENABLE_OVERLOADING)
    webViewFavicon                          ,
#endif


-- ** isControlledByAutomation #attr:isControlledByAutomation#
-- | Whether the t'GI.WebKit2.Objects.WebView.WebView' is controlled by automation tools (e.g. WebDriver, Selenium). This is
-- required for views returned as a response to [AutomationSession::createWebView]("GI.WebKit2.Objects.AutomationSession#g:signal:createWebView") signal,
-- alongside any view you want to control during an automation session.
-- 
-- As a 'GI.GObject.Flags.ParamFlagsConstructOnly', you need to set it during construction and it can\'t be modified.
-- 
-- If [WebView:relatedView]("GI.WebKit2.Objects.WebView#g:attr:relatedView") is also passed during construction, [WebView:isControlledByAutomation]("GI.WebKit2.Objects.WebView#g:attr:isControlledByAutomation")
-- ignores its own parameter and inherits directly from the related view [WebView:isControlledByAutomation]("GI.WebKit2.Objects.WebView#g:attr:isControlledByAutomation")
-- property. This is the recommended way when creating new views as a response to the [WebView::create]("GI.WebKit2.Objects.WebView#g:signal:create")
-- signal. For example, as response to JavaScript @window.open()@ calls during an automation session.
-- 
-- /Since: 2.18/

#if defined(ENABLE_OVERLOADING)
    WebViewIsControlledByAutomationPropertyInfo,
#endif
    constructWebViewIsControlledByAutomation,
    getWebViewIsControlledByAutomation      ,


-- ** isEphemeral #attr:isEphemeral#
-- | Whether the t'GI.WebKit2.Objects.WebView.WebView' is ephemeral. An ephemeral web view never writes
-- website data to the client storage, no matter what t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'
-- its context is using. This is normally used to implement private browsing mode.
-- This is a 'GI.GObject.Flags.ParamFlagsConstructOnly' property, so you have to create an ephemeral
-- t'GI.WebKit2.Objects.WebView.WebView' and it can\'t be changed. The ephemeral t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'
-- created for the t'GI.WebKit2.Objects.WebView.WebView' will inherit the network settings from the
-- t'GI.WebKit2.Objects.WebContext.WebContext'\'s t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'. To use different settings
-- you can get the t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager' with 'GI.WebKit2.Objects.WebView.webViewGetWebsiteDataManager'
-- and set the new ones.
-- Note that all t'GI.WebKit2.Objects.WebView.WebView's created with an ephemeral t'GI.WebKit2.Objects.WebContext.WebContext'
-- will be ephemeral automatically.
-- See also 'GI.WebKit2.Objects.WebContext.webContextNewEphemeral'.
-- 
-- /Since: 2.16/

#if defined(ENABLE_OVERLOADING)
    WebViewIsEphemeralPropertyInfo          ,
#endif
    constructWebViewIsEphemeral             ,
    getWebViewIsEphemeral                   ,


-- ** isImmersiveModeEnabled #attr:isImmersiveModeEnabled#
-- | Whether the t'GI.WebKit2.Objects.WebView.WebView' is in immersive mode.
-- 
-- /Since: 2.52/

#if defined(ENABLE_OVERLOADING)
    WebViewIsImmersiveModeEnabledPropertyInfo,
#endif
    getWebViewIsImmersiveModeEnabled        ,


-- ** isLoading #attr:isLoading#
-- | Whether the t'GI.WebKit2.Objects.WebView.WebView' is currently loading a page. This property becomes
-- 'P.True' as soon as a new load operation is requested and before the
-- [WebView::loadChanged]("GI.WebKit2.Objects.WebView#g:signal:loadChanged") signal is emitted with 'GI.WebKit2.Enums.LoadEventStarted' and
-- at that point the active URI is the requested one.
-- When the load operation finishes the property is set to 'P.False' before
-- [WebView::loadChanged]("GI.WebKit2.Objects.WebView#g:signal:loadChanged") is emitted with 'GI.WebKit2.Enums.LoadEventFinished'.

#if defined(ENABLE_OVERLOADING)
    WebViewIsLoadingPropertyInfo            ,
#endif
    getWebViewIsLoading                     ,


-- ** isMuted #attr:isMuted#
-- | Whether the t'GI.WebKit2.Objects.WebView.WebView' audio is muted. When 'P.True', audio is silenced.
-- It may still be playing, i.e. [WebView:isPlayingAudio]("GI.WebKit2.Objects.WebView#g:attr:isPlayingAudio") may be 'P.True'.
-- 
-- /Since: 2.30/

#if defined(ENABLE_OVERLOADING)
    WebViewIsMutedPropertyInfo              ,
#endif
    constructWebViewIsMuted                 ,
    getWebViewIsMuted                       ,
    setWebViewIsMuted                       ,
#if defined(ENABLE_OVERLOADING)
    webViewIsMuted                          ,
#endif


-- ** isPlayingAudio #attr:isPlayingAudio#
-- | Whether the t'GI.WebKit2.Objects.WebView.WebView' is currently playing audio from a page.
-- This property becomes 'P.True' as soon as web content starts playing any
-- kind of audio. When a page is no longer playing any kind of sound,
-- the property is set back to 'P.False'.
-- 
-- /Since: 2.8/

#if defined(ENABLE_OVERLOADING)
    WebViewIsPlayingAudioPropertyInfo       ,
#endif
    getWebViewIsPlayingAudio                ,


-- ** isWebProcessResponsive #attr:isWebProcessResponsive#
-- | Whether the web process currently associated to the t'GI.WebKit2.Objects.WebView.WebView' is responsive.
-- 
-- /Since: 2.34/

#if defined(ENABLE_OVERLOADING)
    WebViewIsWebProcessResponsivePropertyInfo,
#endif
    getWebViewIsWebProcessResponsive        ,
#if defined(ENABLE_OVERLOADING)
    webViewIsWebProcessResponsive           ,
#endif


-- ** microphoneCaptureState #attr:microphoneCaptureState#
-- | Capture state of the microphone device. Whenever the user grants a media-request sent by the web
-- page, requesting audio capture capabilities (@navigator.mediaDevices.getUserMedia({audio:
-- true})@) this property will be set to 'GI.WebKit2.Enums.MediaCaptureStateActive'.
-- 
-- The application can monitor this property and provide a visual indicator allowing to
-- optionally deactivate or mute the capture device by setting this property respectively to
-- 'GI.WebKit2.Enums.MediaCaptureStateNone' or 'GI.WebKit2.Enums.MediaCaptureStateMuted'.
-- 
-- If the capture state of the device is set to 'GI.WebKit2.Enums.MediaCaptureStateNone' the web-page
-- can still re-request the permission to the user. Permission desision caching is left to the
-- application.
-- 
-- /Since: 2.34/

#if defined(ENABLE_OVERLOADING)
    WebViewMicrophoneCaptureStatePropertyInfo,
#endif
    constructWebViewMicrophoneCaptureState  ,
    getWebViewMicrophoneCaptureState        ,
    setWebViewMicrophoneCaptureState        ,
#if defined(ENABLE_OVERLOADING)
    webViewMicrophoneCaptureState           ,
#endif


-- ** pageId #attr:pageId#
-- | The identifier of the @/WebKitWebPage/@ corresponding to the t'GI.WebKit2.Objects.WebView.WebView'.
-- 
-- /Since: 2.28/

#if defined(ENABLE_OVERLOADING)
    WebViewPageIdPropertyInfo               ,
#endif
    getWebViewPageId                        ,
#if defined(ENABLE_OVERLOADING)
    webViewPageId                           ,
#endif


-- ** relatedView #attr:relatedView#
-- | The related t'GI.WebKit2.Objects.WebView.WebView' used when creating the view to share the
-- same web process and network session. This property is not readable
-- because the related web view is only valid during the object construction.
-- 
-- /Since: 2.4/

#if defined(ENABLE_OVERLOADING)
    WebViewRelatedViewPropertyInfo          ,
#endif
    constructWebViewRelatedView             ,
#if defined(ENABLE_OVERLOADING)
    webViewRelatedView                      ,
#endif


-- ** settings #attr:settings#
-- | The t'GI.WebKit2.Objects.Settings.Settings' of the view.
-- 
-- /Since: 2.6/

#if defined(ENABLE_OVERLOADING)
    WebViewSettingsPropertyInfo             ,
#endif
    constructWebViewSettings                ,
    setWebViewSettings                      ,
#if defined(ENABLE_OVERLOADING)
    webViewSettings                         ,
#endif


-- ** themeColor #attr:themeColor#
-- | The theme color of the WebView\'s current page.
-- 
-- /Since: 2.50/

#if defined(ENABLE_OVERLOADING)
    WebViewThemeColorPropertyInfo           ,
#endif
    getWebViewThemeColor                    ,
#if defined(ENABLE_OVERLOADING)
    webViewThemeColor                       ,
#endif


-- ** title #attr:title#
-- | The main frame document title of this t'GI.WebKit2.Objects.WebView.WebView'. If
-- the title has not been received yet, it will be 'P.Nothing'.

#if defined(ENABLE_OVERLOADING)
    WebViewTitlePropertyInfo                ,
#endif
    getWebViewTitle                         ,
#if defined(ENABLE_OVERLOADING)
    webViewTitle                            ,
#endif


-- ** uri #attr:uri#
-- | The current active URI of the t'GI.WebKit2.Objects.WebView.WebView'.
-- See 'GI.WebKit2.Objects.WebView.webViewGetUri' for more details.

#if defined(ENABLE_OVERLOADING)
    WebViewUriPropertyInfo                  ,
#endif
    getWebViewUri                           ,
#if defined(ENABLE_OVERLOADING)
    webViewUri                              ,
#endif


-- ** userContentManager #attr:userContentManager#
-- | The t'GI.WebKit2.Objects.UserContentManager.UserContentManager' of the view.
-- 
-- /Since: 2.6/

#if defined(ENABLE_OVERLOADING)
    WebViewUserContentManagerPropertyInfo   ,
#endif
    constructWebViewUserContentManager      ,
    getWebViewUserContentManager            ,
#if defined(ENABLE_OVERLOADING)
    webViewUserContentManager               ,
#endif


-- ** webContext #attr:webContext#
-- | The t'GI.WebKit2.Objects.WebContext.WebContext' of the view.

#if defined(ENABLE_OVERLOADING)
    WebViewWebContextPropertyInfo           ,
#endif
    constructWebViewWebContext              ,
    getWebViewWebContext                    ,
#if defined(ENABLE_OVERLOADING)
    webViewWebContext                       ,
#endif


-- ** webExtensionMode #attr:webExtensionMode#
-- | This configures /@webView@/ to treat the content as a WebExtension.
-- 
-- Note that this refers to the web standard <https://developer.mozilla.org/en-US/docs/Mozilla/Add-ons/WebExtensions WebExtensions>
-- and not WebKitWebExtensions.
-- 
-- In practice this limits the Content-Security-Policies that are allowed to be set. Some details can be found in
-- <https://developer.chrome.com/docs/extensions/mv3/intro/mv3-migration/#content-security-policy Chrome's documentation>.
-- 
-- /Since: 2.38/

#if defined(ENABLE_OVERLOADING)
    WebViewWebExtensionModePropertyInfo     ,
#endif
    constructWebViewWebExtensionMode        ,
    getWebViewWebExtensionMode              ,
#if defined(ENABLE_OVERLOADING)
    webViewWebExtensionMode                 ,
#endif


-- ** websitePolicies #attr:websitePolicies#
-- | The t'GI.WebKit2.Objects.WebsitePolicies.WebsitePolicies' for the view.
-- 
-- /Since: 2.30/

#if defined(ENABLE_OVERLOADING)
    WebViewWebsitePoliciesPropertyInfo      ,
#endif
    constructWebViewWebsitePolicies         ,
    getWebViewWebsitePolicies               ,
#if defined(ENABLE_OVERLOADING)
    webViewWebsitePolicies                  ,
#endif


-- ** zoomLevel #attr:zoomLevel#
-- | The zoom level of the t'GI.WebKit2.Objects.WebView.WebView' content.
-- See 'GI.WebKit2.Objects.WebView.webViewSetZoomLevel' for more details.

#if defined(ENABLE_OVERLOADING)
    WebViewZoomLevelPropertyInfo            ,
#endif
    constructWebViewZoomLevel               ,
    getWebViewZoomLevel                     ,
    setWebViewZoomLevel                     ,
#if defined(ENABLE_OVERLOADING)
    webViewZoomLevel                        ,
#endif




 -- * Signals


-- ** authenticate #signal:authenticate#

    WebViewAuthenticateCallback             ,
#if defined(ENABLE_OVERLOADING)
    WebViewAuthenticateSignalInfo           ,
#endif
    afterWebViewAuthenticate                ,
    onWebViewAuthenticate                   ,


-- ** close #signal:close#

    WebViewCloseCallback                    ,
#if defined(ENABLE_OVERLOADING)
    WebViewCloseSignalInfo                  ,
#endif
    afterWebViewClose                       ,
    onWebViewClose                          ,


-- ** contextMenu #signal:contextMenu#

    WebViewContextMenuCallback              ,
#if defined(ENABLE_OVERLOADING)
    WebViewContextMenuSignalInfo            ,
#endif
    afterWebViewContextMenu                 ,
    onWebViewContextMenu                    ,


-- ** contextMenuDismissed #signal:contextMenuDismissed#

    WebViewContextMenuDismissedCallback     ,
#if defined(ENABLE_OVERLOADING)
    WebViewContextMenuDismissedSignalInfo   ,
#endif
    afterWebViewContextMenuDismissed        ,
    onWebViewContextMenuDismissed           ,


-- ** create #signal:create#

    WebViewCreateCallback                   ,
#if defined(ENABLE_OVERLOADING)
    WebViewCreateSignalInfo                 ,
#endif
    afterWebViewCreate                      ,
    onWebViewCreate                         ,


-- ** decidePolicy #signal:decidePolicy#

    WebViewDecidePolicyCallback             ,
#if defined(ENABLE_OVERLOADING)
    WebViewDecidePolicySignalInfo           ,
#endif
    afterWebViewDecidePolicy                ,
    onWebViewDecidePolicy                   ,


-- ** enterFullscreen #signal:enterFullscreen#

    WebViewEnterFullscreenCallback          ,
#if defined(ENABLE_OVERLOADING)
    WebViewEnterFullscreenSignalInfo        ,
#endif
    afterWebViewEnterFullscreen             ,
    onWebViewEnterFullscreen                ,


-- ** insecureContentDetected #signal:insecureContentDetected#

    WebViewInsecureContentDetectedCallback  ,
#if defined(ENABLE_OVERLOADING)
    WebViewInsecureContentDetectedSignalInfo,
#endif
    afterWebViewInsecureContentDetected     ,
    onWebViewInsecureContentDetected        ,


-- ** leaveFullscreen #signal:leaveFullscreen#

    WebViewLeaveFullscreenCallback          ,
#if defined(ENABLE_OVERLOADING)
    WebViewLeaveFullscreenSignalInfo        ,
#endif
    afterWebViewLeaveFullscreen             ,
    onWebViewLeaveFullscreen                ,


-- ** loadChanged #signal:loadChanged#

    WebViewLoadChangedCallback              ,
#if defined(ENABLE_OVERLOADING)
    WebViewLoadChangedSignalInfo            ,
#endif
    afterWebViewLoadChanged                 ,
    onWebViewLoadChanged                    ,


-- ** loadFailed #signal:loadFailed#

    WebViewLoadFailedCallback               ,
#if defined(ENABLE_OVERLOADING)
    WebViewLoadFailedSignalInfo             ,
#endif
    afterWebViewLoadFailed                  ,
    onWebViewLoadFailed                     ,


-- ** loadFailedWithTlsErrors #signal:loadFailedWithTlsErrors#

    WebViewLoadFailedWithTlsErrorsCallback  ,
#if defined(ENABLE_OVERLOADING)
    WebViewLoadFailedWithTlsErrorsSignalInfo,
#endif
    afterWebViewLoadFailedWithTlsErrors     ,
    onWebViewLoadFailedWithTlsErrors        ,


-- ** mouseTargetChanged #signal:mouseTargetChanged#

    WebViewMouseTargetChangedCallback       ,
#if defined(ENABLE_OVERLOADING)
    WebViewMouseTargetChangedSignalInfo     ,
#endif
    afterWebViewMouseTargetChanged          ,
    onWebViewMouseTargetChanged             ,


-- ** permissionRequest #signal:permissionRequest#

    WebViewPermissionRequestCallback        ,
#if defined(ENABLE_OVERLOADING)
    WebViewPermissionRequestSignalInfo      ,
#endif
    afterWebViewPermissionRequest           ,
    onWebViewPermissionRequest              ,


-- ** print #signal:print#

    WebViewPrintCallback                    ,
#if defined(ENABLE_OVERLOADING)
    WebViewPrintSignalInfo                  ,
#endif
    afterWebViewPrint                       ,
    onWebViewPrint                          ,


-- ** queryPermissionState #signal:queryPermissionState#

    WebViewQueryPermissionStateCallback     ,
#if defined(ENABLE_OVERLOADING)
    WebViewQueryPermissionStateSignalInfo   ,
#endif
    afterWebViewQueryPermissionState        ,
    onWebViewQueryPermissionState           ,


-- ** readyToShow #signal:readyToShow#

    WebViewReadyToShowCallback              ,
#if defined(ENABLE_OVERLOADING)
    WebViewReadyToShowSignalInfo            ,
#endif
    afterWebViewReadyToShow                 ,
    onWebViewReadyToShow                    ,


-- ** resourceLoadStarted #signal:resourceLoadStarted#

    WebViewResourceLoadStartedCallback      ,
#if defined(ENABLE_OVERLOADING)
    WebViewResourceLoadStartedSignalInfo    ,
#endif
    afterWebViewResourceLoadStarted         ,
    onWebViewResourceLoadStarted            ,


-- ** runAsModal #signal:runAsModal#

    WebViewRunAsModalCallback               ,
#if defined(ENABLE_OVERLOADING)
    WebViewRunAsModalSignalInfo             ,
#endif
    afterWebViewRunAsModal                  ,
    onWebViewRunAsModal                     ,


-- ** runColorChooser #signal:runColorChooser#

    WebViewRunColorChooserCallback          ,
#if defined(ENABLE_OVERLOADING)
    WebViewRunColorChooserSignalInfo        ,
#endif
    afterWebViewRunColorChooser             ,
    onWebViewRunColorChooser                ,


-- ** runFileChooser #signal:runFileChooser#

    WebViewRunFileChooserCallback           ,
#if defined(ENABLE_OVERLOADING)
    WebViewRunFileChooserSignalInfo         ,
#endif
    afterWebViewRunFileChooser              ,
    onWebViewRunFileChooser                 ,


-- ** scriptDialog #signal:scriptDialog#

    WebViewScriptDialogCallback             ,
#if defined(ENABLE_OVERLOADING)
    WebViewScriptDialogSignalInfo           ,
#endif
    afterWebViewScriptDialog                ,
    onWebViewScriptDialog                   ,


-- ** showNotification #signal:showNotification#

    WebViewShowNotificationCallback         ,
#if defined(ENABLE_OVERLOADING)
    WebViewShowNotificationSignalInfo       ,
#endif
    afterWebViewShowNotification            ,
    onWebViewShowNotification               ,


-- ** showOptionMenu #signal:showOptionMenu#

    WebViewShowOptionMenuCallback           ,
#if defined(ENABLE_OVERLOADING)
    WebViewShowOptionMenuSignalInfo         ,
#endif
    afterWebViewShowOptionMenu              ,
    onWebViewShowOptionMenu                 ,


-- ** submitForm #signal:submitForm#

    WebViewSubmitFormCallback               ,
#if defined(ENABLE_OVERLOADING)
    WebViewSubmitFormSignalInfo             ,
#endif
    afterWebViewSubmitForm                  ,
    onWebViewSubmitForm                     ,


-- ** userMessageReceived #signal:userMessageReceived#

    WebViewUserMessageReceivedCallback      ,
#if defined(ENABLE_OVERLOADING)
    WebViewUserMessageReceivedSignalInfo    ,
#endif
    afterWebViewUserMessageReceived         ,
    onWebViewUserMessageReceived            ,


-- ** webProcessCrashed #signal:webProcessCrashed#

    WebViewWebProcessCrashedCallback        ,
#if defined(ENABLE_OVERLOADING)
    WebViewWebProcessCrashedSignalInfo      ,
#endif
    afterWebViewWebProcessCrashed           ,
    onWebViewWebProcessCrashed              ,


-- ** webProcessTerminated #signal:webProcessTerminated#

    WebViewWebProcessTerminatedCallback     ,
#if defined(ENABLE_OVERLOADING)
    WebViewWebProcessTerminatedSignalInfo   ,
#endif
    afterWebViewWebProcessTerminated        ,
    onWebViewWebProcessTerminated           ,




    ) where

import Data.GI.Base.ShortPrelude
import qualified Data.GI.Base.ShortPrelude as SP
import qualified Data.GI.Base.Overloading as O
import qualified Prelude as P

import qualified Data.GI.Base.Attributes as GI.Attributes
import qualified Data.GI.Base.BasicTypes as B.Types
import qualified Data.GI.Base.ManagedPtr as B.ManagedPtr
import qualified Data.GI.Base.GArray as B.GArray
import qualified Data.GI.Base.GClosure as B.GClosure
import qualified Data.GI.Base.GError as B.GError
import qualified Data.GI.Base.GHashTable as B.GHT
import qualified Data.GI.Base.GVariant as B.GVariant
import qualified Data.GI.Base.GValue as B.GValue
import qualified Data.GI.Base.GParamSpec as B.GParamSpec
import qualified Data.GI.Base.CallStack as B.CallStack
import qualified Data.GI.Base.Properties as B.Properties
import qualified Data.GI.Base.Signals as B.Signals
import qualified Control.Monad.IO.Class as MIO
import qualified Data.Coerce as Coerce
import qualified Data.Text as T
import qualified Data.Kind as DK
import qualified Data.ByteString.Char8 as B
import qualified Data.Map as Map
import qualified Foreign.Ptr as FP
import qualified GHC.OverloadedLabels as OL
import qualified GHC.Records as R
import qualified Data.Word as DW
import qualified Data.Int as DI
import qualified System.Posix.Types as SPT
import qualified Foreign.C.Types as FCT

-- Workaround for https://gitlab.haskell.org/ghc/ghc/-/issues/23392
#if MIN_VERSION_base(4,18,0)
import qualified GI.Atk.Interfaces.ImplementorIface as Atk.ImplementorIface
import qualified GI.Cairo.Structs.Surface as Cairo.Surface
import qualified GI.GLib.Callbacks as GLib.Callbacks
import qualified GI.GLib.Structs.Bytes as GLib.Bytes
import qualified GI.GLib.Structs.DateTime as GLib.DateTime
import qualified GI.GLib.Structs.KeyFile as GLib.KeyFile
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.Gdk.Structs.EventKey as Gdk.EventKey
import qualified GI.Gdk.Structs.RGBA as Gdk.RGBA
import qualified GI.Gdk.Structs.Rectangle as Gdk.Rectangle
import qualified GI.Gdk.Unions.Event as Gdk.Event
import qualified GI.Gio.Callbacks as Gio.Callbacks
import qualified GI.Gio.Flags as Gio.Flags
import qualified GI.Gio.Interfaces.Action as Gio.Action
import qualified GI.Gio.Interfaces.AsyncResult as Gio.AsyncResult
import qualified GI.Gio.Interfaces.File as Gio.File
import qualified GI.Gio.Objects.Cancellable as Gio.Cancellable
import qualified GI.Gio.Objects.InputStream as Gio.InputStream
import qualified GI.Gio.Objects.TlsCertificate as Gio.TlsCertificate
import qualified GI.Gio.Objects.UnixFDList as Gio.UnixFDList
import qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import qualified GI.Gtk.Objects.Action as Gtk.Action
import qualified GI.Gtk.Objects.Container as Gtk.Container
import qualified GI.Gtk.Objects.FileFilter as Gtk.FileFilter
import qualified GI.Gtk.Objects.PageSetup as Gtk.PageSetup
import qualified GI.Gtk.Objects.PrintSettings as Gtk.PrintSettings
import qualified GI.Gtk.Objects.Widget as Gtk.Widget
import qualified GI.Gtk.Objects.Window as Gtk.Window
import qualified GI.JavaScriptCore.Objects.Value as JavaScriptCore.Value
import qualified GI.Soup.Structs.Cookie as Soup.Cookie
import qualified GI.Soup.Structs.MessageHeaders as Soup.MessageHeaders
import qualified GI.WebKit2.Callbacks as WebKit2.Callbacks
import {-# SOURCE #-} qualified GI.WebKit2.Enums as WebKit2.Enums
import {-# SOURCE #-} qualified GI.WebKit2.Flags as WebKit2.Flags
import {-# SOURCE #-} qualified GI.WebKit2.Interfaces.PermissionRequest as WebKit2.PermissionRequest
import {-# SOURCE #-} qualified GI.WebKit2.Objects.AuthenticationRequest as WebKit2.AuthenticationRequest
import {-# SOURCE #-} qualified GI.WebKit2.Objects.AutomationSession as WebKit2.AutomationSession
import {-# SOURCE #-} qualified GI.WebKit2.Objects.BackForwardList as WebKit2.BackForwardList
import {-# SOURCE #-} qualified GI.WebKit2.Objects.BackForwardListItem as WebKit2.BackForwardListItem
import {-# SOURCE #-} qualified GI.WebKit2.Objects.ColorChooserRequest as WebKit2.ColorChooserRequest
import {-# SOURCE #-} qualified GI.WebKit2.Objects.ContextMenu as WebKit2.ContextMenu
import {-# SOURCE #-} qualified GI.WebKit2.Objects.ContextMenuItem as WebKit2.ContextMenuItem
import {-# SOURCE #-} qualified GI.WebKit2.Objects.CookieManager as WebKit2.CookieManager
import {-# SOURCE #-} qualified GI.WebKit2.Objects.Download as WebKit2.Download
import {-# SOURCE #-} qualified GI.WebKit2.Objects.EditorState as WebKit2.EditorState
import {-# SOURCE #-} qualified GI.WebKit2.Objects.FaviconDatabase as WebKit2.FaviconDatabase
import {-# SOURCE #-} qualified GI.WebKit2.Objects.FileChooserRequest as WebKit2.FileChooserRequest
import {-# SOURCE #-} qualified GI.WebKit2.Objects.FindController as WebKit2.FindController
import {-# SOURCE #-} qualified GI.WebKit2.Objects.FormSubmissionRequest as WebKit2.FormSubmissionRequest
import {-# SOURCE #-} qualified GI.WebKit2.Objects.GeolocationManager as WebKit2.GeolocationManager
import {-# SOURCE #-} qualified GI.WebKit2.Objects.HitTestResult as WebKit2.HitTestResult
import {-# SOURCE #-} qualified GI.WebKit2.Objects.InputMethodContext as WebKit2.InputMethodContext
import {-# SOURCE #-} qualified GI.WebKit2.Objects.Notification as WebKit2.Notification
import {-# SOURCE #-} qualified GI.WebKit2.Objects.OptionMenu as WebKit2.OptionMenu
import {-# SOURCE #-} qualified GI.WebKit2.Objects.Plugin as WebKit2.Plugin
import {-# SOURCE #-} qualified GI.WebKit2.Objects.PolicyDecision as WebKit2.PolicyDecision
import {-# SOURCE #-} qualified GI.WebKit2.Objects.PrintCustomWidget as WebKit2.PrintCustomWidget
import {-# SOURCE #-} qualified GI.WebKit2.Objects.PrintOperation as WebKit2.PrintOperation
import {-# SOURCE #-} qualified GI.WebKit2.Objects.SecurityManager as WebKit2.SecurityManager
import {-# SOURCE #-} qualified GI.WebKit2.Objects.Settings as WebKit2.Settings
import {-# SOURCE #-} qualified GI.WebKit2.Objects.URIRequest as WebKit2.URIRequest
import {-# SOURCE #-} qualified GI.WebKit2.Objects.URIResponse as WebKit2.URIResponse
import {-# SOURCE #-} qualified GI.WebKit2.Objects.UserContentManager as WebKit2.UserContentManager
import {-# SOURCE #-} qualified GI.WebKit2.Objects.UserMessage as WebKit2.UserMessage
import {-# SOURCE #-} qualified GI.WebKit2.Objects.WebContext as WebKit2.WebContext
import {-# SOURCE #-} qualified GI.WebKit2.Objects.WebInspector as WebKit2.WebInspector
import {-# SOURCE #-} qualified GI.WebKit2.Objects.WebResource as WebKit2.WebResource
import {-# SOURCE #-} qualified GI.WebKit2.Objects.WebViewBase as WebKit2.WebViewBase
import {-# SOURCE #-} qualified GI.WebKit2.Objects.WebsiteDataManager as WebKit2.WebsiteDataManager
import {-# SOURCE #-} qualified GI.WebKit2.Objects.WebsitePolicies as WebKit2.WebsitePolicies
import {-# SOURCE #-} qualified GI.WebKit2.Objects.WindowProperties as WebKit2.WindowProperties
import {-# SOURCE #-} qualified GI.WebKit2.Structs.ApplicationInfo as WebKit2.ApplicationInfo
import {-# SOURCE #-} qualified GI.WebKit2.Structs.Credential as WebKit2.Credential
import {-# SOURCE #-} qualified GI.WebKit2.Structs.Feature as WebKit2.Feature
import {-# SOURCE #-} qualified GI.WebKit2.Structs.FeatureList as WebKit2.FeatureList
import {-# SOURCE #-} qualified GI.WebKit2.Structs.GeolocationPosition as WebKit2.GeolocationPosition
import {-# SOURCE #-} qualified GI.WebKit2.Structs.ITPFirstParty as WebKit2.ITPFirstParty
import {-# SOURCE #-} qualified GI.WebKit2.Structs.ITPThirdParty as WebKit2.ITPThirdParty
import {-# SOURCE #-} qualified GI.WebKit2.Structs.InputMethodUnderline as WebKit2.InputMethodUnderline
import {-# SOURCE #-} qualified GI.WebKit2.Structs.JavascriptResult as WebKit2.JavascriptResult
import {-# SOURCE #-} qualified GI.WebKit2.Structs.MemoryPressureSettings as WebKit2.MemoryPressureSettings
import {-# SOURCE #-} qualified GI.WebKit2.Structs.MimeInfo as WebKit2.MimeInfo
import {-# SOURCE #-} qualified GI.WebKit2.Structs.NavigationAction as WebKit2.NavigationAction
import {-# SOURCE #-} qualified GI.WebKit2.Structs.NetworkProxySettings as WebKit2.NetworkProxySettings
import {-# SOURCE #-} qualified GI.WebKit2.Structs.OptionMenuItem as WebKit2.OptionMenuItem
import {-# SOURCE #-} qualified GI.WebKit2.Structs.PermissionStateQuery as WebKit2.PermissionStateQuery
import {-# SOURCE #-} qualified GI.WebKit2.Structs.ScriptDialog as WebKit2.ScriptDialog
import {-# SOURCE #-} qualified GI.WebKit2.Structs.ScriptMessageReply as WebKit2.ScriptMessageReply
import {-# SOURCE #-} qualified GI.WebKit2.Structs.SecurityOrigin as WebKit2.SecurityOrigin
import {-# SOURCE #-} qualified GI.WebKit2.Structs.UserContentFilter as WebKit2.UserContentFilter
import {-# SOURCE #-} qualified GI.WebKit2.Structs.UserScript as WebKit2.UserScript
import {-# SOURCE #-} qualified GI.WebKit2.Structs.UserStyleSheet as WebKit2.UserStyleSheet
import {-# SOURCE #-} qualified GI.WebKit2.Structs.WebViewSessionState as WebKit2.WebViewSessionState
import {-# SOURCE #-} qualified GI.WebKit2.Structs.WebsiteData as WebKit2.WebsiteData

#else
import qualified GI.Atk.Interfaces.ImplementorIface as Atk.ImplementorIface
import qualified GI.Cairo.Structs.Surface as Cairo.Surface
import qualified GI.GLib.Structs.Bytes as GLib.Bytes
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.Gdk.Structs.RGBA as Gdk.RGBA
import qualified GI.Gdk.Structs.Rectangle as Gdk.Rectangle
import qualified GI.Gdk.Unions.Event as Gdk.Event
import qualified GI.Gio.Callbacks as Gio.Callbacks
import qualified GI.Gio.Flags as Gio.Flags
import qualified GI.Gio.Interfaces.AsyncResult as Gio.AsyncResult
import qualified GI.Gio.Interfaces.File as Gio.File
import qualified GI.Gio.Objects.Cancellable as Gio.Cancellable
import qualified GI.Gio.Objects.InputStream as Gio.InputStream
import qualified GI.Gio.Objects.TlsCertificate as Gio.TlsCertificate
import qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import qualified GI.Gtk.Objects.Container as Gtk.Container
import qualified GI.Gtk.Objects.Widget as Gtk.Widget
import qualified GI.JavaScriptCore.Objects.Value as JavaScriptCore.Value
import {-# SOURCE #-} qualified GI.WebKit2.Enums as WebKit2.Enums
import {-# SOURCE #-} qualified GI.WebKit2.Flags as WebKit2.Flags
import {-# SOURCE #-} qualified GI.WebKit2.Interfaces.PermissionRequest as WebKit2.PermissionRequest
import {-# SOURCE #-} qualified GI.WebKit2.Objects.AuthenticationRequest as WebKit2.AuthenticationRequest
import {-# SOURCE #-} qualified GI.WebKit2.Objects.BackForwardList as WebKit2.BackForwardList
import {-# SOURCE #-} qualified GI.WebKit2.Objects.BackForwardListItem as WebKit2.BackForwardListItem
import {-# SOURCE #-} qualified GI.WebKit2.Objects.ColorChooserRequest as WebKit2.ColorChooserRequest
import {-# SOURCE #-} qualified GI.WebKit2.Objects.ContextMenu as WebKit2.ContextMenu
import {-# SOURCE #-} qualified GI.WebKit2.Objects.Download as WebKit2.Download
import {-# SOURCE #-} qualified GI.WebKit2.Objects.EditorState as WebKit2.EditorState
import {-# SOURCE #-} qualified GI.WebKit2.Objects.FileChooserRequest as WebKit2.FileChooserRequest
import {-# SOURCE #-} qualified GI.WebKit2.Objects.FindController as WebKit2.FindController
import {-# SOURCE #-} qualified GI.WebKit2.Objects.FormSubmissionRequest as WebKit2.FormSubmissionRequest
import {-# SOURCE #-} qualified GI.WebKit2.Objects.HitTestResult as WebKit2.HitTestResult
import {-# SOURCE #-} qualified GI.WebKit2.Objects.InputMethodContext as WebKit2.InputMethodContext
import {-# SOURCE #-} qualified GI.WebKit2.Objects.Notification as WebKit2.Notification
import {-# SOURCE #-} qualified GI.WebKit2.Objects.OptionMenu as WebKit2.OptionMenu
import {-# SOURCE #-} qualified GI.WebKit2.Objects.PolicyDecision as WebKit2.PolicyDecision
import {-# SOURCE #-} qualified GI.WebKit2.Objects.PrintOperation as WebKit2.PrintOperation
import {-# SOURCE #-} qualified GI.WebKit2.Objects.Settings as WebKit2.Settings
import {-# SOURCE #-} qualified GI.WebKit2.Objects.URIRequest as WebKit2.URIRequest
import {-# SOURCE #-} qualified GI.WebKit2.Objects.UserContentManager as WebKit2.UserContentManager
import {-# SOURCE #-} qualified GI.WebKit2.Objects.UserMessage as WebKit2.UserMessage
import {-# SOURCE #-} qualified GI.WebKit2.Objects.WebContext as WebKit2.WebContext
import {-# SOURCE #-} qualified GI.WebKit2.Objects.WebInspector as WebKit2.WebInspector
import {-# SOURCE #-} qualified GI.WebKit2.Objects.WebResource as WebKit2.WebResource
import {-# SOURCE #-} qualified GI.WebKit2.Objects.WebViewBase as WebKit2.WebViewBase
import {-# SOURCE #-} qualified GI.WebKit2.Objects.WebsiteDataManager as WebKit2.WebsiteDataManager
import {-# SOURCE #-} qualified GI.WebKit2.Objects.WebsitePolicies as WebKit2.WebsitePolicies
import {-# SOURCE #-} qualified GI.WebKit2.Objects.WindowProperties as WebKit2.WindowProperties
import {-# SOURCE #-} qualified GI.WebKit2.Structs.JavascriptResult as WebKit2.JavascriptResult
import {-# SOURCE #-} qualified GI.WebKit2.Structs.NavigationAction as WebKit2.NavigationAction
import {-# SOURCE #-} qualified GI.WebKit2.Structs.PermissionStateQuery as WebKit2.PermissionStateQuery
import {-# SOURCE #-} qualified GI.WebKit2.Structs.ScriptDialog as WebKit2.ScriptDialog
import {-# SOURCE #-} qualified GI.WebKit2.Structs.WebViewSessionState as WebKit2.WebViewSessionState

#endif

-- | Memory-managed wrapper type.
newtype WebView = WebView (SP.ManagedPtr WebView)
    deriving (Eq)

instance SP.ManagedPtrNewtype WebView where
    toManagedPtr (WebView p) = p

foreign import ccall "webkit_web_view_get_type"
    c_webkit_web_view_get_type :: IO B.Types.GType

instance B.Types.TypedObject WebView where
    glibType = c_webkit_web_view_get_type

instance B.Types.GObject WebView

-- | Type class for types which can be safely cast to t'WebView', for instance with `toWebView`.
class (SP.GObject o, O.IsDescendantOf WebView o) => IsWebView o
instance (SP.GObject o, O.IsDescendantOf WebView o) => IsWebView o

instance O.HasParentTypes WebView
type instance O.ParentTypes WebView = '[WebKit2.WebViewBase.WebViewBase, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable]

-- | Cast to t'WebView', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toWebView :: (MIO.MonadIO m, IsWebView o) => o -> m WebView
toWebView = MIO.liftIO . B.ManagedPtr.unsafeCastTo WebView

-- | Convert t'WebView' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe WebView) where
    gvalueGType_ = c_webkit_web_view_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr WebView)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr WebView)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject WebView ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveWebViewMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveWebViewMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveWebViewMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveWebViewMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveWebViewMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveWebViewMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveWebViewMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveWebViewMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveWebViewMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveWebViewMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveWebViewMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveWebViewMethod "callAsyncJavascriptFunction" o = WebViewCallAsyncJavascriptFunctionMethodInfo
    ResolveWebViewMethod "callAsyncJavascriptFunctionFinish" o = WebViewCallAsyncJavascriptFunctionFinishMethodInfo
    ResolveWebViewMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveWebViewMethod "canExecuteEditingCommand" o = WebViewCanExecuteEditingCommandMethodInfo
    ResolveWebViewMethod "canExecuteEditingCommandFinish" o = WebViewCanExecuteEditingCommandFinishMethodInfo
    ResolveWebViewMethod "canGoBack" o = WebViewCanGoBackMethodInfo
    ResolveWebViewMethod "canGoForward" o = WebViewCanGoForwardMethodInfo
    ResolveWebViewMethod "canShowMimeType" o = WebViewCanShowMimeTypeMethodInfo
    ResolveWebViewMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveWebViewMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveWebViewMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveWebViewMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveWebViewMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveWebViewMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveWebViewMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveWebViewMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveWebViewMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveWebViewMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveWebViewMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveWebViewMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveWebViewMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveWebViewMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveWebViewMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveWebViewMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveWebViewMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveWebViewMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveWebViewMethod "downloadUri" o = WebViewDownloadUriMethodInfo
    ResolveWebViewMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveWebViewMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveWebViewMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveWebViewMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveWebViewMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveWebViewMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveWebViewMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveWebViewMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveWebViewMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveWebViewMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveWebViewMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveWebViewMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveWebViewMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveWebViewMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveWebViewMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveWebViewMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveWebViewMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveWebViewMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveWebViewMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveWebViewMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveWebViewMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveWebViewMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveWebViewMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveWebViewMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveWebViewMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveWebViewMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveWebViewMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveWebViewMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveWebViewMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveWebViewMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveWebViewMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveWebViewMethod "evaluateJavascript" o = WebViewEvaluateJavascriptMethodInfo
    ResolveWebViewMethod "evaluateJavascriptFinish" o = WebViewEvaluateJavascriptFinishMethodInfo
    ResolveWebViewMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveWebViewMethod "executeEditingCommand" o = WebViewExecuteEditingCommandMethodInfo
    ResolveWebViewMethod "executeEditingCommandWithArgument" o = WebViewExecuteEditingCommandWithArgumentMethodInfo
    ResolveWebViewMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveWebViewMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveWebViewMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveWebViewMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveWebViewMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveWebViewMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveWebViewMethod "goBack" o = WebViewGoBackMethodInfo
    ResolveWebViewMethod "goForward" o = WebViewGoForwardMethodInfo
    ResolveWebViewMethod "goToBackForwardListItem" o = WebViewGoToBackForwardListItemMethodInfo
    ResolveWebViewMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveWebViewMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveWebViewMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveWebViewMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveWebViewMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveWebViewMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveWebViewMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveWebViewMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveWebViewMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveWebViewMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveWebViewMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveWebViewMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveWebViewMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveWebViewMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveWebViewMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveWebViewMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveWebViewMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveWebViewMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveWebViewMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveWebViewMethod "isControlledByAutomation" o = WebViewIsControlledByAutomationMethodInfo
    ResolveWebViewMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveWebViewMethod "isEditable" o = WebViewIsEditableMethodInfo
    ResolveWebViewMethod "isEphemeral" o = WebViewIsEphemeralMethodInfo
    ResolveWebViewMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveWebViewMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveWebViewMethod "isImmersiveModeEnabled" o = WebViewIsImmersiveModeEnabledMethodInfo
    ResolveWebViewMethod "isLoading" o = WebViewIsLoadingMethodInfo
    ResolveWebViewMethod "isPlayingAudio" o = WebViewIsPlayingAudioMethodInfo
    ResolveWebViewMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveWebViewMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveWebViewMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveWebViewMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveWebViewMethod "leaveImmersiveMode" o = WebViewLeaveImmersiveModeMethodInfo
    ResolveWebViewMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveWebViewMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveWebViewMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveWebViewMethod "loadAlternateHtml" o = WebViewLoadAlternateHtmlMethodInfo
    ResolveWebViewMethod "loadBytes" o = WebViewLoadBytesMethodInfo
    ResolveWebViewMethod "loadHtml" o = WebViewLoadHtmlMethodInfo
    ResolveWebViewMethod "loadPlainText" o = WebViewLoadPlainTextMethodInfo
    ResolveWebViewMethod "loadRequest" o = WebViewLoadRequestMethodInfo
    ResolveWebViewMethod "loadUri" o = WebViewLoadUriMethodInfo
    ResolveWebViewMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveWebViewMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveWebViewMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveWebViewMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveWebViewMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveWebViewMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveWebViewMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveWebViewMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveWebViewMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveWebViewMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveWebViewMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveWebViewMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveWebViewMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveWebViewMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveWebViewMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveWebViewMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveWebViewMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveWebViewMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveWebViewMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveWebViewMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveWebViewMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveWebViewMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveWebViewMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveWebViewMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveWebViewMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveWebViewMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveWebViewMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveWebViewMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveWebViewMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveWebViewMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveWebViewMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveWebViewMethod "reload" o = WebViewReloadMethodInfo
    ResolveWebViewMethod "reloadBypassCache" o = WebViewReloadBypassCacheMethodInfo
    ResolveWebViewMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveWebViewMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveWebViewMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveWebViewMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveWebViewMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveWebViewMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveWebViewMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveWebViewMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveWebViewMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveWebViewMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveWebViewMethod "restoreSessionState" o = WebViewRestoreSessionStateMethodInfo
    ResolveWebViewMethod "runAsyncJavascriptFunctionInWorld" o = WebViewRunAsyncJavascriptFunctionInWorldMethodInfo
    ResolveWebViewMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveWebViewMethod "runJavascript" o = WebViewRunJavascriptMethodInfo
    ResolveWebViewMethod "runJavascriptFinish" o = WebViewRunJavascriptFinishMethodInfo
    ResolveWebViewMethod "runJavascriptFromGresource" o = WebViewRunJavascriptFromGresourceMethodInfo
    ResolveWebViewMethod "runJavascriptFromGresourceFinish" o = WebViewRunJavascriptFromGresourceFinishMethodInfo
    ResolveWebViewMethod "runJavascriptInWorld" o = WebViewRunJavascriptInWorldMethodInfo
    ResolveWebViewMethod "runJavascriptInWorldFinish" o = WebViewRunJavascriptInWorldFinishMethodInfo
    ResolveWebViewMethod "save" o = WebViewSaveMethodInfo
    ResolveWebViewMethod "saveFinish" o = WebViewSaveFinishMethodInfo
    ResolveWebViewMethod "saveToFile" o = WebViewSaveToFileMethodInfo
    ResolveWebViewMethod "saveToFileFinish" o = WebViewSaveToFileFinishMethodInfo
    ResolveWebViewMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveWebViewMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveWebViewMethod "sendMessageToPage" o = WebViewSendMessageToPageMethodInfo
    ResolveWebViewMethod "sendMessageToPageFinish" o = WebViewSendMessageToPageFinishMethodInfo
    ResolveWebViewMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveWebViewMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveWebViewMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveWebViewMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveWebViewMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveWebViewMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveWebViewMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveWebViewMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveWebViewMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveWebViewMethod "stopLoading" o = WebViewStopLoadingMethodInfo
    ResolveWebViewMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveWebViewMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveWebViewMethod "terminateWebProcess" o = WebViewTerminateWebProcessMethodInfo
    ResolveWebViewMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveWebViewMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveWebViewMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveWebViewMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveWebViewMethod "tryClose" o = WebViewTryCloseMethodInfo
    ResolveWebViewMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveWebViewMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveWebViewMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveWebViewMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveWebViewMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveWebViewMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveWebViewMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveWebViewMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveWebViewMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveWebViewMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveWebViewMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveWebViewMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveWebViewMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveWebViewMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveWebViewMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveWebViewMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveWebViewMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveWebViewMethod "getAutomationPresentationType" o = WebViewGetAutomationPresentationTypeMethodInfo
    ResolveWebViewMethod "getBackForwardList" o = WebViewGetBackForwardListMethodInfo
    ResolveWebViewMethod "getBackgroundColor" o = WebViewGetBackgroundColorMethodInfo
    ResolveWebViewMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveWebViewMethod "getCameraCaptureState" o = WebViewGetCameraCaptureStateMethodInfo
    ResolveWebViewMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveWebViewMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveWebViewMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveWebViewMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveWebViewMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveWebViewMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveWebViewMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveWebViewMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveWebViewMethod "getContext" o = WebViewGetContextMethodInfo
    ResolveWebViewMethod "getCustomCharset" o = WebViewGetCustomCharsetMethodInfo
    ResolveWebViewMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveWebViewMethod "getDefaultContentSecurityPolicy" o = WebViewGetDefaultContentSecurityPolicyMethodInfo
    ResolveWebViewMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveWebViewMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveWebViewMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveWebViewMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveWebViewMethod "getDisplayCaptureState" o = WebViewGetDisplayCaptureStateMethodInfo
    ResolveWebViewMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveWebViewMethod "getEditorState" o = WebViewGetEditorStateMethodInfo
    ResolveWebViewMethod "getEstimatedLoadProgress" o = WebViewGetEstimatedLoadProgressMethodInfo
    ResolveWebViewMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveWebViewMethod "getFavicon" o = WebViewGetFaviconMethodInfo
    ResolveWebViewMethod "getFindController" o = WebViewGetFindControllerMethodInfo
    ResolveWebViewMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveWebViewMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveWebViewMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveWebViewMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveWebViewMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveWebViewMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveWebViewMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveWebViewMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveWebViewMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveWebViewMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveWebViewMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveWebViewMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveWebViewMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveWebViewMethod "getInputMethodContext" o = WebViewGetInputMethodContextMethodInfo
    ResolveWebViewMethod "getInspector" o = WebViewGetInspectorMethodInfo
    ResolveWebViewMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveWebViewMethod "getIsMuted" o = WebViewGetIsMutedMethodInfo
    ResolveWebViewMethod "getIsWebProcessResponsive" o = WebViewGetIsWebProcessResponsiveMethodInfo
    ResolveWebViewMethod "getMainResource" o = WebViewGetMainResourceMethodInfo
    ResolveWebViewMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveWebViewMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveWebViewMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveWebViewMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveWebViewMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveWebViewMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveWebViewMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveWebViewMethod "getMicrophoneCaptureState" o = WebViewGetMicrophoneCaptureStateMethodInfo
    ResolveWebViewMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveWebViewMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveWebViewMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveWebViewMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveWebViewMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveWebViewMethod "getPageId" o = WebViewGetPageIdMethodInfo
    ResolveWebViewMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveWebViewMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveWebViewMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveWebViewMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveWebViewMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveWebViewMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveWebViewMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveWebViewMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveWebViewMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveWebViewMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveWebViewMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveWebViewMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveWebViewMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveWebViewMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveWebViewMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveWebViewMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveWebViewMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveWebViewMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveWebViewMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveWebViewMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveWebViewMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveWebViewMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveWebViewMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveWebViewMethod "getSessionState" o = WebViewGetSessionStateMethodInfo
    ResolveWebViewMethod "getSettings" o = WebViewGetSettingsMethodInfo
    ResolveWebViewMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveWebViewMethod "getSnapshot" o = WebViewGetSnapshotMethodInfo
    ResolveWebViewMethod "getSnapshotFinish" o = WebViewGetSnapshotFinishMethodInfo
    ResolveWebViewMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveWebViewMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveWebViewMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveWebViewMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveWebViewMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveWebViewMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveWebViewMethod "getThemeColor" o = WebViewGetThemeColorMethodInfo
    ResolveWebViewMethod "getTitle" o = WebViewGetTitleMethodInfo
    ResolveWebViewMethod "getTlsInfo" o = WebViewGetTlsInfoMethodInfo
    ResolveWebViewMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveWebViewMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveWebViewMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveWebViewMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveWebViewMethod "getUri" o = WebViewGetUriMethodInfo
    ResolveWebViewMethod "getUserContentManager" o = WebViewGetUserContentManagerMethodInfo
    ResolveWebViewMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveWebViewMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveWebViewMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveWebViewMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveWebViewMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveWebViewMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveWebViewMethod "getWebExtensionMode" o = WebViewGetWebExtensionModeMethodInfo
    ResolveWebViewMethod "getWebsiteDataManager" o = WebViewGetWebsiteDataManagerMethodInfo
    ResolveWebViewMethod "getWebsitePolicies" o = WebViewGetWebsitePoliciesMethodInfo
    ResolveWebViewMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveWebViewMethod "getWindowProperties" o = WebViewGetWindowPropertiesMethodInfo
    ResolveWebViewMethod "getZoomLevel" o = WebViewGetZoomLevelMethodInfo
    ResolveWebViewMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveWebViewMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveWebViewMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveWebViewMethod "setBackgroundColor" o = WebViewSetBackgroundColorMethodInfo
    ResolveWebViewMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveWebViewMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveWebViewMethod "setCameraCaptureState" o = WebViewSetCameraCaptureStateMethodInfo
    ResolveWebViewMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveWebViewMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveWebViewMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveWebViewMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveWebViewMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveWebViewMethod "setCorsAllowlist" o = WebViewSetCorsAllowlistMethodInfo
    ResolveWebViewMethod "setCustomCharset" o = WebViewSetCustomCharsetMethodInfo
    ResolveWebViewMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveWebViewMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveWebViewMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveWebViewMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveWebViewMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveWebViewMethod "setDisplayCaptureState" o = WebViewSetDisplayCaptureStateMethodInfo
    ResolveWebViewMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveWebViewMethod "setEditable" o = WebViewSetEditableMethodInfo
    ResolveWebViewMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveWebViewMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveWebViewMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveWebViewMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveWebViewMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveWebViewMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveWebViewMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveWebViewMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveWebViewMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveWebViewMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveWebViewMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveWebViewMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveWebViewMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveWebViewMethod "setInputMethodContext" o = WebViewSetInputMethodContextMethodInfo
    ResolveWebViewMethod "setIsMuted" o = WebViewSetIsMutedMethodInfo
    ResolveWebViewMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveWebViewMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveWebViewMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveWebViewMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveWebViewMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveWebViewMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveWebViewMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveWebViewMethod "setMicrophoneCaptureState" o = WebViewSetMicrophoneCaptureStateMethodInfo
    ResolveWebViewMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveWebViewMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveWebViewMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveWebViewMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveWebViewMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveWebViewMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveWebViewMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveWebViewMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveWebViewMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveWebViewMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveWebViewMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveWebViewMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveWebViewMethod "setSettings" o = WebViewSetSettingsMethodInfo
    ResolveWebViewMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveWebViewMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveWebViewMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveWebViewMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveWebViewMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveWebViewMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveWebViewMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveWebViewMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveWebViewMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveWebViewMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveWebViewMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveWebViewMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveWebViewMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveWebViewMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveWebViewMethod "setZoomLevel" o = WebViewSetZoomLevelMethodInfo
    ResolveWebViewMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveWebViewMethod t WebView, O.OverloadedMethod info WebView p) => OL.IsLabel t (WebView -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveWebViewMethod t WebView, O.OverloadedMethod info WebView p, R.HasField t WebView p) => R.HasField t WebView p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveWebViewMethod t WebView, O.OverloadedMethodInfo info WebView) => OL.IsLabel t (O.MethodProxy info WebView) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

-- signal WebView::authenticate
-- | This signal is emitted when the user is challenged with HTTP
-- authentication. To let the  application access or supply
-- the credentials as well as to allow the client application
-- to either cancel the request or perform the authentication,
-- the signal will pass an instance of the
-- t'GI.WebKit2.Objects.AuthenticationRequest.AuthenticationRequest' in the /@request@/ argument.
-- To handle this signal asynchronously you should keep a ref
-- of the request and return 'P.True'. To disable HTTP authentication
-- entirely, connect to this signal and simply return 'P.True'.
-- 
-- The default signal handler will run a default authentication
-- dialog asynchronously for the user to interact with.
-- 
-- /Since: 2.2/
type WebViewAuthenticateCallback =
    WebKit2.AuthenticationRequest.AuthenticationRequest
    -- ^ /@request@/: a t'GI.WebKit2.Objects.AuthenticationRequest.AuthenticationRequest'
    -> IO Bool
    -- ^ __Returns:__ 'P.True' to stop other handlers from being invoked for the event.
    --   'P.False' to propagate the event further.

type C_WebViewAuthenticateCallback =
    Ptr WebView ->                          -- object
    Ptr WebKit2.AuthenticationRequest.AuthenticationRequest ->
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_WebViewAuthenticateCallback`.
foreign import ccall "wrapper"
    mk_WebViewAuthenticateCallback :: C_WebViewAuthenticateCallback -> IO (FunPtr C_WebViewAuthenticateCallback)

wrap_WebViewAuthenticateCallback :: 
    GObject a => (a -> WebViewAuthenticateCallback) ->
    C_WebViewAuthenticateCallback
wrap_WebViewAuthenticateCallback gi'cb gi'selfPtr request _ = do
    request' <- (newObject WebKit2.AuthenticationRequest.AuthenticationRequest) request
    result <- B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  request'
    let result' = (P.fromIntegral . P.fromEnum) result
    return result'


-- | Connect a signal handler for the [authenticate](#signal:authenticate) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webView #authenticate callback
-- @
-- 
-- 
onWebViewAuthenticate :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewAuthenticateCallback) -> m SignalHandlerId
onWebViewAuthenticate obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewAuthenticateCallback wrapped
    wrapped'' <- mk_WebViewAuthenticateCallback wrapped'
    connectSignalFunPtr obj "authenticate" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [authenticate](#signal:authenticate) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webView #authenticate callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebViewAuthenticate :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewAuthenticateCallback) -> m SignalHandlerId
afterWebViewAuthenticate obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewAuthenticateCallback wrapped
    wrapped'' <- mk_WebViewAuthenticateCallback wrapped'
    connectSignalFunPtr obj "authenticate" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebViewAuthenticateSignalInfo
instance SignalInfo WebViewAuthenticateSignalInfo where
    type HaskellCallbackType WebViewAuthenticateSignalInfo = WebViewAuthenticateCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebViewAuthenticateCallback cb
        cb'' <- mk_WebViewAuthenticateCallback cb'
        connectSignalFunPtr obj "authenticate" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView::authenticate"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:signal:authenticate"})

#endif

-- signal WebView::close
-- | Emitted when closing a t'GI.WebKit2.Objects.WebView.WebView' is requested. This occurs when a
-- call is made from JavaScript\'s \<function>window.close\<\/function> function or
-- after trying to close the /@webView@/ with 'GI.WebKit2.Objects.WebView.webViewTryClose'.
-- It is the owner\'s responsibility to handle this signal to hide or
-- destroy the t'GI.WebKit2.Objects.WebView.WebView', if necessary.
type WebViewCloseCallback =
    IO ()

type C_WebViewCloseCallback =
    Ptr WebView ->                          -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_WebViewCloseCallback`.
foreign import ccall "wrapper"
    mk_WebViewCloseCallback :: C_WebViewCloseCallback -> IO (FunPtr C_WebViewCloseCallback)

wrap_WebViewCloseCallback :: 
    GObject a => (a -> WebViewCloseCallback) ->
    C_WebViewCloseCallback
wrap_WebViewCloseCallback gi'cb gi'selfPtr _ = do
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self) 


-- | Connect a signal handler for the [close](#signal:close) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webView #close callback
-- @
-- 
-- 
onWebViewClose :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewCloseCallback) -> m SignalHandlerId
onWebViewClose obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewCloseCallback wrapped
    wrapped'' <- mk_WebViewCloseCallback wrapped'
    connectSignalFunPtr obj "close" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [close](#signal:close) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webView #close callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebViewClose :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewCloseCallback) -> m SignalHandlerId
afterWebViewClose obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewCloseCallback wrapped
    wrapped'' <- mk_WebViewCloseCallback wrapped'
    connectSignalFunPtr obj "close" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebViewCloseSignalInfo
instance SignalInfo WebViewCloseSignalInfo where
    type HaskellCallbackType WebViewCloseSignalInfo = WebViewCloseCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebViewCloseCallback cb
        cb'' <- mk_WebViewCloseCallback cb'
        connectSignalFunPtr obj "close" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView::close"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:signal:close"})

#endif

-- signal WebView::context-menu
-- | Emitted when a context menu is about to be displayed to give the application
-- a chance to customize the proposed menu, prevent the menu from being displayed,
-- or build its own context menu.
-- \<itemizedlist>
-- \<listitem>\<para>
--  To customize the proposed menu you can use 'GI.WebKit2.Objects.ContextMenu.contextMenuPrepend',
--  'GI.WebKit2.Objects.ContextMenu.contextMenuAppend' or 'GI.WebKit2.Objects.ContextMenu.contextMenuInsert' to add new
--  t'GI.WebKit2.Objects.ContextMenuItem.ContextMenuItem's to /@contextMenu@/, 'GI.WebKit2.Objects.ContextMenu.contextMenuMoveItem'
--  to reorder existing items, or 'GI.WebKit2.Objects.ContextMenu.contextMenuRemove' to remove an
--  existing item. The signal handler should return 'P.False', and the menu represented
--  by /@contextMenu@/ will be shown.
-- \<\/para>\<\/listitem>
-- \<listitem>\<para>
--  To prevent the menu from being displayed you can just connect to this signal
--  and return 'P.True' so that the proposed menu will not be shown.
-- \<\/para>\<\/listitem>
-- \<listitem>\<para>
--  To build your own menu, you can remove all items from the proposed menu with
--  'GI.WebKit2.Objects.ContextMenu.contextMenuRemoveAll', add your own items and return 'P.False' so
--  that the menu will be shown. You can also ignore the proposed t'GI.WebKit2.Objects.ContextMenu.ContextMenu',
--  build your own t'GI.Gtk.Objects.Menu.Menu' and return 'P.True' to prevent the proposed menu from being shown.
-- \<\/para>\<\/listitem>
-- \<listitem>\<para>
--  If you just want the default menu to be shown always, simply don\'t connect to this
--  signal because showing the proposed context menu is the default behaviour.
-- \<\/para>\<\/listitem>
-- \<\/itemizedlist>
-- 
-- The /@event@/ parameter is now deprecated. Use 'GI.WebKit2.Objects.ContextMenu.contextMenuGetEvent' to get the
-- t'GI.Gdk.Unions.Event.Event' that triggered the context menu.
-- 
-- If the signal handler returns 'P.False' the context menu represented by /@contextMenu@/
-- will be shown, if it return 'P.True' the context menu will not be shown.
-- 
-- The proposed t'GI.WebKit2.Objects.ContextMenu.ContextMenu' passed in /@contextMenu@/ argument is only valid
-- during the signal emission.
type WebViewContextMenuCallback =
    WebKit2.ContextMenu.ContextMenu
    -- ^ /@contextMenu@/: the proposed t'GI.WebKit2.Objects.ContextMenu.ContextMenu'
    -> Gdk.Event.Event
    -- ^ /@event@/: the t'GI.Gdk.Unions.Event.Event' that triggered the context menu. Deprecated 2.40.
    -> WebKit2.HitTestResult.HitTestResult
    -- ^ /@hitTestResult@/: a t'GI.WebKit2.Objects.HitTestResult.HitTestResult'
    -> IO Bool
    -- ^ __Returns:__ 'P.True' to stop other handlers from being invoked for the event.
    --    'P.False' to propagate the event further.

type C_WebViewContextMenuCallback =
    Ptr WebView ->                          -- object
    Ptr WebKit2.ContextMenu.ContextMenu ->
    Ptr Gdk.Event.Event ->
    Ptr WebKit2.HitTestResult.HitTestResult ->
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_WebViewContextMenuCallback`.
foreign import ccall "wrapper"
    mk_WebViewContextMenuCallback :: C_WebViewContextMenuCallback -> IO (FunPtr C_WebViewContextMenuCallback)

wrap_WebViewContextMenuCallback :: 
    GObject a => (a -> WebViewContextMenuCallback) ->
    C_WebViewContextMenuCallback
wrap_WebViewContextMenuCallback gi'cb gi'selfPtr contextMenu event hitTestResult _ = do
    contextMenu' <- (newObject WebKit2.ContextMenu.ContextMenu) contextMenu
    B.ManagedPtr.withTransient  event $ \event' -> do
        hitTestResult' <- (newObject WebKit2.HitTestResult.HitTestResult) hitTestResult
        result <- B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  contextMenu' event' hitTestResult'
        let result' = (P.fromIntegral . P.fromEnum) result
        return result'


-- | Connect a signal handler for the [contextMenu](#signal:contextMenu) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webView #contextMenu callback
-- @
-- 
-- 
onWebViewContextMenu :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewContextMenuCallback) -> m SignalHandlerId
onWebViewContextMenu obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewContextMenuCallback wrapped
    wrapped'' <- mk_WebViewContextMenuCallback wrapped'
    connectSignalFunPtr obj "context-menu" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [contextMenu](#signal:contextMenu) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webView #contextMenu callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebViewContextMenu :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewContextMenuCallback) -> m SignalHandlerId
afterWebViewContextMenu obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewContextMenuCallback wrapped
    wrapped'' <- mk_WebViewContextMenuCallback wrapped'
    connectSignalFunPtr obj "context-menu" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebViewContextMenuSignalInfo
instance SignalInfo WebViewContextMenuSignalInfo where
    type HaskellCallbackType WebViewContextMenuSignalInfo = WebViewContextMenuCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebViewContextMenuCallback cb
        cb'' <- mk_WebViewContextMenuCallback cb'
        connectSignalFunPtr obj "context-menu" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView::context-menu"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:signal:contextMenu"})

#endif

-- signal WebView::context-menu-dismissed
-- | Emitted after [WebView::contextMenu]("GI.WebKit2.Objects.WebView#g:signal:contextMenu") signal, if the context menu is shown,
-- to notify that the context menu is dismissed.
type WebViewContextMenuDismissedCallback =
    IO ()

type C_WebViewContextMenuDismissedCallback =
    Ptr WebView ->                          -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_WebViewContextMenuDismissedCallback`.
foreign import ccall "wrapper"
    mk_WebViewContextMenuDismissedCallback :: C_WebViewContextMenuDismissedCallback -> IO (FunPtr C_WebViewContextMenuDismissedCallback)

wrap_WebViewContextMenuDismissedCallback :: 
    GObject a => (a -> WebViewContextMenuDismissedCallback) ->
    C_WebViewContextMenuDismissedCallback
wrap_WebViewContextMenuDismissedCallback gi'cb gi'selfPtr _ = do
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self) 


-- | Connect a signal handler for the [contextMenuDismissed](#signal:contextMenuDismissed) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webView #contextMenuDismissed callback
-- @
-- 
-- 
onWebViewContextMenuDismissed :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewContextMenuDismissedCallback) -> m SignalHandlerId
onWebViewContextMenuDismissed obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewContextMenuDismissedCallback wrapped
    wrapped'' <- mk_WebViewContextMenuDismissedCallback wrapped'
    connectSignalFunPtr obj "context-menu-dismissed" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [contextMenuDismissed](#signal:contextMenuDismissed) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webView #contextMenuDismissed callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebViewContextMenuDismissed :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewContextMenuDismissedCallback) -> m SignalHandlerId
afterWebViewContextMenuDismissed obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewContextMenuDismissedCallback wrapped
    wrapped'' <- mk_WebViewContextMenuDismissedCallback wrapped'
    connectSignalFunPtr obj "context-menu-dismissed" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebViewContextMenuDismissedSignalInfo
instance SignalInfo WebViewContextMenuDismissedSignalInfo where
    type HaskellCallbackType WebViewContextMenuDismissedSignalInfo = WebViewContextMenuDismissedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebViewContextMenuDismissedCallback cb
        cb'' <- mk_WebViewContextMenuDismissedCallback cb'
        connectSignalFunPtr obj "context-menu-dismissed" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView::context-menu-dismissed"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:signal:contextMenuDismissed"})

#endif

-- signal WebView::create
-- | Emitted when the creation of a new t'GI.WebKit2.Objects.WebView.WebView' is requested.
-- If this signal is handled the signal handler should return the
-- newly created t'GI.WebKit2.Objects.WebView.WebView'.
-- 
-- The t'GI.WebKit2.Structs.NavigationAction.NavigationAction' parameter contains information about the
-- navigation action that triggered this signal.
-- 
-- The new t'GI.WebKit2.Objects.WebView.WebView' must be related to /@webView@/, see
-- [WebView:relatedView]("GI.WebKit2.Objects.WebView#g:attr:relatedView") for more details.
-- 
-- The new t'GI.WebKit2.Objects.WebView.WebView' should not be displayed to the user
-- until the [WebView::readyToShow]("GI.WebKit2.Objects.WebView#g:signal:readyToShow") signal is emitted.
-- 
-- For creating views as response to automation tools requests, see the
-- [AutomationSession::createWebView]("GI.WebKit2.Objects.AutomationSession#g:signal:createWebView") signal.
type WebViewCreateCallback =
    WebKit2.NavigationAction.NavigationAction
    -- ^ /@navigationAction@/: a t'GI.WebKit2.Structs.NavigationAction.NavigationAction'
    -> IO Gtk.Widget.Widget
    -- ^ __Returns:__ a newly allocated t'GI.WebKit2.Objects.WebView.WebView' widget
    --    or 'P.Nothing' to propagate the event further.

type C_WebViewCreateCallback =
    Ptr WebView ->                          -- object
    Ptr WebKit2.NavigationAction.NavigationAction ->
    Ptr () ->                               -- user_data
    IO (Ptr Gtk.Widget.Widget)

-- | Generate a function pointer callable from C code, from a `C_WebViewCreateCallback`.
foreign import ccall "wrapper"
    mk_WebViewCreateCallback :: C_WebViewCreateCallback -> IO (FunPtr C_WebViewCreateCallback)

wrap_WebViewCreateCallback :: 
    GObject a => (a -> WebViewCreateCallback) ->
    C_WebViewCreateCallback
wrap_WebViewCreateCallback gi'cb gi'selfPtr navigationAction _ = do
    B.ManagedPtr.withTransient  navigationAction $ \navigationAction' -> do
        result <- B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  navigationAction'
        result' <- B.ManagedPtr.disownObject result
        return result'


-- | Connect a signal handler for the [create](#signal:create) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webView #create callback
-- @
-- 
-- 
onWebViewCreate :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewCreateCallback) -> m SignalHandlerId
onWebViewCreate obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewCreateCallback wrapped
    wrapped'' <- mk_WebViewCreateCallback wrapped'
    connectSignalFunPtr obj "create" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [create](#signal:create) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webView #create callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebViewCreate :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewCreateCallback) -> m SignalHandlerId
afterWebViewCreate obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewCreateCallback wrapped
    wrapped'' <- mk_WebViewCreateCallback wrapped'
    connectSignalFunPtr obj "create" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebViewCreateSignalInfo
instance SignalInfo WebViewCreateSignalInfo where
    type HaskellCallbackType WebViewCreateSignalInfo = WebViewCreateCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebViewCreateCallback cb
        cb'' <- mk_WebViewCreateCallback cb'
        connectSignalFunPtr obj "create" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView::create"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:signal:create"})

#endif

-- signal WebView::decide-policy
-- | This signal is emitted when WebKit is requesting the client to decide a policy
-- decision, such as whether to navigate to a page, open a new window or whether or
-- not to download a resource. The t'GI.WebKit2.Objects.NavigationPolicyDecision.NavigationPolicyDecision' passed in the
-- /@decision@/ argument is a generic type, but should be casted to a more
-- specific type when making the decision. For example:
-- 
-- 
-- === /c code/
-- >static gboolean
-- >decide_policy_cb (WebKitWebView *web_view,
-- >                  WebKitPolicyDecision *decision,
-- >                  WebKitPolicyDecisionType type)
-- >{
-- >    switch (type) {
-- >    case WEBKIT_POLICY_DECISION_TYPE_NAVIGATION_ACTION: {
-- >        WebKitNavigationPolicyDecision *navigation_decision = WEBKIT_NAVIGATION_POLICY_DECISION (decision);
-- >        // Make a policy decision here
-- >        break;
-- >    }
-- >    case WEBKIT_POLICY_DECISION_TYPE_NEW_WINDOW_ACTION: {
-- >        WebKitNavigationPolicyDecision *navigation_decision = WEBKIT_NAVIGATION_POLICY_DECISION (decision);
-- >        // Make a policy decision here
-- >        break;
-- >    }
-- >    case WEBKIT_POLICY_DECISION_TYPE_RESPONSE:
-- >        WebKitResponsePolicyDecision *response = WEBKIT_RESPONSE_POLICY_DECISION (decision);
-- >        // Make a policy decision here
-- >        break;
-- >    default:
-- >        // Making no decision results in webkit_policy_decision_use()
-- >        return FALSE;
-- >    }
-- >    return TRUE;
-- >}
-- 
-- 
-- It is possible to make policy decision asynchronously, by simply calling 'GI.GObject.Objects.Object.objectRef'
-- on the /@decision@/ argument and returning 'P.True' to block the default signal handler.
-- If the last reference is removed on a t'GI.WebKit2.Objects.PolicyDecision.PolicyDecision' and no decision has been
-- made explicitly, 'GI.WebKit2.Objects.PolicyDecision.policyDecisionUse' will be the default policy decision. The
-- default signal handler will simply call 'GI.WebKit2.Objects.PolicyDecision.policyDecisionUse'. Only the first
-- policy decision chosen for a given t'GI.WebKit2.Objects.PolicyDecision.PolicyDecision' will have any affect.
type WebViewDecidePolicyCallback =
    WebKit2.PolicyDecision.PolicyDecision
    -- ^ /@decision@/: the t'GI.WebKit2.Objects.PolicyDecision.PolicyDecision'
    -> WebKit2.Enums.PolicyDecisionType
    -- ^ /@decisionType@/: a t'GI.WebKit2.Enums.PolicyDecisionType' denoting the type of /@decision@/
    -> IO Bool
    -- ^ __Returns:__ 'P.True' to stop other handlers from being invoked for the event.
    --   'P.False' to propagate the event further.

type C_WebViewDecidePolicyCallback =
    Ptr WebView ->                          -- object
    Ptr WebKit2.PolicyDecision.PolicyDecision ->
    CUInt ->
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_WebViewDecidePolicyCallback`.
foreign import ccall "wrapper"
    mk_WebViewDecidePolicyCallback :: C_WebViewDecidePolicyCallback -> IO (FunPtr C_WebViewDecidePolicyCallback)

wrap_WebViewDecidePolicyCallback :: 
    GObject a => (a -> WebViewDecidePolicyCallback) ->
    C_WebViewDecidePolicyCallback
wrap_WebViewDecidePolicyCallback gi'cb gi'selfPtr decision decisionType _ = do
    decision' <- (newObject WebKit2.PolicyDecision.PolicyDecision) decision
    let decisionType' = (toEnum . fromIntegral) decisionType
    result <- B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  decision' decisionType'
    let result' = (P.fromIntegral . P.fromEnum) result
    return result'


-- | Connect a signal handler for the [decidePolicy](#signal:decidePolicy) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webView #decidePolicy callback
-- @
-- 
-- 
onWebViewDecidePolicy :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewDecidePolicyCallback) -> m SignalHandlerId
onWebViewDecidePolicy obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewDecidePolicyCallback wrapped
    wrapped'' <- mk_WebViewDecidePolicyCallback wrapped'
    connectSignalFunPtr obj "decide-policy" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [decidePolicy](#signal:decidePolicy) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webView #decidePolicy callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebViewDecidePolicy :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewDecidePolicyCallback) -> m SignalHandlerId
afterWebViewDecidePolicy obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewDecidePolicyCallback wrapped
    wrapped'' <- mk_WebViewDecidePolicyCallback wrapped'
    connectSignalFunPtr obj "decide-policy" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebViewDecidePolicySignalInfo
instance SignalInfo WebViewDecidePolicySignalInfo where
    type HaskellCallbackType WebViewDecidePolicySignalInfo = WebViewDecidePolicyCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebViewDecidePolicyCallback cb
        cb'' <- mk_WebViewDecidePolicyCallback cb'
        connectSignalFunPtr obj "decide-policy" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView::decide-policy"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:signal:decidePolicy"})

#endif

-- signal WebView::enter-fullscreen
-- | Emitted when JavaScript code calls
-- \<function>element.webkitRequestFullScreen\<\/function>. If the
-- signal is not handled the t'GI.WebKit2.Objects.WebView.WebView' will proceed to full screen
-- its top level window. This signal can be used by client code to
-- request permission to the user prior doing the full screen
-- transition and eventually prepare the top-level window
-- (e.g. hide some widgets that would otherwise be part of the
-- full screen window).
type WebViewEnterFullscreenCallback =
    IO Bool
    -- ^ __Returns:__ 'P.True' to stop other handlers from being invoked for the event.
    --    'P.False' to continue emission of the event.

type C_WebViewEnterFullscreenCallback =
    Ptr WebView ->                          -- object
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_WebViewEnterFullscreenCallback`.
foreign import ccall "wrapper"
    mk_WebViewEnterFullscreenCallback :: C_WebViewEnterFullscreenCallback -> IO (FunPtr C_WebViewEnterFullscreenCallback)

wrap_WebViewEnterFullscreenCallback :: 
    GObject a => (a -> WebViewEnterFullscreenCallback) ->
    C_WebViewEnterFullscreenCallback
wrap_WebViewEnterFullscreenCallback gi'cb gi'selfPtr _ = do
    result <- B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self) 
    let result' = (P.fromIntegral . P.fromEnum) result
    return result'


-- | Connect a signal handler for the [enterFullscreen](#signal:enterFullscreen) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webView #enterFullscreen callback
-- @
-- 
-- 
onWebViewEnterFullscreen :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewEnterFullscreenCallback) -> m SignalHandlerId
onWebViewEnterFullscreen obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewEnterFullscreenCallback wrapped
    wrapped'' <- mk_WebViewEnterFullscreenCallback wrapped'
    connectSignalFunPtr obj "enter-fullscreen" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [enterFullscreen](#signal:enterFullscreen) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webView #enterFullscreen callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebViewEnterFullscreen :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewEnterFullscreenCallback) -> m SignalHandlerId
afterWebViewEnterFullscreen obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewEnterFullscreenCallback wrapped
    wrapped'' <- mk_WebViewEnterFullscreenCallback wrapped'
    connectSignalFunPtr obj "enter-fullscreen" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebViewEnterFullscreenSignalInfo
instance SignalInfo WebViewEnterFullscreenSignalInfo where
    type HaskellCallbackType WebViewEnterFullscreenSignalInfo = WebViewEnterFullscreenCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebViewEnterFullscreenCallback cb
        cb'' <- mk_WebViewEnterFullscreenCallback cb'
        connectSignalFunPtr obj "enter-fullscreen" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView::enter-fullscreen"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:signal:enterFullscreen"})

#endif

-- signal WebView::insecure-content-detected
{-# DEPRECATED WebViewInsecureContentDetectedCallback ["(Since version 2.46)"] #-}
-- | Prior to 2.46, this signal was emitted when insecure content was
-- loaded in a secure content. Since 2.46, this signal is generally
-- no longer emitted.
type WebViewInsecureContentDetectedCallback =
    WebKit2.Enums.InsecureContentEvent
    -- ^ /@event@/: the t'GI.WebKit2.Enums.InsecureContentEvent'
    -> IO ()

type C_WebViewInsecureContentDetectedCallback =
    Ptr WebView ->                          -- object
    CUInt ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_WebViewInsecureContentDetectedCallback`.
foreign import ccall "wrapper"
    mk_WebViewInsecureContentDetectedCallback :: C_WebViewInsecureContentDetectedCallback -> IO (FunPtr C_WebViewInsecureContentDetectedCallback)

wrap_WebViewInsecureContentDetectedCallback :: 
    GObject a => (a -> WebViewInsecureContentDetectedCallback) ->
    C_WebViewInsecureContentDetectedCallback
wrap_WebViewInsecureContentDetectedCallback gi'cb gi'selfPtr event _ = do
    let event' = (toEnum . fromIntegral) event
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  event'


-- | Connect a signal handler for the [insecureContentDetected](#signal:insecureContentDetected) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webView #insecureContentDetected callback
-- @
-- 
-- 
onWebViewInsecureContentDetected :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewInsecureContentDetectedCallback) -> m SignalHandlerId
onWebViewInsecureContentDetected obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewInsecureContentDetectedCallback wrapped
    wrapped'' <- mk_WebViewInsecureContentDetectedCallback wrapped'
    connectSignalFunPtr obj "insecure-content-detected" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [insecureContentDetected](#signal:insecureContentDetected) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webView #insecureContentDetected callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebViewInsecureContentDetected :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewInsecureContentDetectedCallback) -> m SignalHandlerId
afterWebViewInsecureContentDetected obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewInsecureContentDetectedCallback wrapped
    wrapped'' <- mk_WebViewInsecureContentDetectedCallback wrapped'
    connectSignalFunPtr obj "insecure-content-detected" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebViewInsecureContentDetectedSignalInfo
instance SignalInfo WebViewInsecureContentDetectedSignalInfo where
    type HaskellCallbackType WebViewInsecureContentDetectedSignalInfo = WebViewInsecureContentDetectedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebViewInsecureContentDetectedCallback cb
        cb'' <- mk_WebViewInsecureContentDetectedCallback cb'
        connectSignalFunPtr obj "insecure-content-detected" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView::insecure-content-detected"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:signal:insecureContentDetected"})

#endif

-- signal WebView::leave-fullscreen
-- | Emitted when the t'GI.WebKit2.Objects.WebView.WebView' is about to restore its top level
-- window out of its full screen state. This signal can be used by
-- client code to restore widgets hidden during the
-- [WebView::enterFullscreen]("GI.WebKit2.Objects.WebView#g:signal:enterFullscreen") stage for instance.
type WebViewLeaveFullscreenCallback =
    IO Bool
    -- ^ __Returns:__ 'P.True' to stop other handlers from being invoked for the event.
    --    'P.False' to continue emission of the event.

type C_WebViewLeaveFullscreenCallback =
    Ptr WebView ->                          -- object
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_WebViewLeaveFullscreenCallback`.
foreign import ccall "wrapper"
    mk_WebViewLeaveFullscreenCallback :: C_WebViewLeaveFullscreenCallback -> IO (FunPtr C_WebViewLeaveFullscreenCallback)

wrap_WebViewLeaveFullscreenCallback :: 
    GObject a => (a -> WebViewLeaveFullscreenCallback) ->
    C_WebViewLeaveFullscreenCallback
wrap_WebViewLeaveFullscreenCallback gi'cb gi'selfPtr _ = do
    result <- B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self) 
    let result' = (P.fromIntegral . P.fromEnum) result
    return result'


-- | Connect a signal handler for the [leaveFullscreen](#signal:leaveFullscreen) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webView #leaveFullscreen callback
-- @
-- 
-- 
onWebViewLeaveFullscreen :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewLeaveFullscreenCallback) -> m SignalHandlerId
onWebViewLeaveFullscreen obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewLeaveFullscreenCallback wrapped
    wrapped'' <- mk_WebViewLeaveFullscreenCallback wrapped'
    connectSignalFunPtr obj "leave-fullscreen" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [leaveFullscreen](#signal:leaveFullscreen) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webView #leaveFullscreen callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebViewLeaveFullscreen :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewLeaveFullscreenCallback) -> m SignalHandlerId
afterWebViewLeaveFullscreen obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewLeaveFullscreenCallback wrapped
    wrapped'' <- mk_WebViewLeaveFullscreenCallback wrapped'
    connectSignalFunPtr obj "leave-fullscreen" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebViewLeaveFullscreenSignalInfo
instance SignalInfo WebViewLeaveFullscreenSignalInfo where
    type HaskellCallbackType WebViewLeaveFullscreenSignalInfo = WebViewLeaveFullscreenCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebViewLeaveFullscreenCallback cb
        cb'' <- mk_WebViewLeaveFullscreenCallback cb'
        connectSignalFunPtr obj "leave-fullscreen" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView::leave-fullscreen"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:signal:leaveFullscreen"})

#endif

-- signal WebView::load-changed
-- | Emitted when a load operation in /@webView@/ changes.
-- The signal is always emitted with 'GI.WebKit2.Enums.LoadEventStarted' when a
-- new load request is made and 'GI.WebKit2.Enums.LoadEventFinished' when the load
-- finishes successfully or due to an error. When the ongoing load
-- operation fails [WebView::loadFailed]("GI.WebKit2.Objects.WebView#g:signal:loadFailed") signal is emitted
-- before [WebView::loadChanged]("GI.WebKit2.Objects.WebView#g:signal:loadChanged") is emitted with
-- 'GI.WebKit2.Enums.LoadEventFinished'.
-- If a redirection is received from the server, this signal is emitted
-- with 'GI.WebKit2.Enums.LoadEventRedirected' after the initial emission with
-- 'GI.WebKit2.Enums.LoadEventStarted' and before 'GI.WebKit2.Enums.LoadEventCommitted'.
-- When the page content starts arriving the signal is emitted with
-- 'GI.WebKit2.Enums.LoadEventCommitted' event.
-- 
-- You can handle this signal and use a switch to track any ongoing
-- load operation.
-- 
-- 
-- === /c code/
-- >static void web_view_load_changed (WebKitWebView  *web_view,
-- >                                   WebKitLoadEvent load_event,
-- >                                   gpointer        user_data)
-- >{
-- >    switch (load_event) {
-- >    case WEBKIT_LOAD_STARTED:
-- >        // New load, we have now a provisional URI
-- >        provisional_uri = webkit_web_view_get_uri (web_view);
-- >        // Here we could start a spinner or update the
-- >        // location bar with the provisional URI
-- >        break;
-- >    case WEBKIT_LOAD_REDIRECTED:
-- >        redirected_uri = webkit_web_view_get_uri (web_view);
-- >        break;
-- >    case WEBKIT_LOAD_COMMITTED:
-- >        // The load is being performed. Current URI is
-- >        // the final one and it won't change unless a new
-- >        // load is requested or a navigation within the
-- >        // same page is performed
-- >        uri = webkit_web_view_get_uri (web_view);
-- >        break;
-- >    case WEBKIT_LOAD_FINISHED:
-- >        // Load finished, we can now stop the spinner
-- >        break;
-- >    }
-- >}
type WebViewLoadChangedCallback =
    WebKit2.Enums.LoadEvent
    -- ^ /@loadEvent@/: the t'GI.WebKit2.Enums.LoadEvent'
    -> IO ()

type C_WebViewLoadChangedCallback =
    Ptr WebView ->                          -- object
    CUInt ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_WebViewLoadChangedCallback`.
foreign import ccall "wrapper"
    mk_WebViewLoadChangedCallback :: C_WebViewLoadChangedCallback -> IO (FunPtr C_WebViewLoadChangedCallback)

wrap_WebViewLoadChangedCallback :: 
    GObject a => (a -> WebViewLoadChangedCallback) ->
    C_WebViewLoadChangedCallback
wrap_WebViewLoadChangedCallback gi'cb gi'selfPtr loadEvent _ = do
    let loadEvent' = (toEnum . fromIntegral) loadEvent
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  loadEvent'


-- | Connect a signal handler for the [loadChanged](#signal:loadChanged) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webView #loadChanged callback
-- @
-- 
-- 
onWebViewLoadChanged :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewLoadChangedCallback) -> m SignalHandlerId
onWebViewLoadChanged obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewLoadChangedCallback wrapped
    wrapped'' <- mk_WebViewLoadChangedCallback wrapped'
    connectSignalFunPtr obj "load-changed" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [loadChanged](#signal:loadChanged) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webView #loadChanged callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebViewLoadChanged :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewLoadChangedCallback) -> m SignalHandlerId
afterWebViewLoadChanged obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewLoadChangedCallback wrapped
    wrapped'' <- mk_WebViewLoadChangedCallback wrapped'
    connectSignalFunPtr obj "load-changed" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebViewLoadChangedSignalInfo
instance SignalInfo WebViewLoadChangedSignalInfo where
    type HaskellCallbackType WebViewLoadChangedSignalInfo = WebViewLoadChangedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebViewLoadChangedCallback cb
        cb'' <- mk_WebViewLoadChangedCallback cb'
        connectSignalFunPtr obj "load-changed" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView::load-changed"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:signal:loadChanged"})

#endif

-- signal WebView::load-failed
-- | Emitted when an error occurs during a load operation.
-- If the error happened when starting to load data for a page
-- /@loadEvent@/ will be 'GI.WebKit2.Enums.LoadEventStarted'. If it happened while
-- loading a committed data source /@loadEvent@/ will be 'GI.WebKit2.Enums.LoadEventCommitted'.
-- Since a load error causes the load operation to finish, the signal
-- WebKitWebView[loadChanged](#g:signal:loadChanged) will always be emitted with
-- 'GI.WebKit2.Enums.LoadEventFinished' event right after this one.
-- 
-- By default, if the signal is not handled, a stock error page will be displayed.
-- You need to handle the signal if you want to provide your own error page.
type WebViewLoadFailedCallback =
    WebKit2.Enums.LoadEvent
    -- ^ /@loadEvent@/: the t'GI.WebKit2.Enums.LoadEvent' of the load operation
    -> T.Text
    -- ^ /@failingUri@/: the URI that failed to load
    -> GError
    -- ^ /@error@/: the t'GError' that was triggered
    -> IO Bool
    -- ^ __Returns:__ 'P.True' to stop other handlers from being invoked for the event.
    --    'P.False' to propagate the event further.

type C_WebViewLoadFailedCallback =
    Ptr WebView ->                          -- object
    CUInt ->
    CString ->
    Ptr GError ->
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_WebViewLoadFailedCallback`.
foreign import ccall "wrapper"
    mk_WebViewLoadFailedCallback :: C_WebViewLoadFailedCallback -> IO (FunPtr C_WebViewLoadFailedCallback)

wrap_WebViewLoadFailedCallback :: 
    GObject a => (a -> WebViewLoadFailedCallback) ->
    C_WebViewLoadFailedCallback
wrap_WebViewLoadFailedCallback gi'cb gi'selfPtr loadEvent failingUri error_ _ = do
    let loadEvent' = (toEnum . fromIntegral) loadEvent
    failingUri' <- cstringToText failingUri
    error_' <- (newBoxed GError) error_
    result <- B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  loadEvent' failingUri' error_'
    let result' = (P.fromIntegral . P.fromEnum) result
    return result'


-- | Connect a signal handler for the [loadFailed](#signal:loadFailed) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webView #loadFailed callback
-- @
-- 
-- 
onWebViewLoadFailed :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewLoadFailedCallback) -> m SignalHandlerId
onWebViewLoadFailed obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewLoadFailedCallback wrapped
    wrapped'' <- mk_WebViewLoadFailedCallback wrapped'
    connectSignalFunPtr obj "load-failed" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [loadFailed](#signal:loadFailed) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webView #loadFailed callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebViewLoadFailed :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewLoadFailedCallback) -> m SignalHandlerId
afterWebViewLoadFailed obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewLoadFailedCallback wrapped
    wrapped'' <- mk_WebViewLoadFailedCallback wrapped'
    connectSignalFunPtr obj "load-failed" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebViewLoadFailedSignalInfo
instance SignalInfo WebViewLoadFailedSignalInfo where
    type HaskellCallbackType WebViewLoadFailedSignalInfo = WebViewLoadFailedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebViewLoadFailedCallback cb
        cb'' <- mk_WebViewLoadFailedCallback cb'
        connectSignalFunPtr obj "load-failed" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView::load-failed"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:signal:loadFailed"})

#endif

-- signal WebView::load-failed-with-tls-errors
-- | Emitted when a TLS error occurs during a load operation.
-- To allow an exception for this /@certificate@/
-- and the host of /@failingUri@/ use 'GI.WebKit2.Objects.WebContext.webContextAllowTlsCertificateForHost'.
-- 
-- To handle this signal asynchronously you should call 'GI.GObject.Objects.Object.objectRef' on /@certificate@/
-- and return 'P.True'.
-- 
-- If 'P.False' is returned, [WebView::loadFailed]("GI.WebKit2.Objects.WebView#g:signal:loadFailed") will be emitted. The load
-- will finish regardless of the returned value.
-- 
-- /Since: 2.6/
type WebViewLoadFailedWithTlsErrorsCallback =
    T.Text
    -- ^ /@failingUri@/: the URI that failed to load
    -> Gio.TlsCertificate.TlsCertificate
    -- ^ /@certificate@/: a t'GI.Gio.Objects.TlsCertificate.TlsCertificate'
    -> [Gio.Flags.TlsCertificateFlags]
    -- ^ /@errors@/: a t'GI.Gio.Flags.TlsCertificateFlags' with the verification status of /@certificate@/
    -> IO Bool
    -- ^ __Returns:__ 'P.True' to stop other handlers from being invoked for the event.
    --   'P.False' to propagate the event further.

type C_WebViewLoadFailedWithTlsErrorsCallback =
    Ptr WebView ->                          -- object
    CString ->
    Ptr Gio.TlsCertificate.TlsCertificate ->
    CUInt ->
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_WebViewLoadFailedWithTlsErrorsCallback`.
foreign import ccall "wrapper"
    mk_WebViewLoadFailedWithTlsErrorsCallback :: C_WebViewLoadFailedWithTlsErrorsCallback -> IO (FunPtr C_WebViewLoadFailedWithTlsErrorsCallback)

wrap_WebViewLoadFailedWithTlsErrorsCallback :: 
    GObject a => (a -> WebViewLoadFailedWithTlsErrorsCallback) ->
    C_WebViewLoadFailedWithTlsErrorsCallback
wrap_WebViewLoadFailedWithTlsErrorsCallback gi'cb gi'selfPtr failingUri certificate errors _ = do
    failingUri' <- cstringToText failingUri
    certificate' <- (newObject Gio.TlsCertificate.TlsCertificate) certificate
    let errors' = wordToGFlags errors
    result <- B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  failingUri' certificate' errors'
    let result' = (P.fromIntegral . P.fromEnum) result
    return result'


-- | Connect a signal handler for the [loadFailedWithTlsErrors](#signal:loadFailedWithTlsErrors) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webView #loadFailedWithTlsErrors callback
-- @
-- 
-- 
onWebViewLoadFailedWithTlsErrors :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewLoadFailedWithTlsErrorsCallback) -> m SignalHandlerId
onWebViewLoadFailedWithTlsErrors obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewLoadFailedWithTlsErrorsCallback wrapped
    wrapped'' <- mk_WebViewLoadFailedWithTlsErrorsCallback wrapped'
    connectSignalFunPtr obj "load-failed-with-tls-errors" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [loadFailedWithTlsErrors](#signal:loadFailedWithTlsErrors) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webView #loadFailedWithTlsErrors callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebViewLoadFailedWithTlsErrors :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewLoadFailedWithTlsErrorsCallback) -> m SignalHandlerId
afterWebViewLoadFailedWithTlsErrors obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewLoadFailedWithTlsErrorsCallback wrapped
    wrapped'' <- mk_WebViewLoadFailedWithTlsErrorsCallback wrapped'
    connectSignalFunPtr obj "load-failed-with-tls-errors" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebViewLoadFailedWithTlsErrorsSignalInfo
instance SignalInfo WebViewLoadFailedWithTlsErrorsSignalInfo where
    type HaskellCallbackType WebViewLoadFailedWithTlsErrorsSignalInfo = WebViewLoadFailedWithTlsErrorsCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebViewLoadFailedWithTlsErrorsCallback cb
        cb'' <- mk_WebViewLoadFailedWithTlsErrorsCallback cb'
        connectSignalFunPtr obj "load-failed-with-tls-errors" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView::load-failed-with-tls-errors"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:signal:loadFailedWithTlsErrors"})

#endif

-- signal WebView::mouse-target-changed
-- | This signal is emitted when the mouse cursor moves over an
-- element such as a link, image or a media element. To determine
-- what type of element the mouse cursor is over, a Hit Test is performed
-- on the current mouse coordinates and the result is passed in the
-- /@hitTestResult@/ argument. The /@modifiers@/ argument is a bitmask of
-- t'GI.Gdk.Flags.ModifierType' flags indicating the state of modifier keys.
-- The signal is emitted again when the mouse is moved out of the
-- current element with a new /@hitTestResult@/.
type WebViewMouseTargetChangedCallback =
    WebKit2.HitTestResult.HitTestResult
    -- ^ /@hitTestResult@/: a t'GI.WebKit2.Objects.HitTestResult.HitTestResult'
    -> Word32
    -- ^ /@modifiers@/: a bitmask of t'GI.Gdk.Flags.ModifierType'
    -> IO ()

type C_WebViewMouseTargetChangedCallback =
    Ptr WebView ->                          -- object
    Ptr WebKit2.HitTestResult.HitTestResult ->
    Word32 ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_WebViewMouseTargetChangedCallback`.
foreign import ccall "wrapper"
    mk_WebViewMouseTargetChangedCallback :: C_WebViewMouseTargetChangedCallback -> IO (FunPtr C_WebViewMouseTargetChangedCallback)

wrap_WebViewMouseTargetChangedCallback :: 
    GObject a => (a -> WebViewMouseTargetChangedCallback) ->
    C_WebViewMouseTargetChangedCallback
wrap_WebViewMouseTargetChangedCallback gi'cb gi'selfPtr hitTestResult modifiers _ = do
    hitTestResult' <- (newObject WebKit2.HitTestResult.HitTestResult) hitTestResult
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  hitTestResult' modifiers


-- | Connect a signal handler for the [mouseTargetChanged](#signal:mouseTargetChanged) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webView #mouseTargetChanged callback
-- @
-- 
-- 
onWebViewMouseTargetChanged :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewMouseTargetChangedCallback) -> m SignalHandlerId
onWebViewMouseTargetChanged obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewMouseTargetChangedCallback wrapped
    wrapped'' <- mk_WebViewMouseTargetChangedCallback wrapped'
    connectSignalFunPtr obj "mouse-target-changed" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [mouseTargetChanged](#signal:mouseTargetChanged) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webView #mouseTargetChanged callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebViewMouseTargetChanged :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewMouseTargetChangedCallback) -> m SignalHandlerId
afterWebViewMouseTargetChanged obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewMouseTargetChangedCallback wrapped
    wrapped'' <- mk_WebViewMouseTargetChangedCallback wrapped'
    connectSignalFunPtr obj "mouse-target-changed" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebViewMouseTargetChangedSignalInfo
instance SignalInfo WebViewMouseTargetChangedSignalInfo where
    type HaskellCallbackType WebViewMouseTargetChangedSignalInfo = WebViewMouseTargetChangedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebViewMouseTargetChangedCallback cb
        cb'' <- mk_WebViewMouseTargetChangedCallback cb'
        connectSignalFunPtr obj "mouse-target-changed" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView::mouse-target-changed"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:signal:mouseTargetChanged"})

#endif

-- signal WebView::permission-request
-- | This signal is emitted when WebKit is requesting the client to
-- decide about a permission request, such as allowing the browser
-- to switch to fullscreen mode, sharing its location or similar
-- operations.
-- 
-- A possible way to use this signal could be through a dialog
-- allowing the user decide what to do with the request:
-- 
-- 
-- === /c code/
-- >static gboolean permission_request_cb (WebKitWebView *web_view,
-- >                                       WebKitPermissionRequest *request,
-- >                                       GtkWindow *parent_window)
-- >{
-- >    GtkWidget *dialog = gtk_message_dialog_new (parent_window,
-- >                                                GTK_DIALOG_MODAL,
-- >                                                GTK_MESSAGE_QUESTION,
-- >                                                GTK_BUTTONS_YES_NO,
-- >                                                "Allow Permission Request?");
-- >    gtk_widget_show (dialog);
-- >    gint result = gtk_dialog_run (GTK_DIALOG (dialog));
-- >
-- >    switch (result) {
-- >    case GTK_RESPONSE_YES:
-- >        webkit_permission_request_allow (request);
-- >        break;
-- >    default:
-- >        webkit_permission_request_deny (request);
-- >        break;
-- >    }
-- >    gtk_widget_destroy (dialog);
-- >
-- >    return TRUE;
-- >}
-- 
-- 
-- It is possible to handle permission requests asynchronously, by
-- simply calling 'GI.GObject.Objects.Object.objectRef' on the /@request@/ argument and
-- returning 'P.True' to block the default signal handler.  If the
-- last reference is removed on a t'GI.WebKit2.Interfaces.PermissionRequest.PermissionRequest' and the
-- request has not been handled, 'GI.WebKit2.Interfaces.PermissionRequest.permissionRequestDeny'
-- will be the default action.
-- 
-- If the signal is not handled, the /@request@/ will be completed automatically
-- by the specific t'GI.WebKit2.Interfaces.PermissionRequest.PermissionRequest' that could allow or deny it. Check the
-- documentation of classes implementing t'GI.WebKit2.Interfaces.PermissionRequest.PermissionRequest' interface to know
-- their default action.
type WebViewPermissionRequestCallback =
    WebKit2.PermissionRequest.PermissionRequest
    -- ^ /@request@/: the t'GI.WebKit2.Interfaces.PermissionRequest.PermissionRequest'
    -> IO Bool
    -- ^ __Returns:__ 'P.True' to stop other handlers from being invoked for the event.
    --   'P.False' to propagate the event further.

type C_WebViewPermissionRequestCallback =
    Ptr WebView ->                          -- object
    Ptr WebKit2.PermissionRequest.PermissionRequest ->
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_WebViewPermissionRequestCallback`.
foreign import ccall "wrapper"
    mk_WebViewPermissionRequestCallback :: C_WebViewPermissionRequestCallback -> IO (FunPtr C_WebViewPermissionRequestCallback)

wrap_WebViewPermissionRequestCallback :: 
    GObject a => (a -> WebViewPermissionRequestCallback) ->
    C_WebViewPermissionRequestCallback
wrap_WebViewPermissionRequestCallback gi'cb gi'selfPtr request _ = do
    request' <- (newObject WebKit2.PermissionRequest.PermissionRequest) request
    result <- B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  request'
    let result' = (P.fromIntegral . P.fromEnum) result
    return result'


-- | Connect a signal handler for the [permissionRequest](#signal:permissionRequest) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webView #permissionRequest callback
-- @
-- 
-- 
onWebViewPermissionRequest :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewPermissionRequestCallback) -> m SignalHandlerId
onWebViewPermissionRequest obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewPermissionRequestCallback wrapped
    wrapped'' <- mk_WebViewPermissionRequestCallback wrapped'
    connectSignalFunPtr obj "permission-request" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [permissionRequest](#signal:permissionRequest) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webView #permissionRequest callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebViewPermissionRequest :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewPermissionRequestCallback) -> m SignalHandlerId
afterWebViewPermissionRequest obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewPermissionRequestCallback wrapped
    wrapped'' <- mk_WebViewPermissionRequestCallback wrapped'
    connectSignalFunPtr obj "permission-request" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebViewPermissionRequestSignalInfo
instance SignalInfo WebViewPermissionRequestSignalInfo where
    type HaskellCallbackType WebViewPermissionRequestSignalInfo = WebViewPermissionRequestCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebViewPermissionRequestCallback cb
        cb'' <- mk_WebViewPermissionRequestCallback cb'
        connectSignalFunPtr obj "permission-request" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView::permission-request"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:signal:permissionRequest"})

#endif

-- signal WebView::print
-- | Emitted when printing is requested on /@webView@/, usually by a JavaScript call,
-- before the print dialog is shown. This signal can be used to set the initial
-- print settings and page setup of /@printOperation@/ to be used as default values in
-- the print dialog. You can call 'GI.WebKit2.Objects.PrintOperation.printOperationSetPrintSettings' and
-- 'GI.WebKit2.Objects.PrintOperation.printOperationSetPageSetup' and then return 'P.False' to propagate the
-- event so that the print dialog is shown.
-- 
-- You can connect to this signal and return 'P.True' to cancel the print operation
-- or implement your own print dialog.
type WebViewPrintCallback =
    WebKit2.PrintOperation.PrintOperation
    -- ^ /@printOperation@/: the t'GI.WebKit2.Objects.PrintOperation.PrintOperation' that will handle the print request
    -> IO Bool
    -- ^ __Returns:__ 'P.True' to stop other handlers from being invoked for the event.
    --    'P.False' to propagate the event further.

type C_WebViewPrintCallback =
    Ptr WebView ->                          -- object
    Ptr WebKit2.PrintOperation.PrintOperation ->
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_WebViewPrintCallback`.
foreign import ccall "wrapper"
    mk_WebViewPrintCallback :: C_WebViewPrintCallback -> IO (FunPtr C_WebViewPrintCallback)

wrap_WebViewPrintCallback :: 
    GObject a => (a -> WebViewPrintCallback) ->
    C_WebViewPrintCallback
wrap_WebViewPrintCallback gi'cb gi'selfPtr printOperation _ = do
    printOperation' <- (newObject WebKit2.PrintOperation.PrintOperation) printOperation
    result <- B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  printOperation'
    let result' = (P.fromIntegral . P.fromEnum) result
    return result'


-- | Connect a signal handler for the [print](#signal:print) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webView #print callback
-- @
-- 
-- 
onWebViewPrint :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewPrintCallback) -> m SignalHandlerId
onWebViewPrint obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewPrintCallback wrapped
    wrapped'' <- mk_WebViewPrintCallback wrapped'
    connectSignalFunPtr obj "print" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [print](#signal:print) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webView #print callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebViewPrint :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewPrintCallback) -> m SignalHandlerId
afterWebViewPrint obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewPrintCallback wrapped
    wrapped'' <- mk_WebViewPrintCallback wrapped'
    connectSignalFunPtr obj "print" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebViewPrintSignalInfo
instance SignalInfo WebViewPrintSignalInfo where
    type HaskellCallbackType WebViewPrintSignalInfo = WebViewPrintCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebViewPrintCallback cb
        cb'' <- mk_WebViewPrintCallback cb'
        connectSignalFunPtr obj "print" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView::print"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:signal:print"})

#endif

-- signal WebView::query-permission-state
-- | This signal allows the User-Agent to respond to permission requests for powerful features, as
-- specified by the <https://w3c.github.io/permissions/ Permissions W3C Specification>.
-- You can reply to the query using 'GI.WebKit2.Structs.PermissionStateQuery.permissionStateQueryFinish'.
-- 
-- You can handle the query asynchronously by calling 'GI.WebKit2.Structs.PermissionStateQuery.permissionStateQueryRef' on
-- /@query@/ and returning 'P.True'. If the last reference of /@query@/ is removed and the query has not
-- been handled, the query result will be set to @/WEBKIT_QUERY_PERMISSION_PROMPT/@.
-- 
-- /Since: 2.40/
type WebViewQueryPermissionStateCallback =
    WebKit2.PermissionStateQuery.PermissionStateQuery
    -- ^ /@query@/: the t'GI.WebKit2.Structs.PermissionStateQuery.PermissionStateQuery'
    -> IO Bool
    -- ^ __Returns:__ 'P.True' if the message was handled, or 'P.False' otherwise.

type C_WebViewQueryPermissionStateCallback =
    Ptr WebView ->                          -- object
    Ptr WebKit2.PermissionStateQuery.PermissionStateQuery ->
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_WebViewQueryPermissionStateCallback`.
foreign import ccall "wrapper"
    mk_WebViewQueryPermissionStateCallback :: C_WebViewQueryPermissionStateCallback -> IO (FunPtr C_WebViewQueryPermissionStateCallback)

wrap_WebViewQueryPermissionStateCallback :: 
    GObject a => (a -> WebViewQueryPermissionStateCallback) ->
    C_WebViewQueryPermissionStateCallback
wrap_WebViewQueryPermissionStateCallback gi'cb gi'selfPtr query _ = do
    B.ManagedPtr.withTransient  query $ \query' -> do
        result <- B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  query'
        let result' = (P.fromIntegral . P.fromEnum) result
        return result'


-- | Connect a signal handler for the [queryPermissionState](#signal:queryPermissionState) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webView #queryPermissionState callback
-- @
-- 
-- 
onWebViewQueryPermissionState :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewQueryPermissionStateCallback) -> m SignalHandlerId
onWebViewQueryPermissionState obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewQueryPermissionStateCallback wrapped
    wrapped'' <- mk_WebViewQueryPermissionStateCallback wrapped'
    connectSignalFunPtr obj "query-permission-state" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [queryPermissionState](#signal:queryPermissionState) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webView #queryPermissionState callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebViewQueryPermissionState :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewQueryPermissionStateCallback) -> m SignalHandlerId
afterWebViewQueryPermissionState obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewQueryPermissionStateCallback wrapped
    wrapped'' <- mk_WebViewQueryPermissionStateCallback wrapped'
    connectSignalFunPtr obj "query-permission-state" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebViewQueryPermissionStateSignalInfo
instance SignalInfo WebViewQueryPermissionStateSignalInfo where
    type HaskellCallbackType WebViewQueryPermissionStateSignalInfo = WebViewQueryPermissionStateCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebViewQueryPermissionStateCallback cb
        cb'' <- mk_WebViewQueryPermissionStateCallback cb'
        connectSignalFunPtr obj "query-permission-state" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView::query-permission-state"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:signal:queryPermissionState"})

#endif

-- signal WebView::ready-to-show
-- | Emitted after [WebView::create]("GI.WebKit2.Objects.WebView#g:signal:create") on the newly created t'GI.WebKit2.Objects.WebView.WebView'
-- when it should be displayed to the user. When this signal is emitted
-- all the information about how the window should look, including
-- size, position, whether the location, status and scrollbars
-- should be displayed, is already set on the t'GI.WebKit2.Objects.WindowProperties.WindowProperties'
-- of /@webView@/. See also 'GI.WebKit2.Objects.WebView.webViewGetWindowProperties'.
type WebViewReadyToShowCallback =
    IO ()

type C_WebViewReadyToShowCallback =
    Ptr WebView ->                          -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_WebViewReadyToShowCallback`.
foreign import ccall "wrapper"
    mk_WebViewReadyToShowCallback :: C_WebViewReadyToShowCallback -> IO (FunPtr C_WebViewReadyToShowCallback)

wrap_WebViewReadyToShowCallback :: 
    GObject a => (a -> WebViewReadyToShowCallback) ->
    C_WebViewReadyToShowCallback
wrap_WebViewReadyToShowCallback gi'cb gi'selfPtr _ = do
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self) 


-- | Connect a signal handler for the [readyToShow](#signal:readyToShow) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webView #readyToShow callback
-- @
-- 
-- 
onWebViewReadyToShow :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewReadyToShowCallback) -> m SignalHandlerId
onWebViewReadyToShow obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewReadyToShowCallback wrapped
    wrapped'' <- mk_WebViewReadyToShowCallback wrapped'
    connectSignalFunPtr obj "ready-to-show" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [readyToShow](#signal:readyToShow) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webView #readyToShow callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebViewReadyToShow :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewReadyToShowCallback) -> m SignalHandlerId
afterWebViewReadyToShow obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewReadyToShowCallback wrapped
    wrapped'' <- mk_WebViewReadyToShowCallback wrapped'
    connectSignalFunPtr obj "ready-to-show" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebViewReadyToShowSignalInfo
instance SignalInfo WebViewReadyToShowSignalInfo where
    type HaskellCallbackType WebViewReadyToShowSignalInfo = WebViewReadyToShowCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebViewReadyToShowCallback cb
        cb'' <- mk_WebViewReadyToShowCallback cb'
        connectSignalFunPtr obj "ready-to-show" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView::ready-to-show"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:signal:readyToShow"})

#endif

-- signal WebView::resource-load-started
-- | Emitted when a new resource is going to be loaded. The /@request@/ parameter
-- contains the t'GI.WebKit2.Objects.URIRequest.URIRequest' that will be sent to the server.
-- You can monitor the load operation by connecting to the different signals
-- of /@resource@/.
type WebViewResourceLoadStartedCallback =
    WebKit2.WebResource.WebResource
    -- ^ /@resource@/: a t'GI.WebKit2.Objects.WebResource.WebResource'
    -> WebKit2.URIRequest.URIRequest
    -- ^ /@request@/: a t'GI.WebKit2.Objects.URIRequest.URIRequest'
    -> IO ()

type C_WebViewResourceLoadStartedCallback =
    Ptr WebView ->                          -- object
    Ptr WebKit2.WebResource.WebResource ->
    Ptr WebKit2.URIRequest.URIRequest ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_WebViewResourceLoadStartedCallback`.
foreign import ccall "wrapper"
    mk_WebViewResourceLoadStartedCallback :: C_WebViewResourceLoadStartedCallback -> IO (FunPtr C_WebViewResourceLoadStartedCallback)

wrap_WebViewResourceLoadStartedCallback :: 
    GObject a => (a -> WebViewResourceLoadStartedCallback) ->
    C_WebViewResourceLoadStartedCallback
wrap_WebViewResourceLoadStartedCallback gi'cb gi'selfPtr resource request _ = do
    resource' <- (newObject WebKit2.WebResource.WebResource) resource
    request' <- (newObject WebKit2.URIRequest.URIRequest) request
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  resource' request'


-- | Connect a signal handler for the [resourceLoadStarted](#signal:resourceLoadStarted) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webView #resourceLoadStarted callback
-- @
-- 
-- 
onWebViewResourceLoadStarted :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewResourceLoadStartedCallback) -> m SignalHandlerId
onWebViewResourceLoadStarted obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewResourceLoadStartedCallback wrapped
    wrapped'' <- mk_WebViewResourceLoadStartedCallback wrapped'
    connectSignalFunPtr obj "resource-load-started" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [resourceLoadStarted](#signal:resourceLoadStarted) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webView #resourceLoadStarted callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebViewResourceLoadStarted :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewResourceLoadStartedCallback) -> m SignalHandlerId
afterWebViewResourceLoadStarted obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewResourceLoadStartedCallback wrapped
    wrapped'' <- mk_WebViewResourceLoadStartedCallback wrapped'
    connectSignalFunPtr obj "resource-load-started" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebViewResourceLoadStartedSignalInfo
instance SignalInfo WebViewResourceLoadStartedSignalInfo where
    type HaskellCallbackType WebViewResourceLoadStartedSignalInfo = WebViewResourceLoadStartedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebViewResourceLoadStartedCallback cb
        cb'' <- mk_WebViewResourceLoadStartedCallback cb'
        connectSignalFunPtr obj "resource-load-started" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView::resource-load-started"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:signal:resourceLoadStarted"})

#endif

-- signal WebView::run-as-modal
-- | Emitted after [WebView::readyToShow]("GI.WebKit2.Objects.WebView#g:signal:readyToShow") on the newly
-- created t'GI.WebKit2.Objects.WebView.WebView' when JavaScript code calls
-- \<function>window.showModalDialog\<\/function>. The purpose of
-- this signal is to allow the client application to prepare the
-- new view to behave as modal. Once the signal is emitted a new
-- main loop will be run to block user interaction in the parent
-- t'GI.WebKit2.Objects.WebView.WebView' until the new dialog is closed.
type WebViewRunAsModalCallback =
    IO ()

type C_WebViewRunAsModalCallback =
    Ptr WebView ->                          -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_WebViewRunAsModalCallback`.
foreign import ccall "wrapper"
    mk_WebViewRunAsModalCallback :: C_WebViewRunAsModalCallback -> IO (FunPtr C_WebViewRunAsModalCallback)

wrap_WebViewRunAsModalCallback :: 
    GObject a => (a -> WebViewRunAsModalCallback) ->
    C_WebViewRunAsModalCallback
wrap_WebViewRunAsModalCallback gi'cb gi'selfPtr _ = do
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self) 


-- | Connect a signal handler for the [runAsModal](#signal:runAsModal) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webView #runAsModal callback
-- @
-- 
-- 
onWebViewRunAsModal :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewRunAsModalCallback) -> m SignalHandlerId
onWebViewRunAsModal obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewRunAsModalCallback wrapped
    wrapped'' <- mk_WebViewRunAsModalCallback wrapped'
    connectSignalFunPtr obj "run-as-modal" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [runAsModal](#signal:runAsModal) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webView #runAsModal callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebViewRunAsModal :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewRunAsModalCallback) -> m SignalHandlerId
afterWebViewRunAsModal obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewRunAsModalCallback wrapped
    wrapped'' <- mk_WebViewRunAsModalCallback wrapped'
    connectSignalFunPtr obj "run-as-modal" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebViewRunAsModalSignalInfo
instance SignalInfo WebViewRunAsModalSignalInfo where
    type HaskellCallbackType WebViewRunAsModalSignalInfo = WebViewRunAsModalCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebViewRunAsModalCallback cb
        cb'' <- mk_WebViewRunAsModalCallback cb'
        connectSignalFunPtr obj "run-as-modal" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView::run-as-modal"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:signal:runAsModal"})

#endif

-- signal WebView::run-color-chooser
-- | This signal is emitted when the user interacts with a \<input
-- type=\'color\' \/> HTML element, requesting from WebKit to show
-- a dialog to select a color. To let the application know the details of
-- the color chooser, as well as to allow the client application to either
-- cancel the request or perform an actual color selection, the signal will
-- pass an instance of the t'GI.WebKit2.Objects.ColorChooserRequest.ColorChooserRequest' in the /@request@/
-- argument.
-- 
-- It is possible to handle this request asynchronously by increasing the
-- reference count of the request.
-- 
-- The default signal handler will asynchronously run a regular
-- t'GI.Gtk.Interfaces.ColorChooser.ColorChooser' for the user to interact with.
-- 
-- /Since: 2.8/
type WebViewRunColorChooserCallback =
    WebKit2.ColorChooserRequest.ColorChooserRequest
    -- ^ /@request@/: a t'GI.WebKit2.Objects.ColorChooserRequest.ColorChooserRequest'
    -> IO Bool
    -- ^ __Returns:__ 'P.True' to stop other handlers from being invoked for the event.
    --   'P.False' to propagate the event further.

type C_WebViewRunColorChooserCallback =
    Ptr WebView ->                          -- object
    Ptr WebKit2.ColorChooserRequest.ColorChooserRequest ->
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_WebViewRunColorChooserCallback`.
foreign import ccall "wrapper"
    mk_WebViewRunColorChooserCallback :: C_WebViewRunColorChooserCallback -> IO (FunPtr C_WebViewRunColorChooserCallback)

wrap_WebViewRunColorChooserCallback :: 
    GObject a => (a -> WebViewRunColorChooserCallback) ->
    C_WebViewRunColorChooserCallback
wrap_WebViewRunColorChooserCallback gi'cb gi'selfPtr request _ = do
    request' <- (newObject WebKit2.ColorChooserRequest.ColorChooserRequest) request
    result <- B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  request'
    let result' = (P.fromIntegral . P.fromEnum) result
    return result'


-- | Connect a signal handler for the [runColorChooser](#signal:runColorChooser) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webView #runColorChooser callback
-- @
-- 
-- 
onWebViewRunColorChooser :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewRunColorChooserCallback) -> m SignalHandlerId
onWebViewRunColorChooser obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewRunColorChooserCallback wrapped
    wrapped'' <- mk_WebViewRunColorChooserCallback wrapped'
    connectSignalFunPtr obj "run-color-chooser" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [runColorChooser](#signal:runColorChooser) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webView #runColorChooser callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebViewRunColorChooser :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewRunColorChooserCallback) -> m SignalHandlerId
afterWebViewRunColorChooser obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewRunColorChooserCallback wrapped
    wrapped'' <- mk_WebViewRunColorChooserCallback wrapped'
    connectSignalFunPtr obj "run-color-chooser" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebViewRunColorChooserSignalInfo
instance SignalInfo WebViewRunColorChooserSignalInfo where
    type HaskellCallbackType WebViewRunColorChooserSignalInfo = WebViewRunColorChooserCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebViewRunColorChooserCallback cb
        cb'' <- mk_WebViewRunColorChooserCallback cb'
        connectSignalFunPtr obj "run-color-chooser" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView::run-color-chooser"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:signal:runColorChooser"})

#endif

-- signal WebView::run-file-chooser
-- | This signal is emitted when the user interacts with a \<input
-- type=\'file\' \/> HTML element, requesting from WebKit to show
-- a dialog to select one or more files to be uploaded. To let the
-- application know the details of the file chooser, as well as to
-- allow the client application to either cancel the request or
-- perform an actual selection of files, the signal will pass an
-- instance of the t'GI.WebKit2.Objects.FileChooserRequest.FileChooserRequest' in the /@request@/
-- argument.
-- 
-- The default signal handler will asynchronously run a regular
-- t'GI.Gtk.Objects.FileChooserDialog.FileChooserDialog' for the user to interact with.
type WebViewRunFileChooserCallback =
    WebKit2.FileChooserRequest.FileChooserRequest
    -- ^ /@request@/: a t'GI.WebKit2.Objects.FileChooserRequest.FileChooserRequest'
    -> IO Bool
    -- ^ __Returns:__ 'P.True' to stop other handlers from being invoked for the event.
    --   'P.False' to propagate the event further.

type C_WebViewRunFileChooserCallback =
    Ptr WebView ->                          -- object
    Ptr WebKit2.FileChooserRequest.FileChooserRequest ->
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_WebViewRunFileChooserCallback`.
foreign import ccall "wrapper"
    mk_WebViewRunFileChooserCallback :: C_WebViewRunFileChooserCallback -> IO (FunPtr C_WebViewRunFileChooserCallback)

wrap_WebViewRunFileChooserCallback :: 
    GObject a => (a -> WebViewRunFileChooserCallback) ->
    C_WebViewRunFileChooserCallback
wrap_WebViewRunFileChooserCallback gi'cb gi'selfPtr request _ = do
    request' <- (newObject WebKit2.FileChooserRequest.FileChooserRequest) request
    result <- B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  request'
    let result' = (P.fromIntegral . P.fromEnum) result
    return result'


-- | Connect a signal handler for the [runFileChooser](#signal:runFileChooser) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webView #runFileChooser callback
-- @
-- 
-- 
onWebViewRunFileChooser :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewRunFileChooserCallback) -> m SignalHandlerId
onWebViewRunFileChooser obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewRunFileChooserCallback wrapped
    wrapped'' <- mk_WebViewRunFileChooserCallback wrapped'
    connectSignalFunPtr obj "run-file-chooser" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [runFileChooser](#signal:runFileChooser) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webView #runFileChooser callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebViewRunFileChooser :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewRunFileChooserCallback) -> m SignalHandlerId
afterWebViewRunFileChooser obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewRunFileChooserCallback wrapped
    wrapped'' <- mk_WebViewRunFileChooserCallback wrapped'
    connectSignalFunPtr obj "run-file-chooser" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebViewRunFileChooserSignalInfo
instance SignalInfo WebViewRunFileChooserSignalInfo where
    type HaskellCallbackType WebViewRunFileChooserSignalInfo = WebViewRunFileChooserCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebViewRunFileChooserCallback cb
        cb'' <- mk_WebViewRunFileChooserCallback cb'
        connectSignalFunPtr obj "run-file-chooser" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView::run-file-chooser"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:signal:runFileChooser"})

#endif

-- signal WebView::script-dialog
-- | Emitted when JavaScript code calls \<function>window.alert\<\/function>,
-- \<function>window.confirm\<\/function> or \<function>window.prompt\<\/function>,
-- or when \<function>onbeforeunload\<\/function> event is fired.
-- The /@dialog@/ parameter should be used to build the dialog.
-- If the signal is not handled a different dialog will be built and shown depending
-- on the dialog type:
-- \<itemizedlist>
-- \<listitem>\<para>
--  'GI.WebKit2.Enums.ScriptDialogTypeAlert': message dialog with a single Close button.
-- \<\/para>\<\/listitem>
-- \<listitem>\<para>
--  'GI.WebKit2.Enums.ScriptDialogTypeConfirm': message dialog with OK and Cancel buttons.
-- \<\/para>\<\/listitem>
-- \<listitem>\<para>
--  'GI.WebKit2.Enums.ScriptDialogTypePrompt': message dialog with OK and Cancel buttons and
--  a text entry with the default text.
-- \<\/para>\<\/listitem>
-- \<listitem>\<para>
--  'GI.WebKit2.Enums.ScriptDialogTypeBeforeUnloadConfirm': message dialog with Stay and Leave buttons.
-- \<\/para>\<\/listitem>
-- \<\/itemizedlist>
-- 
-- It is possible to handle the script dialog request asynchronously, by simply
-- caling 'GI.WebKit2.Structs.ScriptDialog.scriptDialogRef' on the /@dialog@/ argument and calling
-- 'GI.WebKit2.Structs.ScriptDialog.scriptDialogClose' when done.
-- If the last reference is removed on a t'GI.WebKit2.Structs.ScriptDialog.ScriptDialog' and the dialog has not been
-- closed, 'GI.WebKit2.Structs.ScriptDialog.scriptDialogClose' will be called.
type WebViewScriptDialogCallback =
    WebKit2.ScriptDialog.ScriptDialog
    -- ^ /@dialog@/: the t'GI.WebKit2.Structs.ScriptDialog.ScriptDialog' to show
    -> IO Bool
    -- ^ __Returns:__ 'P.True' to stop other handlers from being invoked for the event.
    --    'P.False' to propagate the event further.

type C_WebViewScriptDialogCallback =
    Ptr WebView ->                          -- object
    Ptr WebKit2.ScriptDialog.ScriptDialog ->
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_WebViewScriptDialogCallback`.
foreign import ccall "wrapper"
    mk_WebViewScriptDialogCallback :: C_WebViewScriptDialogCallback -> IO (FunPtr C_WebViewScriptDialogCallback)

wrap_WebViewScriptDialogCallback :: 
    GObject a => (a -> WebViewScriptDialogCallback) ->
    C_WebViewScriptDialogCallback
wrap_WebViewScriptDialogCallback gi'cb gi'selfPtr dialog _ = do
    B.ManagedPtr.withTransient  dialog $ \dialog' -> do
        result <- B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  dialog'
        let result' = (P.fromIntegral . P.fromEnum) result
        return result'


-- | Connect a signal handler for the [scriptDialog](#signal:scriptDialog) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webView #scriptDialog callback
-- @
-- 
-- 
onWebViewScriptDialog :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewScriptDialogCallback) -> m SignalHandlerId
onWebViewScriptDialog obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewScriptDialogCallback wrapped
    wrapped'' <- mk_WebViewScriptDialogCallback wrapped'
    connectSignalFunPtr obj "script-dialog" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [scriptDialog](#signal:scriptDialog) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webView #scriptDialog callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebViewScriptDialog :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewScriptDialogCallback) -> m SignalHandlerId
afterWebViewScriptDialog obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewScriptDialogCallback wrapped
    wrapped'' <- mk_WebViewScriptDialogCallback wrapped'
    connectSignalFunPtr obj "script-dialog" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebViewScriptDialogSignalInfo
instance SignalInfo WebViewScriptDialogSignalInfo where
    type HaskellCallbackType WebViewScriptDialogSignalInfo = WebViewScriptDialogCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebViewScriptDialogCallback cb
        cb'' <- mk_WebViewScriptDialogCallback cb'
        connectSignalFunPtr obj "script-dialog" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView::script-dialog"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:signal:scriptDialog"})

#endif

-- signal WebView::show-notification
-- | This signal is emitted when a notification should be presented to the
-- user. The /@notification@/ is kept alive until either: 1) the web page cancels it
-- or 2) a navigation happens.
-- 
-- The default handler will emit a notification using libnotify, if built with
-- support for it.
-- 
-- /Since: 2.8/
type WebViewShowNotificationCallback =
    WebKit2.Notification.Notification
    -- ^ /@notification@/: a t'GI.WebKit2.Objects.Notification.Notification'
    -> IO Bool
    -- ^ __Returns:__ 'P.True' to stop other handlers from being invoked. 'P.False' otherwise.

type C_WebViewShowNotificationCallback =
    Ptr WebView ->                          -- object
    Ptr WebKit2.Notification.Notification ->
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_WebViewShowNotificationCallback`.
foreign import ccall "wrapper"
    mk_WebViewShowNotificationCallback :: C_WebViewShowNotificationCallback -> IO (FunPtr C_WebViewShowNotificationCallback)

wrap_WebViewShowNotificationCallback :: 
    GObject a => (a -> WebViewShowNotificationCallback) ->
    C_WebViewShowNotificationCallback
wrap_WebViewShowNotificationCallback gi'cb gi'selfPtr notification _ = do
    notification' <- (newObject WebKit2.Notification.Notification) notification
    result <- B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  notification'
    let result' = (P.fromIntegral . P.fromEnum) result
    return result'


-- | Connect a signal handler for the [showNotification](#signal:showNotification) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webView #showNotification callback
-- @
-- 
-- 
onWebViewShowNotification :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewShowNotificationCallback) -> m SignalHandlerId
onWebViewShowNotification obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewShowNotificationCallback wrapped
    wrapped'' <- mk_WebViewShowNotificationCallback wrapped'
    connectSignalFunPtr obj "show-notification" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [showNotification](#signal:showNotification) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webView #showNotification callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebViewShowNotification :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewShowNotificationCallback) -> m SignalHandlerId
afterWebViewShowNotification obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewShowNotificationCallback wrapped
    wrapped'' <- mk_WebViewShowNotificationCallback wrapped'
    connectSignalFunPtr obj "show-notification" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebViewShowNotificationSignalInfo
instance SignalInfo WebViewShowNotificationSignalInfo where
    type HaskellCallbackType WebViewShowNotificationSignalInfo = WebViewShowNotificationCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebViewShowNotificationCallback cb
        cb'' <- mk_WebViewShowNotificationCallback cb'
        connectSignalFunPtr obj "show-notification" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView::show-notification"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:signal:showNotification"})

#endif

-- signal WebView::show-option-menu
-- | This signal is emitted when a select element in /@webView@/ needs to display a
-- dropdown menu. This signal can be used to show a custom menu, using /@menu@/ to get
-- the details of all items that should be displayed. The area of the element in the
-- t'GI.WebKit2.Objects.WebView.WebView' is given as /@rectangle@/ parameter, it can be used to position the
-- menu. If this was triggered by a user interaction, like a mouse click,
-- /@event@/ parameter provides the t'GI.Gdk.Unions.Event.Event'.
-- To handle this signal asynchronously you should keep a ref of the /@menu@/.
-- 
-- The /@event@/ parameter is now deprecated. Use 'GI.WebKit2.Objects.OptionMenu.optionMenuGetEvent' to get the
-- t'GI.Gdk.Unions.Event.Event' that triggered the dropdown menu.
-- 
-- The default signal handler will pop up a t'GI.Gtk.Objects.Menu.Menu'.
-- 
-- /Since: 2.18/
type WebViewShowOptionMenuCallback =
    WebKit2.OptionMenu.OptionMenu
    -- ^ /@menu@/: the t'GI.WebKit2.Objects.OptionMenu.OptionMenu'
    -> Gdk.Event.Event
    -- ^ /@event@/: the t'GI.Gdk.Unions.Event.Event' that triggered the menu, or 'P.Nothing'. Deprecated 2.40
    -> Gdk.Rectangle.Rectangle
    -- ^ /@rectangle@/: the option element area
    -> IO Bool
    -- ^ __Returns:__ 'P.True' to stop other handlers from being invoked for the event.
    --   'P.False' to propagate the event further.

type C_WebViewShowOptionMenuCallback =
    Ptr WebView ->                          -- object
    Ptr WebKit2.OptionMenu.OptionMenu ->
    Ptr Gdk.Event.Event ->
    Ptr Gdk.Rectangle.Rectangle ->
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_WebViewShowOptionMenuCallback`.
foreign import ccall "wrapper"
    mk_WebViewShowOptionMenuCallback :: C_WebViewShowOptionMenuCallback -> IO (FunPtr C_WebViewShowOptionMenuCallback)

wrap_WebViewShowOptionMenuCallback :: 
    GObject a => (a -> WebViewShowOptionMenuCallback) ->
    C_WebViewShowOptionMenuCallback
wrap_WebViewShowOptionMenuCallback gi'cb gi'selfPtr menu event rectangle _ = do
    menu' <- (newObject WebKit2.OptionMenu.OptionMenu) menu
    B.ManagedPtr.withTransient  event $ \event' -> do
        B.ManagedPtr.withTransient  rectangle $ \rectangle' -> do
            result <- B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  menu' event' rectangle'
            let result' = (P.fromIntegral . P.fromEnum) result
            return result'


-- | Connect a signal handler for the [showOptionMenu](#signal:showOptionMenu) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webView #showOptionMenu callback
-- @
-- 
-- 
onWebViewShowOptionMenu :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewShowOptionMenuCallback) -> m SignalHandlerId
onWebViewShowOptionMenu obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewShowOptionMenuCallback wrapped
    wrapped'' <- mk_WebViewShowOptionMenuCallback wrapped'
    connectSignalFunPtr obj "show-option-menu" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [showOptionMenu](#signal:showOptionMenu) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webView #showOptionMenu callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebViewShowOptionMenu :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewShowOptionMenuCallback) -> m SignalHandlerId
afterWebViewShowOptionMenu obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewShowOptionMenuCallback wrapped
    wrapped'' <- mk_WebViewShowOptionMenuCallback wrapped'
    connectSignalFunPtr obj "show-option-menu" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebViewShowOptionMenuSignalInfo
instance SignalInfo WebViewShowOptionMenuSignalInfo where
    type HaskellCallbackType WebViewShowOptionMenuSignalInfo = WebViewShowOptionMenuCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebViewShowOptionMenuCallback cb
        cb'' <- mk_WebViewShowOptionMenuCallback cb'
        connectSignalFunPtr obj "show-option-menu" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView::show-option-menu"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:signal:showOptionMenu"})

#endif

-- signal WebView::submit-form
-- | This signal is emitted when a form is about to be submitted. The /@request@/
-- argument passed contains information about the text fields of the form. This
-- is typically used to store login information that can be used later to
-- pre-fill the form.
-- The form will not be submitted until 'GI.WebKit2.Objects.FormSubmissionRequest.formSubmissionRequestSubmit' is called.
-- 
-- It is possible to handle the form submission request asynchronously, by
-- simply calling 'GI.GObject.Objects.Object.objectRef' on the /@request@/ argument and calling
-- 'GI.WebKit2.Objects.FormSubmissionRequest.formSubmissionRequestSubmit' when done to continue with the form submission.
-- If the last reference is removed on a t'GI.WebKit2.Objects.FormSubmissionRequest.FormSubmissionRequest' and the
-- form has not been submitted, 'GI.WebKit2.Objects.FormSubmissionRequest.formSubmissionRequestSubmit' will be called.
type WebViewSubmitFormCallback =
    WebKit2.FormSubmissionRequest.FormSubmissionRequest
    -- ^ /@request@/: a t'GI.WebKit2.Objects.FormSubmissionRequest.FormSubmissionRequest'
    -> IO ()

type C_WebViewSubmitFormCallback =
    Ptr WebView ->                          -- object
    Ptr WebKit2.FormSubmissionRequest.FormSubmissionRequest ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_WebViewSubmitFormCallback`.
foreign import ccall "wrapper"
    mk_WebViewSubmitFormCallback :: C_WebViewSubmitFormCallback -> IO (FunPtr C_WebViewSubmitFormCallback)

wrap_WebViewSubmitFormCallback :: 
    GObject a => (a -> WebViewSubmitFormCallback) ->
    C_WebViewSubmitFormCallback
wrap_WebViewSubmitFormCallback gi'cb gi'selfPtr request _ = do
    request' <- (newObject WebKit2.FormSubmissionRequest.FormSubmissionRequest) request
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  request'


-- | Connect a signal handler for the [submitForm](#signal:submitForm) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webView #submitForm callback
-- @
-- 
-- 
onWebViewSubmitForm :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewSubmitFormCallback) -> m SignalHandlerId
onWebViewSubmitForm obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewSubmitFormCallback wrapped
    wrapped'' <- mk_WebViewSubmitFormCallback wrapped'
    connectSignalFunPtr obj "submit-form" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [submitForm](#signal:submitForm) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webView #submitForm callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebViewSubmitForm :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewSubmitFormCallback) -> m SignalHandlerId
afterWebViewSubmitForm obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewSubmitFormCallback wrapped
    wrapped'' <- mk_WebViewSubmitFormCallback wrapped'
    connectSignalFunPtr obj "submit-form" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebViewSubmitFormSignalInfo
instance SignalInfo WebViewSubmitFormSignalInfo where
    type HaskellCallbackType WebViewSubmitFormSignalInfo = WebViewSubmitFormCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebViewSubmitFormCallback cb
        cb'' <- mk_WebViewSubmitFormCallback cb'
        connectSignalFunPtr obj "submit-form" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView::submit-form"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:signal:submitForm"})

#endif

-- signal WebView::user-message-received
-- | This signal is emitted when a t'GI.WebKit2.Objects.UserMessage.UserMessage' is received from the
-- @/WebKitWebPage/@ corresponding to /@webView@/. You can reply to the message
-- using 'GI.WebKit2.Objects.UserMessage.userMessageSendReply'.
-- 
-- You can handle the user message asynchronously by calling 'GI.GObject.Objects.Object.objectRef' on
-- /@message@/ and returning 'P.True'. If the last reference of /@message@/ is removed
-- and the message has not been replied to, the operation in the @/WebKitWebPage/@ will
-- finish with error 'GI.WebKit2.Enums.UserMessageErrorMessage'.
-- 
-- /Since: 2.28/
type WebViewUserMessageReceivedCallback =
    WebKit2.UserMessage.UserMessage
    -- ^ /@message@/: the t'GI.WebKit2.Objects.UserMessage.UserMessage' received
    -> IO Bool
    -- ^ __Returns:__ 'P.True' if the message was handled, or 'P.False' otherwise.

type C_WebViewUserMessageReceivedCallback =
    Ptr WebView ->                          -- object
    Ptr WebKit2.UserMessage.UserMessage ->
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_WebViewUserMessageReceivedCallback`.
foreign import ccall "wrapper"
    mk_WebViewUserMessageReceivedCallback :: C_WebViewUserMessageReceivedCallback -> IO (FunPtr C_WebViewUserMessageReceivedCallback)

wrap_WebViewUserMessageReceivedCallback :: 
    GObject a => (a -> WebViewUserMessageReceivedCallback) ->
    C_WebViewUserMessageReceivedCallback
wrap_WebViewUserMessageReceivedCallback gi'cb gi'selfPtr message _ = do
    message' <- (newObject WebKit2.UserMessage.UserMessage) message
    result <- B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  message'
    let result' = (P.fromIntegral . P.fromEnum) result
    return result'


-- | Connect a signal handler for the [userMessageReceived](#signal:userMessageReceived) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webView #userMessageReceived callback
-- @
-- 
-- 
onWebViewUserMessageReceived :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewUserMessageReceivedCallback) -> m SignalHandlerId
onWebViewUserMessageReceived obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewUserMessageReceivedCallback wrapped
    wrapped'' <- mk_WebViewUserMessageReceivedCallback wrapped'
    connectSignalFunPtr obj "user-message-received" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [userMessageReceived](#signal:userMessageReceived) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webView #userMessageReceived callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebViewUserMessageReceived :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewUserMessageReceivedCallback) -> m SignalHandlerId
afterWebViewUserMessageReceived obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewUserMessageReceivedCallback wrapped
    wrapped'' <- mk_WebViewUserMessageReceivedCallback wrapped'
    connectSignalFunPtr obj "user-message-received" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebViewUserMessageReceivedSignalInfo
instance SignalInfo WebViewUserMessageReceivedSignalInfo where
    type HaskellCallbackType WebViewUserMessageReceivedSignalInfo = WebViewUserMessageReceivedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebViewUserMessageReceivedCallback cb
        cb'' <- mk_WebViewUserMessageReceivedCallback cb'
        connectSignalFunPtr obj "user-message-received" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView::user-message-received"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:signal:userMessageReceived"})

#endif

-- signal WebView::web-process-crashed
{-# DEPRECATED WebViewWebProcessCrashedCallback ["(Since version 2.20)","Use WebKitWebView[webProcessTerminated](#g:signal:webProcessTerminated) instead."] #-}
-- | This signal is emitted when the web process crashes.
type WebViewWebProcessCrashedCallback =
    IO Bool
    -- ^ __Returns:__ 'P.True' to stop other handlers from being invoked for the event.
    --    'P.False' to propagate the event further.

type C_WebViewWebProcessCrashedCallback =
    Ptr WebView ->                          -- object
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_WebViewWebProcessCrashedCallback`.
foreign import ccall "wrapper"
    mk_WebViewWebProcessCrashedCallback :: C_WebViewWebProcessCrashedCallback -> IO (FunPtr C_WebViewWebProcessCrashedCallback)

wrap_WebViewWebProcessCrashedCallback :: 
    GObject a => (a -> WebViewWebProcessCrashedCallback) ->
    C_WebViewWebProcessCrashedCallback
wrap_WebViewWebProcessCrashedCallback gi'cb gi'selfPtr _ = do
    result <- B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self) 
    let result' = (P.fromIntegral . P.fromEnum) result
    return result'


-- | Connect a signal handler for the [webProcessCrashed](#signal:webProcessCrashed) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webView #webProcessCrashed callback
-- @
-- 
-- 
onWebViewWebProcessCrashed :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewWebProcessCrashedCallback) -> m SignalHandlerId
onWebViewWebProcessCrashed obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewWebProcessCrashedCallback wrapped
    wrapped'' <- mk_WebViewWebProcessCrashedCallback wrapped'
    connectSignalFunPtr obj "web-process-crashed" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [webProcessCrashed](#signal:webProcessCrashed) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webView #webProcessCrashed callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebViewWebProcessCrashed :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewWebProcessCrashedCallback) -> m SignalHandlerId
afterWebViewWebProcessCrashed obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewWebProcessCrashedCallback wrapped
    wrapped'' <- mk_WebViewWebProcessCrashedCallback wrapped'
    connectSignalFunPtr obj "web-process-crashed" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebViewWebProcessCrashedSignalInfo
instance SignalInfo WebViewWebProcessCrashedSignalInfo where
    type HaskellCallbackType WebViewWebProcessCrashedSignalInfo = WebViewWebProcessCrashedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebViewWebProcessCrashedCallback cb
        cb'' <- mk_WebViewWebProcessCrashedCallback cb'
        connectSignalFunPtr obj "web-process-crashed" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView::web-process-crashed"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:signal:webProcessCrashed"})

#endif

-- signal WebView::web-process-terminated
-- | This signal is emitted when the web process terminates abnormally due
-- to /@reason@/.
-- 
-- /Since: 2.20/
type WebViewWebProcessTerminatedCallback =
    WebKit2.Enums.WebProcessTerminationReason
    -- ^ /@reason@/: the a t'GI.WebKit2.Enums.WebProcessTerminationReason'
    -> IO ()

type C_WebViewWebProcessTerminatedCallback =
    Ptr WebView ->                          -- object
    CUInt ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_WebViewWebProcessTerminatedCallback`.
foreign import ccall "wrapper"
    mk_WebViewWebProcessTerminatedCallback :: C_WebViewWebProcessTerminatedCallback -> IO (FunPtr C_WebViewWebProcessTerminatedCallback)

wrap_WebViewWebProcessTerminatedCallback :: 
    GObject a => (a -> WebViewWebProcessTerminatedCallback) ->
    C_WebViewWebProcessTerminatedCallback
wrap_WebViewWebProcessTerminatedCallback gi'cb gi'selfPtr reason _ = do
    let reason' = (toEnum . fromIntegral) reason
    B.ManagedPtr.withNewObject gi'selfPtr $ \gi'self -> gi'cb (Coerce.coerce gi'self)  reason'


-- | Connect a signal handler for the [webProcessTerminated](#signal:webProcessTerminated) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' webView #webProcessTerminated callback
-- @
-- 
-- 
onWebViewWebProcessTerminated :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewWebProcessTerminatedCallback) -> m SignalHandlerId
onWebViewWebProcessTerminated obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewWebProcessTerminatedCallback wrapped
    wrapped'' <- mk_WebViewWebProcessTerminatedCallback wrapped'
    connectSignalFunPtr obj "web-process-terminated" wrapped'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [webProcessTerminated](#signal:webProcessTerminated) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' webView #webProcessTerminated callback
-- @
-- 
-- 
-- 
-- By default the object invoking the signal is not passed to the callback.
-- If you need to access it, you can use the implit @?self@ parameter.
-- Note that this requires activating the @ImplicitParams@ GHC extension.
-- 
afterWebViewWebProcessTerminated :: (IsWebView a, MonadIO m) => a -> ((?self :: a) => WebViewWebProcessTerminatedCallback) -> m SignalHandlerId
afterWebViewWebProcessTerminated obj cb = liftIO $ do
    let wrapped self = let ?self = self in cb
    let wrapped' = wrap_WebViewWebProcessTerminatedCallback wrapped
    wrapped'' <- mk_WebViewWebProcessTerminatedCallback wrapped'
    connectSignalFunPtr obj "web-process-terminated" wrapped'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data WebViewWebProcessTerminatedSignalInfo
instance SignalInfo WebViewWebProcessTerminatedSignalInfo where
    type HaskellCallbackType WebViewWebProcessTerminatedSignalInfo = WebViewWebProcessTerminatedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_WebViewWebProcessTerminatedCallback cb
        cb'' <- mk_WebViewWebProcessTerminatedCallback cb'
        connectSignalFunPtr obj "web-process-terminated" cb'' connectMode detail
    dbgSignalInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView::web-process-terminated"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:signal:webProcessTerminated"})

#endif

-- VVV Prop "automation-presentation-type"
   -- Type: TInterface (Name {namespace = "WebKit2", name = "AutomationBrowsingContextPresentation"})
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@automation-presentation-type@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' webView #automationPresentationType
-- @
getWebViewAutomationPresentationType :: (MonadIO m, IsWebView o) => o -> m WebKit2.Enums.AutomationBrowsingContextPresentation
getWebViewAutomationPresentationType obj = MIO.liftIO $ B.Properties.getObjectPropertyEnum obj "automation-presentation-type"

-- | Construct a t'GValueConstruct' with valid value for the “@automation-presentation-type@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWebViewAutomationPresentationType :: (IsWebView o, MIO.MonadIO m) => WebKit2.Enums.AutomationBrowsingContextPresentation -> m (GValueConstruct o)
constructWebViewAutomationPresentationType val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyEnum "automation-presentation-type" val

#if defined(ENABLE_OVERLOADING)
data WebViewAutomationPresentationTypePropertyInfo
instance AttrInfo WebViewAutomationPresentationTypePropertyInfo where
    type AttrAllowedOps WebViewAutomationPresentationTypePropertyInfo = '[ 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint WebViewAutomationPresentationTypePropertyInfo = IsWebView
    type AttrSetTypeConstraint WebViewAutomationPresentationTypePropertyInfo = (~) WebKit2.Enums.AutomationBrowsingContextPresentation
    type AttrTransferTypeConstraint WebViewAutomationPresentationTypePropertyInfo = (~) WebKit2.Enums.AutomationBrowsingContextPresentation
    type AttrTransferType WebViewAutomationPresentationTypePropertyInfo = WebKit2.Enums.AutomationBrowsingContextPresentation
    type AttrGetType WebViewAutomationPresentationTypePropertyInfo = WebKit2.Enums.AutomationBrowsingContextPresentation
    type AttrLabel WebViewAutomationPresentationTypePropertyInfo = "automation-presentation-type"
    type AttrOrigin WebViewAutomationPresentationTypePropertyInfo = WebView
    attrGet = getWebViewAutomationPresentationType
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructWebViewAutomationPresentationType
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.automationPresentationType"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:attr:automationPresentationType"
        })
#endif

-- VVV Prop "camera-capture-state"
   -- Type: TInterface (Name {namespace = "WebKit2", name = "MediaCaptureState"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@camera-capture-state@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' webView #cameraCaptureState
-- @
getWebViewCameraCaptureState :: (MonadIO m, IsWebView o) => o -> m WebKit2.Enums.MediaCaptureState
getWebViewCameraCaptureState obj = MIO.liftIO $ B.Properties.getObjectPropertyEnum obj "camera-capture-state"

-- | Set the value of the “@camera-capture-state@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' webView [ #cameraCaptureState 'Data.GI.Base.Attributes.:=' value ]
-- @
setWebViewCameraCaptureState :: (MonadIO m, IsWebView o) => o -> WebKit2.Enums.MediaCaptureState -> m ()
setWebViewCameraCaptureState obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyEnum obj "camera-capture-state" val

-- | Construct a t'GValueConstruct' with valid value for the “@camera-capture-state@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWebViewCameraCaptureState :: (IsWebView o, MIO.MonadIO m) => WebKit2.Enums.MediaCaptureState -> m (GValueConstruct o)
constructWebViewCameraCaptureState val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyEnum "camera-capture-state" val

#if defined(ENABLE_OVERLOADING)
data WebViewCameraCaptureStatePropertyInfo
instance AttrInfo WebViewCameraCaptureStatePropertyInfo where
    type AttrAllowedOps WebViewCameraCaptureStatePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint WebViewCameraCaptureStatePropertyInfo = IsWebView
    type AttrSetTypeConstraint WebViewCameraCaptureStatePropertyInfo = (~) WebKit2.Enums.MediaCaptureState
    type AttrTransferTypeConstraint WebViewCameraCaptureStatePropertyInfo = (~) WebKit2.Enums.MediaCaptureState
    type AttrTransferType WebViewCameraCaptureStatePropertyInfo = WebKit2.Enums.MediaCaptureState
    type AttrGetType WebViewCameraCaptureStatePropertyInfo = WebKit2.Enums.MediaCaptureState
    type AttrLabel WebViewCameraCaptureStatePropertyInfo = "camera-capture-state"
    type AttrOrigin WebViewCameraCaptureStatePropertyInfo = WebView
    attrGet = getWebViewCameraCaptureState
    attrSet = setWebViewCameraCaptureState
    attrPut = setWebViewCameraCaptureState
    attrTransfer _ v = do
        return v
    attrConstruct = constructWebViewCameraCaptureState
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.cameraCaptureState"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:attr:cameraCaptureState"
        })
#endif

-- VVV Prop "default-content-security-policy"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just True,Nothing)

-- | Get the value of the “@default-content-security-policy@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' webView #defaultContentSecurityPolicy
-- @
getWebViewDefaultContentSecurityPolicy :: (MonadIO m, IsWebView o) => o -> m (Maybe T.Text)
getWebViewDefaultContentSecurityPolicy obj = MIO.liftIO $ B.Properties.getObjectPropertyString obj "default-content-security-policy"

-- | Construct a t'GValueConstruct' with valid value for the “@default-content-security-policy@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWebViewDefaultContentSecurityPolicy :: (IsWebView o, MIO.MonadIO m) => T.Text -> m (GValueConstruct o)
constructWebViewDefaultContentSecurityPolicy val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyString "default-content-security-policy" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data WebViewDefaultContentSecurityPolicyPropertyInfo
instance AttrInfo WebViewDefaultContentSecurityPolicyPropertyInfo where
    type AttrAllowedOps WebViewDefaultContentSecurityPolicyPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint WebViewDefaultContentSecurityPolicyPropertyInfo = IsWebView
    type AttrSetTypeConstraint WebViewDefaultContentSecurityPolicyPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint WebViewDefaultContentSecurityPolicyPropertyInfo = (~) T.Text
    type AttrTransferType WebViewDefaultContentSecurityPolicyPropertyInfo = T.Text
    type AttrGetType WebViewDefaultContentSecurityPolicyPropertyInfo = (Maybe T.Text)
    type AttrLabel WebViewDefaultContentSecurityPolicyPropertyInfo = "default-content-security-policy"
    type AttrOrigin WebViewDefaultContentSecurityPolicyPropertyInfo = WebView
    attrGet = getWebViewDefaultContentSecurityPolicy
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructWebViewDefaultContentSecurityPolicy
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.defaultContentSecurityPolicy"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:attr:defaultContentSecurityPolicy"
        })
#endif

-- VVV Prop "display-capture-state"
   -- Type: TInterface (Name {namespace = "WebKit2", name = "MediaCaptureState"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@display-capture-state@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' webView #displayCaptureState
-- @
getWebViewDisplayCaptureState :: (MonadIO m, IsWebView o) => o -> m WebKit2.Enums.MediaCaptureState
getWebViewDisplayCaptureState obj = MIO.liftIO $ B.Properties.getObjectPropertyEnum obj "display-capture-state"

-- | Set the value of the “@display-capture-state@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' webView [ #displayCaptureState 'Data.GI.Base.Attributes.:=' value ]
-- @
setWebViewDisplayCaptureState :: (MonadIO m, IsWebView o) => o -> WebKit2.Enums.MediaCaptureState -> m ()
setWebViewDisplayCaptureState obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyEnum obj "display-capture-state" val

-- | Construct a t'GValueConstruct' with valid value for the “@display-capture-state@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWebViewDisplayCaptureState :: (IsWebView o, MIO.MonadIO m) => WebKit2.Enums.MediaCaptureState -> m (GValueConstruct o)
constructWebViewDisplayCaptureState val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyEnum "display-capture-state" val

#if defined(ENABLE_OVERLOADING)
data WebViewDisplayCaptureStatePropertyInfo
instance AttrInfo WebViewDisplayCaptureStatePropertyInfo where
    type AttrAllowedOps WebViewDisplayCaptureStatePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint WebViewDisplayCaptureStatePropertyInfo = IsWebView
    type AttrSetTypeConstraint WebViewDisplayCaptureStatePropertyInfo = (~) WebKit2.Enums.MediaCaptureState
    type AttrTransferTypeConstraint WebViewDisplayCaptureStatePropertyInfo = (~) WebKit2.Enums.MediaCaptureState
    type AttrTransferType WebViewDisplayCaptureStatePropertyInfo = WebKit2.Enums.MediaCaptureState
    type AttrGetType WebViewDisplayCaptureStatePropertyInfo = WebKit2.Enums.MediaCaptureState
    type AttrLabel WebViewDisplayCaptureStatePropertyInfo = "display-capture-state"
    type AttrOrigin WebViewDisplayCaptureStatePropertyInfo = WebView
    attrGet = getWebViewDisplayCaptureState
    attrSet = setWebViewDisplayCaptureState
    attrPut = setWebViewDisplayCaptureState
    attrTransfer _ v = do
        return v
    attrConstruct = constructWebViewDisplayCaptureState
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.displayCaptureState"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:attr:displayCaptureState"
        })
#endif

-- VVV Prop "editable"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@editable@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' webView #editable
-- @
getWebViewEditable :: (MonadIO m, IsWebView o) => o -> m Bool
getWebViewEditable obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "editable"

-- | Set the value of the “@editable@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' webView [ #editable 'Data.GI.Base.Attributes.:=' value ]
-- @
setWebViewEditable :: (MonadIO m, IsWebView o) => o -> Bool -> m ()
setWebViewEditable obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "editable" val

-- | Construct a t'GValueConstruct' with valid value for the “@editable@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWebViewEditable :: (IsWebView o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructWebViewEditable val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "editable" val

#if defined(ENABLE_OVERLOADING)
data WebViewEditablePropertyInfo
instance AttrInfo WebViewEditablePropertyInfo where
    type AttrAllowedOps WebViewEditablePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint WebViewEditablePropertyInfo = IsWebView
    type AttrSetTypeConstraint WebViewEditablePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint WebViewEditablePropertyInfo = (~) Bool
    type AttrTransferType WebViewEditablePropertyInfo = Bool
    type AttrGetType WebViewEditablePropertyInfo = Bool
    type AttrLabel WebViewEditablePropertyInfo = "editable"
    type AttrOrigin WebViewEditablePropertyInfo = WebView
    attrGet = getWebViewEditable
    attrSet = setWebViewEditable
    attrPut = setWebViewEditable
    attrTransfer _ v = do
        return v
    attrConstruct = constructWebViewEditable
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.editable"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:attr:editable"
        })
#endif

-- VVV Prop "estimated-load-progress"
   -- Type: TBasicType TDouble
   -- Flags: [PropertyReadable]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@estimated-load-progress@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' webView #estimatedLoadProgress
-- @
getWebViewEstimatedLoadProgress :: (MonadIO m, IsWebView o) => o -> m Double
getWebViewEstimatedLoadProgress obj = MIO.liftIO $ B.Properties.getObjectPropertyDouble obj "estimated-load-progress"

#if defined(ENABLE_OVERLOADING)
data WebViewEstimatedLoadProgressPropertyInfo
instance AttrInfo WebViewEstimatedLoadProgressPropertyInfo where
    type AttrAllowedOps WebViewEstimatedLoadProgressPropertyInfo = '[ 'AttrGet]
    type AttrBaseTypeConstraint WebViewEstimatedLoadProgressPropertyInfo = IsWebView
    type AttrSetTypeConstraint WebViewEstimatedLoadProgressPropertyInfo = (~) ()
    type AttrTransferTypeConstraint WebViewEstimatedLoadProgressPropertyInfo = (~) ()
    type AttrTransferType WebViewEstimatedLoadProgressPropertyInfo = ()
    type AttrGetType WebViewEstimatedLoadProgressPropertyInfo = Double
    type AttrLabel WebViewEstimatedLoadProgressPropertyInfo = "estimated-load-progress"
    type AttrOrigin WebViewEstimatedLoadProgressPropertyInfo = WebView
    attrGet = getWebViewEstimatedLoadProgress
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.estimatedLoadProgress"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:attr:estimatedLoadProgress"
        })
#endif

-- VVV Prop "favicon"
   -- Type: TBasicType TPtr
   -- Flags: [PropertyReadable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@favicon@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' webView #favicon
-- @
getWebViewFavicon :: (MonadIO m, IsWebView o) => o -> m (Ptr ())
getWebViewFavicon obj = MIO.liftIO $ B.Properties.getObjectPropertyPtr obj "favicon"

#if defined(ENABLE_OVERLOADING)
data WebViewFaviconPropertyInfo
instance AttrInfo WebViewFaviconPropertyInfo where
    type AttrAllowedOps WebViewFaviconPropertyInfo = '[ 'AttrGet]
    type AttrBaseTypeConstraint WebViewFaviconPropertyInfo = IsWebView
    type AttrSetTypeConstraint WebViewFaviconPropertyInfo = (~) ()
    type AttrTransferTypeConstraint WebViewFaviconPropertyInfo = (~) ()
    type AttrTransferType WebViewFaviconPropertyInfo = ()
    type AttrGetType WebViewFaviconPropertyInfo = (Ptr ())
    type AttrLabel WebViewFaviconPropertyInfo = "favicon"
    type AttrOrigin WebViewFaviconPropertyInfo = WebView
    attrGet = getWebViewFavicon
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.favicon"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:attr:favicon"
        })
#endif

-- VVV Prop "is-controlled-by-automation"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@is-controlled-by-automation@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' webView #isControlledByAutomation
-- @
getWebViewIsControlledByAutomation :: (MonadIO m, IsWebView o) => o -> m Bool
getWebViewIsControlledByAutomation obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "is-controlled-by-automation"

-- | Construct a t'GValueConstruct' with valid value for the “@is-controlled-by-automation@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWebViewIsControlledByAutomation :: (IsWebView o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructWebViewIsControlledByAutomation val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "is-controlled-by-automation" val

#if defined(ENABLE_OVERLOADING)
data WebViewIsControlledByAutomationPropertyInfo
instance AttrInfo WebViewIsControlledByAutomationPropertyInfo where
    type AttrAllowedOps WebViewIsControlledByAutomationPropertyInfo = '[ 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint WebViewIsControlledByAutomationPropertyInfo = IsWebView
    type AttrSetTypeConstraint WebViewIsControlledByAutomationPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint WebViewIsControlledByAutomationPropertyInfo = (~) Bool
    type AttrTransferType WebViewIsControlledByAutomationPropertyInfo = Bool
    type AttrGetType WebViewIsControlledByAutomationPropertyInfo = Bool
    type AttrLabel WebViewIsControlledByAutomationPropertyInfo = "is-controlled-by-automation"
    type AttrOrigin WebViewIsControlledByAutomationPropertyInfo = WebView
    attrGet = getWebViewIsControlledByAutomation
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructWebViewIsControlledByAutomation
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.isControlledByAutomation"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:attr:isControlledByAutomation"
        })
#endif

-- VVV Prop "is-ephemeral"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@is-ephemeral@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' webView #isEphemeral
-- @
getWebViewIsEphemeral :: (MonadIO m, IsWebView o) => o -> m Bool
getWebViewIsEphemeral obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "is-ephemeral"

-- | Construct a t'GValueConstruct' with valid value for the “@is-ephemeral@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWebViewIsEphemeral :: (IsWebView o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructWebViewIsEphemeral val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "is-ephemeral" val

#if defined(ENABLE_OVERLOADING)
data WebViewIsEphemeralPropertyInfo
instance AttrInfo WebViewIsEphemeralPropertyInfo where
    type AttrAllowedOps WebViewIsEphemeralPropertyInfo = '[ 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint WebViewIsEphemeralPropertyInfo = IsWebView
    type AttrSetTypeConstraint WebViewIsEphemeralPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint WebViewIsEphemeralPropertyInfo = (~) Bool
    type AttrTransferType WebViewIsEphemeralPropertyInfo = Bool
    type AttrGetType WebViewIsEphemeralPropertyInfo = Bool
    type AttrLabel WebViewIsEphemeralPropertyInfo = "is-ephemeral"
    type AttrOrigin WebViewIsEphemeralPropertyInfo = WebView
    attrGet = getWebViewIsEphemeral
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructWebViewIsEphemeral
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.isEphemeral"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:attr:isEphemeral"
        })
#endif

-- VVV Prop "is-immersive-mode-enabled"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@is-immersive-mode-enabled@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' webView #isImmersiveModeEnabled
-- @
getWebViewIsImmersiveModeEnabled :: (MonadIO m, IsWebView o) => o -> m Bool
getWebViewIsImmersiveModeEnabled obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "is-immersive-mode-enabled"

#if defined(ENABLE_OVERLOADING)
data WebViewIsImmersiveModeEnabledPropertyInfo
instance AttrInfo WebViewIsImmersiveModeEnabledPropertyInfo where
    type AttrAllowedOps WebViewIsImmersiveModeEnabledPropertyInfo = '[ 'AttrGet]
    type AttrBaseTypeConstraint WebViewIsImmersiveModeEnabledPropertyInfo = IsWebView
    type AttrSetTypeConstraint WebViewIsImmersiveModeEnabledPropertyInfo = (~) ()
    type AttrTransferTypeConstraint WebViewIsImmersiveModeEnabledPropertyInfo = (~) ()
    type AttrTransferType WebViewIsImmersiveModeEnabledPropertyInfo = ()
    type AttrGetType WebViewIsImmersiveModeEnabledPropertyInfo = Bool
    type AttrLabel WebViewIsImmersiveModeEnabledPropertyInfo = "is-immersive-mode-enabled"
    type AttrOrigin WebViewIsImmersiveModeEnabledPropertyInfo = WebView
    attrGet = getWebViewIsImmersiveModeEnabled
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.isImmersiveModeEnabled"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:attr:isImmersiveModeEnabled"
        })
#endif

-- VVV Prop "is-loading"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@is-loading@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' webView #isLoading
-- @
getWebViewIsLoading :: (MonadIO m, IsWebView o) => o -> m Bool
getWebViewIsLoading obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "is-loading"

#if defined(ENABLE_OVERLOADING)
data WebViewIsLoadingPropertyInfo
instance AttrInfo WebViewIsLoadingPropertyInfo where
    type AttrAllowedOps WebViewIsLoadingPropertyInfo = '[ 'AttrGet]
    type AttrBaseTypeConstraint WebViewIsLoadingPropertyInfo = IsWebView
    type AttrSetTypeConstraint WebViewIsLoadingPropertyInfo = (~) ()
    type AttrTransferTypeConstraint WebViewIsLoadingPropertyInfo = (~) ()
    type AttrTransferType WebViewIsLoadingPropertyInfo = ()
    type AttrGetType WebViewIsLoadingPropertyInfo = Bool
    type AttrLabel WebViewIsLoadingPropertyInfo = "is-loading"
    type AttrOrigin WebViewIsLoadingPropertyInfo = WebView
    attrGet = getWebViewIsLoading
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.isLoading"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:attr:isLoading"
        })
#endif

-- VVV Prop "is-muted"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@is-muted@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' webView #isMuted
-- @
getWebViewIsMuted :: (MonadIO m, IsWebView o) => o -> m Bool
getWebViewIsMuted obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "is-muted"

-- | Set the value of the “@is-muted@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' webView [ #isMuted 'Data.GI.Base.Attributes.:=' value ]
-- @
setWebViewIsMuted :: (MonadIO m, IsWebView o) => o -> Bool -> m ()
setWebViewIsMuted obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyBool obj "is-muted" val

-- | Construct a t'GValueConstruct' with valid value for the “@is-muted@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWebViewIsMuted :: (IsWebView o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructWebViewIsMuted val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyBool "is-muted" val

#if defined(ENABLE_OVERLOADING)
data WebViewIsMutedPropertyInfo
instance AttrInfo WebViewIsMutedPropertyInfo where
    type AttrAllowedOps WebViewIsMutedPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint WebViewIsMutedPropertyInfo = IsWebView
    type AttrSetTypeConstraint WebViewIsMutedPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint WebViewIsMutedPropertyInfo = (~) Bool
    type AttrTransferType WebViewIsMutedPropertyInfo = Bool
    type AttrGetType WebViewIsMutedPropertyInfo = Bool
    type AttrLabel WebViewIsMutedPropertyInfo = "is-muted"
    type AttrOrigin WebViewIsMutedPropertyInfo = WebView
    attrGet = getWebViewIsMuted
    attrSet = setWebViewIsMuted
    attrPut = setWebViewIsMuted
    attrTransfer _ v = do
        return v
    attrConstruct = constructWebViewIsMuted
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.isMuted"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:attr:isMuted"
        })
#endif

-- VVV Prop "is-playing-audio"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@is-playing-audio@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' webView #isPlayingAudio
-- @
getWebViewIsPlayingAudio :: (MonadIO m, IsWebView o) => o -> m Bool
getWebViewIsPlayingAudio obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "is-playing-audio"

#if defined(ENABLE_OVERLOADING)
data WebViewIsPlayingAudioPropertyInfo
instance AttrInfo WebViewIsPlayingAudioPropertyInfo where
    type AttrAllowedOps WebViewIsPlayingAudioPropertyInfo = '[ 'AttrGet]
    type AttrBaseTypeConstraint WebViewIsPlayingAudioPropertyInfo = IsWebView
    type AttrSetTypeConstraint WebViewIsPlayingAudioPropertyInfo = (~) ()
    type AttrTransferTypeConstraint WebViewIsPlayingAudioPropertyInfo = (~) ()
    type AttrTransferType WebViewIsPlayingAudioPropertyInfo = ()
    type AttrGetType WebViewIsPlayingAudioPropertyInfo = Bool
    type AttrLabel WebViewIsPlayingAudioPropertyInfo = "is-playing-audio"
    type AttrOrigin WebViewIsPlayingAudioPropertyInfo = WebView
    attrGet = getWebViewIsPlayingAudio
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.isPlayingAudio"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:attr:isPlayingAudio"
        })
#endif

-- VVV Prop "is-web-process-responsive"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@is-web-process-responsive@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' webView #isWebProcessResponsive
-- @
getWebViewIsWebProcessResponsive :: (MonadIO m, IsWebView o) => o -> m Bool
getWebViewIsWebProcessResponsive obj = MIO.liftIO $ B.Properties.getObjectPropertyBool obj "is-web-process-responsive"

#if defined(ENABLE_OVERLOADING)
data WebViewIsWebProcessResponsivePropertyInfo
instance AttrInfo WebViewIsWebProcessResponsivePropertyInfo where
    type AttrAllowedOps WebViewIsWebProcessResponsivePropertyInfo = '[ 'AttrGet]
    type AttrBaseTypeConstraint WebViewIsWebProcessResponsivePropertyInfo = IsWebView
    type AttrSetTypeConstraint WebViewIsWebProcessResponsivePropertyInfo = (~) ()
    type AttrTransferTypeConstraint WebViewIsWebProcessResponsivePropertyInfo = (~) ()
    type AttrTransferType WebViewIsWebProcessResponsivePropertyInfo = ()
    type AttrGetType WebViewIsWebProcessResponsivePropertyInfo = Bool
    type AttrLabel WebViewIsWebProcessResponsivePropertyInfo = "is-web-process-responsive"
    type AttrOrigin WebViewIsWebProcessResponsivePropertyInfo = WebView
    attrGet = getWebViewIsWebProcessResponsive
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.isWebProcessResponsive"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:attr:isWebProcessResponsive"
        })
#endif

-- VVV Prop "microphone-capture-state"
   -- Type: TInterface (Name {namespace = "WebKit2", name = "MediaCaptureState"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@microphone-capture-state@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' webView #microphoneCaptureState
-- @
getWebViewMicrophoneCaptureState :: (MonadIO m, IsWebView o) => o -> m WebKit2.Enums.MediaCaptureState
getWebViewMicrophoneCaptureState obj = MIO.liftIO $ B.Properties.getObjectPropertyEnum obj "microphone-capture-state"

-- | Set the value of the “@microphone-capture-state@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' webView [ #microphoneCaptureState 'Data.GI.Base.Attributes.:=' value ]
-- @
setWebViewMicrophoneCaptureState :: (MonadIO m, IsWebView o) => o -> WebKit2.Enums.MediaCaptureState -> m ()
setWebViewMicrophoneCaptureState obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyEnum obj "microphone-capture-state" val

-- | Construct a t'GValueConstruct' with valid value for the “@microphone-capture-state@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWebViewMicrophoneCaptureState :: (IsWebView o, MIO.MonadIO m) => WebKit2.Enums.MediaCaptureState -> m (GValueConstruct o)
constructWebViewMicrophoneCaptureState val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyEnum "microphone-capture-state" val

#if defined(ENABLE_OVERLOADING)
data WebViewMicrophoneCaptureStatePropertyInfo
instance AttrInfo WebViewMicrophoneCaptureStatePropertyInfo where
    type AttrAllowedOps WebViewMicrophoneCaptureStatePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint WebViewMicrophoneCaptureStatePropertyInfo = IsWebView
    type AttrSetTypeConstraint WebViewMicrophoneCaptureStatePropertyInfo = (~) WebKit2.Enums.MediaCaptureState
    type AttrTransferTypeConstraint WebViewMicrophoneCaptureStatePropertyInfo = (~) WebKit2.Enums.MediaCaptureState
    type AttrTransferType WebViewMicrophoneCaptureStatePropertyInfo = WebKit2.Enums.MediaCaptureState
    type AttrGetType WebViewMicrophoneCaptureStatePropertyInfo = WebKit2.Enums.MediaCaptureState
    type AttrLabel WebViewMicrophoneCaptureStatePropertyInfo = "microphone-capture-state"
    type AttrOrigin WebViewMicrophoneCaptureStatePropertyInfo = WebView
    attrGet = getWebViewMicrophoneCaptureState
    attrSet = setWebViewMicrophoneCaptureState
    attrPut = setWebViewMicrophoneCaptureState
    attrTransfer _ v = do
        return v
    attrConstruct = constructWebViewMicrophoneCaptureState
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.microphoneCaptureState"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:attr:microphoneCaptureState"
        })
#endif

-- VVV Prop "page-id"
   -- Type: TBasicType TUInt64
   -- Flags: [PropertyReadable]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@page-id@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' webView #pageId
-- @
getWebViewPageId :: (MonadIO m, IsWebView o) => o -> m Word64
getWebViewPageId obj = MIO.liftIO $ B.Properties.getObjectPropertyUInt64 obj "page-id"

#if defined(ENABLE_OVERLOADING)
data WebViewPageIdPropertyInfo
instance AttrInfo WebViewPageIdPropertyInfo where
    type AttrAllowedOps WebViewPageIdPropertyInfo = '[ 'AttrGet]
    type AttrBaseTypeConstraint WebViewPageIdPropertyInfo = IsWebView
    type AttrSetTypeConstraint WebViewPageIdPropertyInfo = (~) ()
    type AttrTransferTypeConstraint WebViewPageIdPropertyInfo = (~) ()
    type AttrTransferType WebViewPageIdPropertyInfo = ()
    type AttrGetType WebViewPageIdPropertyInfo = Word64
    type AttrLabel WebViewPageIdPropertyInfo = "page-id"
    type AttrOrigin WebViewPageIdPropertyInfo = WebView
    attrGet = getWebViewPageId
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.pageId"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:attr:pageId"
        })
#endif

-- VVV Prop "related-view"
   -- Type: TInterface (Name {namespace = "WebKit2", name = "WebView"})
   -- Flags: [PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Construct a t'GValueConstruct' with valid value for the “@related-view@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWebViewRelatedView :: (IsWebView o, MIO.MonadIO m, IsWebView a) => a -> m (GValueConstruct o)
constructWebViewRelatedView val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyObject "related-view" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data WebViewRelatedViewPropertyInfo
instance AttrInfo WebViewRelatedViewPropertyInfo where
    type AttrAllowedOps WebViewRelatedViewPropertyInfo = '[ 'AttrConstruct, 'AttrClear]
    type AttrBaseTypeConstraint WebViewRelatedViewPropertyInfo = IsWebView
    type AttrSetTypeConstraint WebViewRelatedViewPropertyInfo = IsWebView
    type AttrTransferTypeConstraint WebViewRelatedViewPropertyInfo = IsWebView
    type AttrTransferType WebViewRelatedViewPropertyInfo = WebView
    type AttrGetType WebViewRelatedViewPropertyInfo = ()
    type AttrLabel WebViewRelatedViewPropertyInfo = "related-view"
    type AttrOrigin WebViewRelatedViewPropertyInfo = WebView
    attrGet = undefined
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        unsafeCastTo WebView v
    attrConstruct = constructWebViewRelatedView
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.relatedView"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:attr:relatedView"
        })
#endif

-- VVV Prop "settings"
   -- Type: TInterface (Name {namespace = "WebKit2", name = "Settings"})
   -- Flags: [PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Set the value of the “@settings@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' webView [ #settings 'Data.GI.Base.Attributes.:=' value ]
-- @
setWebViewSettings :: (MonadIO m, IsWebView o, WebKit2.Settings.IsSettings a) => o -> a -> m ()
setWebViewSettings obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyObject obj "settings" (Just val)

-- | Construct a t'GValueConstruct' with valid value for the “@settings@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWebViewSettings :: (IsWebView o, MIO.MonadIO m, WebKit2.Settings.IsSettings a) => a -> m (GValueConstruct o)
constructWebViewSettings val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyObject "settings" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data WebViewSettingsPropertyInfo
instance AttrInfo WebViewSettingsPropertyInfo where
    type AttrAllowedOps WebViewSettingsPropertyInfo = '[ 'AttrSet, 'AttrConstruct]
    type AttrBaseTypeConstraint WebViewSettingsPropertyInfo = IsWebView
    type AttrSetTypeConstraint WebViewSettingsPropertyInfo = WebKit2.Settings.IsSettings
    type AttrTransferTypeConstraint WebViewSettingsPropertyInfo = WebKit2.Settings.IsSettings
    type AttrTransferType WebViewSettingsPropertyInfo = WebKit2.Settings.Settings
    type AttrGetType WebViewSettingsPropertyInfo = ()
    type AttrLabel WebViewSettingsPropertyInfo = "settings"
    type AttrOrigin WebViewSettingsPropertyInfo = WebView
    attrGet = undefined
    attrSet = setWebViewSettings
    attrPut = undefined
    attrTransfer _ v = do
        unsafeCastTo WebKit2.Settings.Settings v
    attrConstruct = constructWebViewSettings
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.settings"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:attr:settings"
        })
#endif

-- VVV Prop "theme-color"
   -- Type: TInterface (Name {namespace = "Gdk", name = "RGBA"})
   -- Flags: [PropertyReadable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@theme-color@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' webView #themeColor
-- @
getWebViewThemeColor :: (MonadIO m, IsWebView o) => o -> m (Maybe Gdk.RGBA.RGBA)
getWebViewThemeColor obj = MIO.liftIO $ B.Properties.getObjectPropertyBoxed obj "theme-color" Gdk.RGBA.RGBA

#if defined(ENABLE_OVERLOADING)
data WebViewThemeColorPropertyInfo
instance AttrInfo WebViewThemeColorPropertyInfo where
    type AttrAllowedOps WebViewThemeColorPropertyInfo = '[ 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint WebViewThemeColorPropertyInfo = IsWebView
    type AttrSetTypeConstraint WebViewThemeColorPropertyInfo = (~) ()
    type AttrTransferTypeConstraint WebViewThemeColorPropertyInfo = (~) ()
    type AttrTransferType WebViewThemeColorPropertyInfo = ()
    type AttrGetType WebViewThemeColorPropertyInfo = (Maybe Gdk.RGBA.RGBA)
    type AttrLabel WebViewThemeColorPropertyInfo = "theme-color"
    type AttrOrigin WebViewThemeColorPropertyInfo = WebView
    attrGet = getWebViewThemeColor
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.themeColor"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:attr:themeColor"
        })
#endif

-- VVV Prop "title"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable]
   -- Nullable: (Just True,Nothing)

-- | Get the value of the “@title@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' webView #title
-- @
getWebViewTitle :: (MonadIO m, IsWebView o) => o -> m (Maybe T.Text)
getWebViewTitle obj = MIO.liftIO $ B.Properties.getObjectPropertyString obj "title"

#if defined(ENABLE_OVERLOADING)
data WebViewTitlePropertyInfo
instance AttrInfo WebViewTitlePropertyInfo where
    type AttrAllowedOps WebViewTitlePropertyInfo = '[ 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint WebViewTitlePropertyInfo = IsWebView
    type AttrSetTypeConstraint WebViewTitlePropertyInfo = (~) ()
    type AttrTransferTypeConstraint WebViewTitlePropertyInfo = (~) ()
    type AttrTransferType WebViewTitlePropertyInfo = ()
    type AttrGetType WebViewTitlePropertyInfo = (Maybe T.Text)
    type AttrLabel WebViewTitlePropertyInfo = "title"
    type AttrOrigin WebViewTitlePropertyInfo = WebView
    attrGet = getWebViewTitle
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.title"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:attr:title"
        })
#endif

-- VVV Prop "uri"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable]
   -- Nullable: (Just True,Nothing)

-- | Get the value of the “@uri@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' webView #uri
-- @
getWebViewUri :: (MonadIO m, IsWebView o) => o -> m (Maybe T.Text)
getWebViewUri obj = MIO.liftIO $ B.Properties.getObjectPropertyString obj "uri"

#if defined(ENABLE_OVERLOADING)
data WebViewUriPropertyInfo
instance AttrInfo WebViewUriPropertyInfo where
    type AttrAllowedOps WebViewUriPropertyInfo = '[ 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint WebViewUriPropertyInfo = IsWebView
    type AttrSetTypeConstraint WebViewUriPropertyInfo = (~) ()
    type AttrTransferTypeConstraint WebViewUriPropertyInfo = (~) ()
    type AttrTransferType WebViewUriPropertyInfo = ()
    type AttrGetType WebViewUriPropertyInfo = (Maybe T.Text)
    type AttrLabel WebViewUriPropertyInfo = "uri"
    type AttrOrigin WebViewUriPropertyInfo = WebView
    attrGet = getWebViewUri
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.uri"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:attr:uri"
        })
#endif

-- VVV Prop "user-content-manager"
   -- Type: TInterface (Name {namespace = "WebKit2", name = "UserContentManager"})
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@user-content-manager@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' webView #userContentManager
-- @
getWebViewUserContentManager :: (MonadIO m, IsWebView o) => o -> m WebKit2.UserContentManager.UserContentManager
getWebViewUserContentManager obj = MIO.liftIO $ checkUnexpectedNothing "getWebViewUserContentManager" $ B.Properties.getObjectPropertyObject obj "user-content-manager" WebKit2.UserContentManager.UserContentManager

-- | Construct a t'GValueConstruct' with valid value for the “@user-content-manager@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWebViewUserContentManager :: (IsWebView o, MIO.MonadIO m, WebKit2.UserContentManager.IsUserContentManager a) => a -> m (GValueConstruct o)
constructWebViewUserContentManager val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyObject "user-content-manager" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data WebViewUserContentManagerPropertyInfo
instance AttrInfo WebViewUserContentManagerPropertyInfo where
    type AttrAllowedOps WebViewUserContentManagerPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint WebViewUserContentManagerPropertyInfo = IsWebView
    type AttrSetTypeConstraint WebViewUserContentManagerPropertyInfo = WebKit2.UserContentManager.IsUserContentManager
    type AttrTransferTypeConstraint WebViewUserContentManagerPropertyInfo = WebKit2.UserContentManager.IsUserContentManager
    type AttrTransferType WebViewUserContentManagerPropertyInfo = WebKit2.UserContentManager.UserContentManager
    type AttrGetType WebViewUserContentManagerPropertyInfo = WebKit2.UserContentManager.UserContentManager
    type AttrLabel WebViewUserContentManagerPropertyInfo = "user-content-manager"
    type AttrOrigin WebViewUserContentManagerPropertyInfo = WebView
    attrGet = getWebViewUserContentManager
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        unsafeCastTo WebKit2.UserContentManager.UserContentManager v
    attrConstruct = constructWebViewUserContentManager
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.userContentManager"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:attr:userContentManager"
        })
#endif

-- VVV Prop "web-context"
   -- Type: TInterface (Name {namespace = "WebKit2", name = "WebContext"})
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@web-context@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' webView #webContext
-- @
getWebViewWebContext :: (MonadIO m, IsWebView o) => o -> m (Maybe WebKit2.WebContext.WebContext)
getWebViewWebContext obj = MIO.liftIO $ B.Properties.getObjectPropertyObject obj "web-context" WebKit2.WebContext.WebContext

-- | Construct a t'GValueConstruct' with valid value for the “@web-context@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWebViewWebContext :: (IsWebView o, MIO.MonadIO m, WebKit2.WebContext.IsWebContext a) => a -> m (GValueConstruct o)
constructWebViewWebContext val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyObject "web-context" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data WebViewWebContextPropertyInfo
instance AttrInfo WebViewWebContextPropertyInfo where
    type AttrAllowedOps WebViewWebContextPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint WebViewWebContextPropertyInfo = IsWebView
    type AttrSetTypeConstraint WebViewWebContextPropertyInfo = WebKit2.WebContext.IsWebContext
    type AttrTransferTypeConstraint WebViewWebContextPropertyInfo = WebKit2.WebContext.IsWebContext
    type AttrTransferType WebViewWebContextPropertyInfo = WebKit2.WebContext.WebContext
    type AttrGetType WebViewWebContextPropertyInfo = (Maybe WebKit2.WebContext.WebContext)
    type AttrLabel WebViewWebContextPropertyInfo = "web-context"
    type AttrOrigin WebViewWebContextPropertyInfo = WebView
    attrGet = getWebViewWebContext
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        unsafeCastTo WebKit2.WebContext.WebContext v
    attrConstruct = constructWebViewWebContext
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webContext"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:attr:webContext"
        })
#endif

-- VVV Prop "web-extension-mode"
   -- Type: TInterface (Name {namespace = "WebKit2", name = "WebExtensionMode"})
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@web-extension-mode@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' webView #webExtensionMode
-- @
getWebViewWebExtensionMode :: (MonadIO m, IsWebView o) => o -> m WebKit2.Enums.WebExtensionMode
getWebViewWebExtensionMode obj = MIO.liftIO $ B.Properties.getObjectPropertyEnum obj "web-extension-mode"

-- | Construct a t'GValueConstruct' with valid value for the “@web-extension-mode@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWebViewWebExtensionMode :: (IsWebView o, MIO.MonadIO m) => WebKit2.Enums.WebExtensionMode -> m (GValueConstruct o)
constructWebViewWebExtensionMode val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyEnum "web-extension-mode" val

#if defined(ENABLE_OVERLOADING)
data WebViewWebExtensionModePropertyInfo
instance AttrInfo WebViewWebExtensionModePropertyInfo where
    type AttrAllowedOps WebViewWebExtensionModePropertyInfo = '[ 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint WebViewWebExtensionModePropertyInfo = IsWebView
    type AttrSetTypeConstraint WebViewWebExtensionModePropertyInfo = (~) WebKit2.Enums.WebExtensionMode
    type AttrTransferTypeConstraint WebViewWebExtensionModePropertyInfo = (~) WebKit2.Enums.WebExtensionMode
    type AttrTransferType WebViewWebExtensionModePropertyInfo = WebKit2.Enums.WebExtensionMode
    type AttrGetType WebViewWebExtensionModePropertyInfo = WebKit2.Enums.WebExtensionMode
    type AttrLabel WebViewWebExtensionModePropertyInfo = "web-extension-mode"
    type AttrOrigin WebViewWebExtensionModePropertyInfo = WebView
    attrGet = getWebViewWebExtensionMode
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructWebViewWebExtensionMode
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webExtensionMode"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:attr:webExtensionMode"
        })
#endif

-- VVV Prop "website-policies"
   -- Type: TInterface (Name {namespace = "WebKit2", name = "WebsitePolicies"})
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@website-policies@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' webView #websitePolicies
-- @
getWebViewWebsitePolicies :: (MonadIO m, IsWebView o) => o -> m WebKit2.WebsitePolicies.WebsitePolicies
getWebViewWebsitePolicies obj = MIO.liftIO $ checkUnexpectedNothing "getWebViewWebsitePolicies" $ B.Properties.getObjectPropertyObject obj "website-policies" WebKit2.WebsitePolicies.WebsitePolicies

-- | Construct a t'GValueConstruct' with valid value for the “@website-policies@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWebViewWebsitePolicies :: (IsWebView o, MIO.MonadIO m, WebKit2.WebsitePolicies.IsWebsitePolicies a) => a -> m (GValueConstruct o)
constructWebViewWebsitePolicies val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyObject "website-policies" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data WebViewWebsitePoliciesPropertyInfo
instance AttrInfo WebViewWebsitePoliciesPropertyInfo where
    type AttrAllowedOps WebViewWebsitePoliciesPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint WebViewWebsitePoliciesPropertyInfo = IsWebView
    type AttrSetTypeConstraint WebViewWebsitePoliciesPropertyInfo = WebKit2.WebsitePolicies.IsWebsitePolicies
    type AttrTransferTypeConstraint WebViewWebsitePoliciesPropertyInfo = WebKit2.WebsitePolicies.IsWebsitePolicies
    type AttrTransferType WebViewWebsitePoliciesPropertyInfo = WebKit2.WebsitePolicies.WebsitePolicies
    type AttrGetType WebViewWebsitePoliciesPropertyInfo = WebKit2.WebsitePolicies.WebsitePolicies
    type AttrLabel WebViewWebsitePoliciesPropertyInfo = "website-policies"
    type AttrOrigin WebViewWebsitePoliciesPropertyInfo = WebView
    attrGet = getWebViewWebsitePolicies
    attrSet = undefined
    attrPut = undefined
    attrTransfer _ v = do
        unsafeCastTo WebKit2.WebsitePolicies.WebsitePolicies v
    attrConstruct = constructWebViewWebsitePolicies
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.websitePolicies"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:attr:websitePolicies"
        })
#endif

-- VVV Prop "zoom-level"
   -- Type: TBasicType TDouble
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@zoom-level@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' webView #zoomLevel
-- @
getWebViewZoomLevel :: (MonadIO m, IsWebView o) => o -> m Double
getWebViewZoomLevel obj = MIO.liftIO $ B.Properties.getObjectPropertyDouble obj "zoom-level"

-- | Set the value of the “@zoom-level@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' webView [ #zoomLevel 'Data.GI.Base.Attributes.:=' value ]
-- @
setWebViewZoomLevel :: (MonadIO m, IsWebView o) => o -> Double -> m ()
setWebViewZoomLevel obj val = MIO.liftIO $ do
    B.Properties.setObjectPropertyDouble obj "zoom-level" val

-- | Construct a t'GValueConstruct' with valid value for the “@zoom-level@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructWebViewZoomLevel :: (IsWebView o, MIO.MonadIO m) => Double -> m (GValueConstruct o)
constructWebViewZoomLevel val = MIO.liftIO $ do
    MIO.liftIO $ B.Properties.constructObjectPropertyDouble "zoom-level" val

#if defined(ENABLE_OVERLOADING)
data WebViewZoomLevelPropertyInfo
instance AttrInfo WebViewZoomLevelPropertyInfo where
    type AttrAllowedOps WebViewZoomLevelPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrPut]
    type AttrBaseTypeConstraint WebViewZoomLevelPropertyInfo = IsWebView
    type AttrSetTypeConstraint WebViewZoomLevelPropertyInfo = (~) Double
    type AttrTransferTypeConstraint WebViewZoomLevelPropertyInfo = (~) Double
    type AttrTransferType WebViewZoomLevelPropertyInfo = Double
    type AttrGetType WebViewZoomLevelPropertyInfo = Double
    type AttrLabel WebViewZoomLevelPropertyInfo = "zoom-level"
    type AttrOrigin WebViewZoomLevelPropertyInfo = WebView
    attrGet = getWebViewZoomLevel
    attrSet = setWebViewZoomLevel
    attrPut = setWebViewZoomLevel
    attrTransfer _ v = do
        return v
    attrConstruct = constructWebViewZoomLevel
    attrClear = undefined
    dbgAttrInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.zoomLevel"
        , O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#g:attr:zoomLevel"
        })
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList WebView
type instance O.AttributeList WebView = WebViewAttributeList
type WebViewAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("automationPresentationType", WebViewAutomationPresentationTypePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("cameraCaptureState", WebViewCameraCaptureStatePropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("defaultContentSecurityPolicy", WebViewDefaultContentSecurityPolicyPropertyInfo), '("displayCaptureState", WebViewDisplayCaptureStatePropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("editable", WebViewEditablePropertyInfo), '("estimatedLoadProgress", WebViewEstimatedLoadProgressPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("favicon", WebViewFaviconPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("isControlledByAutomation", WebViewIsControlledByAutomationPropertyInfo), '("isEphemeral", WebViewIsEphemeralPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("isImmersiveModeEnabled", WebViewIsImmersiveModeEnabledPropertyInfo), '("isLoading", WebViewIsLoadingPropertyInfo), '("isMuted", WebViewIsMutedPropertyInfo), '("isPlayingAudio", WebViewIsPlayingAudioPropertyInfo), '("isWebProcessResponsive", WebViewIsWebProcessResponsivePropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("microphoneCaptureState", WebViewMicrophoneCaptureStatePropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("pageId", WebViewPageIdPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("relatedView", WebViewRelatedViewPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("settings", WebViewSettingsPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("themeColor", WebViewThemeColorPropertyInfo), '("title", WebViewTitlePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("uri", WebViewUriPropertyInfo), '("userContentManager", WebViewUserContentManagerPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("webContext", WebViewWebContextPropertyInfo), '("webExtensionMode", WebViewWebExtensionModePropertyInfo), '("websitePolicies", WebViewWebsitePoliciesPropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo), '("zoomLevel", WebViewZoomLevelPropertyInfo)] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
webViewAutomationPresentationType :: AttrLabelProxy "automationPresentationType"
webViewAutomationPresentationType = AttrLabelProxy

webViewCameraCaptureState :: AttrLabelProxy "cameraCaptureState"
webViewCameraCaptureState = AttrLabelProxy

webViewDefaultContentSecurityPolicy :: AttrLabelProxy "defaultContentSecurityPolicy"
webViewDefaultContentSecurityPolicy = AttrLabelProxy

webViewDisplayCaptureState :: AttrLabelProxy "displayCaptureState"
webViewDisplayCaptureState = AttrLabelProxy

webViewEditable :: AttrLabelProxy "editable"
webViewEditable = AttrLabelProxy

webViewEstimatedLoadProgress :: AttrLabelProxy "estimatedLoadProgress"
webViewEstimatedLoadProgress = AttrLabelProxy

webViewFavicon :: AttrLabelProxy "favicon"
webViewFavicon = AttrLabelProxy

webViewIsMuted :: AttrLabelProxy "isMuted"
webViewIsMuted = AttrLabelProxy

webViewIsWebProcessResponsive :: AttrLabelProxy "isWebProcessResponsive"
webViewIsWebProcessResponsive = AttrLabelProxy

webViewMicrophoneCaptureState :: AttrLabelProxy "microphoneCaptureState"
webViewMicrophoneCaptureState = AttrLabelProxy

webViewPageId :: AttrLabelProxy "pageId"
webViewPageId = AttrLabelProxy

webViewRelatedView :: AttrLabelProxy "relatedView"
webViewRelatedView = AttrLabelProxy

webViewSettings :: AttrLabelProxy "settings"
webViewSettings = AttrLabelProxy

webViewThemeColor :: AttrLabelProxy "themeColor"
webViewThemeColor = AttrLabelProxy

webViewTitle :: AttrLabelProxy "title"
webViewTitle = AttrLabelProxy

webViewUri :: AttrLabelProxy "uri"
webViewUri = AttrLabelProxy

webViewUserContentManager :: AttrLabelProxy "userContentManager"
webViewUserContentManager = AttrLabelProxy

webViewWebContext :: AttrLabelProxy "webContext"
webViewWebContext = AttrLabelProxy

webViewWebExtensionMode :: AttrLabelProxy "webExtensionMode"
webViewWebExtensionMode = AttrLabelProxy

webViewWebsitePolicies :: AttrLabelProxy "websitePolicies"
webViewWebsitePolicies = AttrLabelProxy

webViewZoomLevel :: AttrLabelProxy "zoomLevel"
webViewZoomLevel = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList WebView = WebViewSignalList
type WebViewSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("authenticate", WebViewAuthenticateSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("close", WebViewCloseSignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("contextMenu", WebViewContextMenuSignalInfo), '("contextMenuDismissed", WebViewContextMenuDismissedSignalInfo), '("create", WebViewCreateSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("decidePolicy", WebViewDecidePolicySignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterFullscreen", WebViewEnterFullscreenSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("insecureContentDetected", WebViewInsecureContentDetectedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveFullscreen", WebViewLeaveFullscreenSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("loadChanged", WebViewLoadChangedSignalInfo), '("loadFailed", WebViewLoadFailedSignalInfo), '("loadFailedWithTlsErrors", WebViewLoadFailedWithTlsErrorsSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("mouseTargetChanged", WebViewMouseTargetChangedSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("permissionRequest", WebViewPermissionRequestSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("print", WebViewPrintSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryPermissionState", WebViewQueryPermissionStateSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("readyToShow", WebViewReadyToShowSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("resourceLoadStarted", WebViewResourceLoadStartedSignalInfo), '("runAsModal", WebViewRunAsModalSignalInfo), '("runColorChooser", WebViewRunColorChooserSignalInfo), '("runFileChooser", WebViewRunFileChooserSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scriptDialog", WebViewScriptDialogSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("showNotification", WebViewShowNotificationSignalInfo), '("showOptionMenu", WebViewShowOptionMenuSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("submitForm", WebViewSubmitFormSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("userMessageReceived", WebViewUserMessageReceivedSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("webProcessCrashed", WebViewWebProcessCrashedSignalInfo), '("webProcessTerminated", WebViewWebProcessTerminatedSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, DK.Type)])

#endif

-- method WebView::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "WebKit2" , name = "WebView" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_new" webkit_web_view_new :: 
    IO (Ptr WebView)

-- | Creates a new t'GI.WebKit2.Objects.WebView.WebView' with the default t'GI.WebKit2.Objects.WebContext.WebContext'.
-- 
-- Creates a new t'GI.WebKit2.Objects.WebView.WebView' with the default t'GI.WebKit2.Objects.WebContext.WebContext' and
-- no t'GI.WebKit2.Objects.UserContentManager.UserContentManager' associated with it.
-- See also 'GI.WebKit2.Objects.WebView.webViewNewWithContext',
-- 'GI.WebKit2.Objects.WebView.webViewNewWithUserContentManager', and
-- 'GI.WebKit2.Objects.WebView.webViewNewWithSettings'.
webViewNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m WebView
    -- ^ __Returns:__ The newly created t'GI.WebKit2.Objects.WebView.WebView' widget
webViewNew  = liftIO $ do
    result <- webkit_web_view_new
    checkUnexpectedReturnNULL "webViewNew" result
    result' <- (newObject WebView) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method WebView::new_with_context
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebContext" }
--           , argCType = Just "WebKitWebContext*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the #WebKitWebContext to be used by the #WebKitWebView"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "WebKit2" , name = "WebView" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_new_with_context" webkit_web_view_new_with_context :: 
    Ptr WebKit2.WebContext.WebContext ->    -- context : TInterface (Name {namespace = "WebKit2", name = "WebContext"})
    IO (Ptr WebView)

-- | Creates a new t'GI.WebKit2.Objects.WebView.WebView' with the given t'GI.WebKit2.Objects.WebContext.WebContext'.
-- 
-- Creates a new t'GI.WebKit2.Objects.WebView.WebView' with the given t'GI.WebKit2.Objects.WebContext.WebContext' and
-- no t'GI.WebKit2.Objects.UserContentManager.UserContentManager' associated with it.
-- See also 'GI.WebKit2.Objects.WebView.webViewNewWithUserContentManager' and
-- 'GI.WebKit2.Objects.WebView.webViewNewWithSettings'.
webViewNewWithContext ::
    (B.CallStack.HasCallStack, MonadIO m, WebKit2.WebContext.IsWebContext a) =>
    a
    -- ^ /@context@/: the t'GI.WebKit2.Objects.WebContext.WebContext' to be used by the t'GI.WebKit2.Objects.WebView.WebView'
    -> m WebView
    -- ^ __Returns:__ The newly created t'GI.WebKit2.Objects.WebView.WebView' widget
webViewNewWithContext context = liftIO $ do
    context' <- unsafeManagedPtrCastPtr context
    result <- webkit_web_view_new_with_context context'
    checkUnexpectedReturnNULL "webViewNewWithContext" result
    result' <- (newObject WebView) result
    touchManagedPtr context
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method WebView::new_with_related_view
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the related #WebKitWebView"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "WebKit2" , name = "WebView" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_new_with_related_view" webkit_web_view_new_with_related_view :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO (Ptr WebView)

-- | Creates a new t'GI.WebKit2.Objects.WebView.WebView' sharing the same web process with /@webView@/.
-- 
-- This method doesn\'t have any effect when 'GI.WebKit2.Enums.ProcessModelSharedSecondaryProcess'
-- process model is used, because a single web process is shared for all the web views in the
-- same t'GI.WebKit2.Objects.WebContext.WebContext'. When using 'GI.WebKit2.Enums.ProcessModelMultipleSecondaryProcesses' process model,
-- this method should always be used when creating the t'GI.WebKit2.Objects.WebView.WebView' in the [WebView::create]("GI.WebKit2.Objects.WebView#g:signal:create") signal.
-- You can also use this method to implement other process models based on 'GI.WebKit2.Enums.ProcessModelMultipleSecondaryProcesses',
-- like for example, sharing the same web process for all the views in the same security domain.
-- 
-- The newly created t'GI.WebKit2.Objects.WebView.WebView' will also have the same t'GI.WebKit2.Objects.UserContentManager.UserContentManager',
-- t'GI.WebKit2.Objects.Settings.Settings', and t'GI.WebKit2.Objects.WebsitePolicies.WebsitePolicies' as /@webView@/.
-- 
-- /Since: 2.4/
webViewNewWithRelatedView ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: the related t'GI.WebKit2.Objects.WebView.WebView'
    -> m WebView
    -- ^ __Returns:__ The newly created t'GI.WebKit2.Objects.WebView.WebView' widget
webViewNewWithRelatedView webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result <- webkit_web_view_new_with_related_view webView'
    checkUnexpectedReturnNULL "webViewNewWithRelatedView" result
    result' <- (wrapObject WebView) result
    touchManagedPtr webView
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method WebView::new_with_settings
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "WebKit2" , name = "WebView" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_new_with_settings" webkit_web_view_new_with_settings :: 
    Ptr WebKit2.Settings.Settings ->        -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO (Ptr WebView)

-- | Creates a new t'GI.WebKit2.Objects.WebView.WebView' with the given t'GI.WebKit2.Objects.Settings.Settings'.
-- 
-- See also 'GI.WebKit2.Objects.WebView.webViewNewWithContext', and
-- 'GI.WebKit2.Objects.WebView.webViewNewWithUserContentManager'.
-- 
-- /Since: 2.6/
webViewNewWithSettings ::
    (B.CallStack.HasCallStack, MonadIO m, WebKit2.Settings.IsSettings a) =>
    a
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m WebView
    -- ^ __Returns:__ The newly created t'GI.WebKit2.Objects.WebView.WebView' widget
webViewNewWithSettings settings = liftIO $ do
    settings' <- unsafeManagedPtrCastPtr settings
    result <- webkit_web_view_new_with_settings settings'
    checkUnexpectedReturnNULL "webViewNewWithSettings" result
    result' <- (newObject WebView) result
    touchManagedPtr settings
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method WebView::new_with_user_content_manager
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "user_content_manager"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "UserContentManager" }
--           , argCType = Just "WebKitUserContentManager*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitUserContentManager."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "WebKit2" , name = "WebView" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_new_with_user_content_manager" webkit_web_view_new_with_user_content_manager :: 
    Ptr WebKit2.UserContentManager.UserContentManager -> -- user_content_manager : TInterface (Name {namespace = "WebKit2", name = "UserContentManager"})
    IO (Ptr WebView)

-- | Creates a new t'GI.WebKit2.Objects.WebView.WebView' with the given t'GI.WebKit2.Objects.UserContentManager.UserContentManager'.
-- 
-- The content loaded in the view may be affected by the content injected
-- in the view by the user content manager.
-- 
-- /Since: 2.6/
webViewNewWithUserContentManager ::
    (B.CallStack.HasCallStack, MonadIO m, WebKit2.UserContentManager.IsUserContentManager a) =>
    a
    -- ^ /@userContentManager@/: a t'GI.WebKit2.Objects.UserContentManager.UserContentManager'.
    -> m WebView
    -- ^ __Returns:__ The newly created t'GI.WebKit2.Objects.WebView.WebView' widget
webViewNewWithUserContentManager userContentManager = liftIO $ do
    userContentManager' <- unsafeManagedPtrCastPtr userContentManager
    result <- webkit_web_view_new_with_user_content_manager userContentManager'
    checkUnexpectedReturnNULL "webViewNewWithUserContentManager" result
    result' <- (newObject WebView) result
    touchManagedPtr userContentManager
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method WebView::call_async_javascript_function
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "body"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the function body" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "length"
--           , argType = TBasicType TSSize
--           , argCType = Just "gssize"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "length of @body, or -1 if @body is a nul-terminated string"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "arguments"
--           , argType = TVariant
--           , argCType = Just "GVariant*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "a #GVariant with format `a{sv}` storing the function arguments, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "world_name"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the name of a #WebKitScriptWorld or %NULL to use the default"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "source_uri"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the source URI" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "cancellable"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "Cancellable" }
--           , argCType = Just "GCancellable*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GCancellable or %NULL to ignore"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "callback"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "AsyncReadyCallback" }
--           , argCType = Just "GAsyncReadyCallback"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a #GAsyncReadyCallback to call when the script finished"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeAsync
--           , argClosure = 8
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "user_data"
--           , argType = TBasicType TPtr
--           , argCType = Just "gpointer"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the data to pass to callback function"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_call_async_javascript_function" webkit_web_view_call_async_javascript_function :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    CString ->                              -- body : TBasicType TUTF8
    DI.Int64 ->                             -- length : TBasicType TSSize
    Ptr GVariant ->                         -- arguments : TVariant
    CString ->                              -- world_name : TBasicType TUTF8
    CString ->                              -- source_uri : TBasicType TUTF8
    Ptr Gio.Cancellable.Cancellable ->      -- cancellable : TInterface (Name {namespace = "Gio", name = "Cancellable"})
    FunPtr Gio.Callbacks.C_AsyncReadyCallback -> -- callback : TInterface (Name {namespace = "Gio", name = "AsyncReadyCallback"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    IO ()

-- | Asynchronously call /@body@/ with /@arguments@/ in the script world with name /@worldName@/ of the main frame current context in /@webView@/.
-- The /@arguments@/ values must be one of the following types, or contain only the following GVariant types: number, string and dictionary.
-- The result of the operation can be a Promise that will be properly passed to the callback.
-- If /@worldName@/ is 'P.Nothing', the default world is used. Any value that is not 'P.Nothing' is a distin ct world.
-- The /@sourceUri@/ will be shown in exceptions and doesn\'t affect the behavior of the script.
-- When not provided, the document URL is used.
-- 
-- Note that if [Settings:enableJavascript]("GI.WebKit2.Objects.Settings#g:attr:enableJavascript") is 'P.False', this method will do nothing.
-- If you want to use this method but still prevent web content from executing its own
-- JavaScript, then use [Settings:enableJavascriptMarkup]("GI.WebKit2.Objects.Settings#g:attr:enableJavascriptMarkup").
-- 
-- When the operation is finished, /@callback@/ will be called. You can then call
-- 'GI.WebKit2.Objects.WebView.webViewCallAsyncJavascriptFunctionFinish' to get the result of the operation.
-- 
-- This is an example that shows how to pass arguments to a JS function that returns a Promise
-- that resolves with the passed argument:
-- 
-- 
-- === /c code/
-- >static void
-- >web_view_javascript_finished (GObject      *object,
-- >                              GAsyncResult *result,
-- >                              gpointer      user_data)
-- >{
-- >    JSCValue               *value;
-- >    GError                 *error = NULL;
-- >
-- >    value = webkit_web_view_call_async_javascript_function_finish (WEBKIT_WEB_VIEW (object), result, &error);
-- >    if (!value) {
-- >        g_warning ("Error running javascript: %s", error->message);
-- >        g_error_free (error);
-- >        return;
-- >    }
-- >
-- >    if (jsc_value_is_number (value)) {
-- >        gint32        int_value = jsc_value_to_string (value);
-- >        JSCException *exception = jsc_context_get_exception (jsc_value_get_context (value));
-- >        if (exception)
-- >            g_warning ("Error running javascript: %s", jsc_exception_get_message (exception));
-- >        else
-- >            g_print ("Script result: %d\n", int_value);
-- >        g_free (str_value);
-- >    } else {
-- >        g_warning ("Error running javascript: unexpected return value");
-- >    }
-- >    g_object_unref (value);
-- >}
-- >
-- >static void
-- >web_view_evaluate_promise (WebKitWebView *web_view)
-- >{
-- >    GVariantDict dict;
-- >    g_variant_dict_init (&dict, NULL);
-- >    g_variant_dict_insert (&dict, "count", "u", 42);
-- >    GVariant *args = g_variant_dict_end (&dict);
-- >    const gchar *body = "return new Promise((resolve) => { resolve(count); });";
-- >    webkit_web_view_call_async_javascript_function (web_view, body, -1, arguments, NULL, NULL, NULL, web_view_javascript_finished, NULL);
-- >}
-- 
-- 
-- /Since: 2.40/
webViewCallAsyncJavascriptFunction ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a, Gio.Cancellable.IsCancellable b) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> T.Text
    -- ^ /@body@/: the function body
    -> DI.Int64
    -- ^ /@length@/: length of /@body@/, or -1 if /@body@/ is a nul-terminated string
    -> Maybe (GVariant)
    -- ^ /@arguments@/: a t'GVariant' with format @a{sv}@ storing the function arguments, or 'P.Nothing'
    -> Maybe (T.Text)
    -- ^ /@worldName@/: the name of a @/WebKitScriptWorld/@ or 'P.Nothing' to use the default
    -> Maybe (T.Text)
    -- ^ /@sourceUri@/: the source URI
    -> Maybe (b)
    -- ^ /@cancellable@/: a t'GI.Gio.Objects.Cancellable.Cancellable' or 'P.Nothing' to ignore
    -> Maybe (Gio.Callbacks.AsyncReadyCallback)
    -- ^ /@callback@/: a t'GI.Gio.Callbacks.AsyncReadyCallback' to call when the script finished
    -> m ()
webViewCallAsyncJavascriptFunction webView body length_ arguments worldName sourceUri cancellable callback = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    body' <- textToCString body
    maybeArguments <- case arguments of
        Nothing -> return FP.nullPtr
        Just jArguments -> do
            jArguments' <- unsafeManagedPtrGetPtr jArguments
            return jArguments'
    maybeWorldName <- case worldName of
        Nothing -> return FP.nullPtr
        Just jWorldName -> do
            jWorldName' <- textToCString jWorldName
            return jWorldName'
    maybeSourceUri <- case sourceUri of
        Nothing -> return FP.nullPtr
        Just jSourceUri -> do
            jSourceUri' <- textToCString jSourceUri
            return jSourceUri'
    maybeCancellable <- case cancellable of
        Nothing -> return FP.nullPtr
        Just jCancellable -> do
            jCancellable' <- unsafeManagedPtrCastPtr jCancellable
            return jCancellable'
    maybeCallback <- case callback of
        Nothing -> return FP.nullFunPtr
        Just jCallback -> do
            ptrcallback <- callocMem :: IO (Ptr (FunPtr Gio.Callbacks.C_AsyncReadyCallback))
            jCallback' <- Gio.Callbacks.mk_AsyncReadyCallback (Gio.Callbacks.wrap_AsyncReadyCallback (Just ptrcallback) (Gio.Callbacks.drop_closures_AsyncReadyCallback jCallback))
            poke ptrcallback jCallback'
            return jCallback'
    let userData = nullPtr
    webkit_web_view_call_async_javascript_function webView' body' length_ maybeArguments maybeWorldName maybeSourceUri maybeCancellable maybeCallback userData
    touchManagedPtr webView
    whenJust arguments touchManagedPtr
    whenJust cancellable touchManagedPtr
    freeMem body'
    freeMem maybeWorldName
    freeMem maybeSourceUri
    return ()

#if defined(ENABLE_OVERLOADING)
data WebViewCallAsyncJavascriptFunctionMethodInfo
instance (signature ~ (T.Text -> DI.Int64 -> Maybe (GVariant) -> Maybe (T.Text) -> Maybe (T.Text) -> Maybe (b) -> Maybe (Gio.Callbacks.AsyncReadyCallback) -> m ()), MonadIO m, IsWebView a, Gio.Cancellable.IsCancellable b) => O.OverloadedMethod WebViewCallAsyncJavascriptFunctionMethodInfo a signature where
    overloadedMethod = webViewCallAsyncJavascriptFunction

instance O.OverloadedMethodInfo WebViewCallAsyncJavascriptFunctionMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewCallAsyncJavascriptFunction",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewCallAsyncJavascriptFunction"
        })


#endif

-- method WebView::call_async_javascript_function_finish
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "result"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "AsyncResult" }
--           , argCType = Just "GAsyncResult*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GAsyncResult" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "JavaScriptCore" , name = "Value" })
-- throws : True
-- Skip return : False

foreign import ccall "webkit_web_view_call_async_javascript_function_finish" webkit_web_view_call_async_javascript_function_finish :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    Ptr Gio.AsyncResult.AsyncResult ->      -- result : TInterface (Name {namespace = "Gio", name = "AsyncResult"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr JavaScriptCore.Value.Value)

-- | Finish an asynchronous operation started with 'GI.WebKit2.Objects.WebView.webViewCallAsyncJavascriptFunction'.
-- 
-- /Since: 2.40/
webViewCallAsyncJavascriptFunctionFinish ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a, Gio.AsyncResult.IsAsyncResult b) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> b
    -- ^ /@result@/: a t'GI.Gio.Interfaces.AsyncResult.AsyncResult'
    -> m JavaScriptCore.Value.Value
    -- ^ __Returns:__ a t'GI.JavaScriptCore.Objects.Value.Value' with the return value of the async function
    --    or 'P.Nothing' in case of error /(Can throw 'Data.GI.Base.GError.GError')/
webViewCallAsyncJavascriptFunctionFinish webView result_ = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result_' <- unsafeManagedPtrCastPtr result_
    onException (do
        result <- propagateGError $ webkit_web_view_call_async_javascript_function_finish webView' result_'
        checkUnexpectedReturnNULL "webViewCallAsyncJavascriptFunctionFinish" result
        result' <- (wrapObject JavaScriptCore.Value.Value) result
        touchManagedPtr webView
        touchManagedPtr result_
        return result'
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data WebViewCallAsyncJavascriptFunctionFinishMethodInfo
instance (signature ~ (b -> m JavaScriptCore.Value.Value), MonadIO m, IsWebView a, Gio.AsyncResult.IsAsyncResult b) => O.OverloadedMethod WebViewCallAsyncJavascriptFunctionFinishMethodInfo a signature where
    overloadedMethod = webViewCallAsyncJavascriptFunctionFinish

instance O.OverloadedMethodInfo WebViewCallAsyncJavascriptFunctionFinishMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewCallAsyncJavascriptFunctionFinish",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewCallAsyncJavascriptFunctionFinish"
        })


#endif

-- method WebView::can_execute_editing_command
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "command"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the command to check"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "cancellable"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "Cancellable" }
--           , argCType = Just "GCancellable*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GCancellable or %NULL to ignore"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "callback"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "AsyncReadyCallback" }
--           , argCType = Just "GAsyncReadyCallback"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a #GAsyncReadyCallback to call when the request is satisfied"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeAsync
--           , argClosure = 4
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "user_data"
--           , argType = TBasicType TPtr
--           , argCType = Just "gpointer"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the data to pass to callback function"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_can_execute_editing_command" webkit_web_view_can_execute_editing_command :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    CString ->                              -- command : TBasicType TUTF8
    Ptr Gio.Cancellable.Cancellable ->      -- cancellable : TInterface (Name {namespace = "Gio", name = "Cancellable"})
    FunPtr Gio.Callbacks.C_AsyncReadyCallback -> -- callback : TInterface (Name {namespace = "Gio", name = "AsyncReadyCallback"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    IO ()

-- | Asynchronously check if it is possible to execute the given editing command.
-- 
-- When the operation is finished, /@callback@/ will be called. You can then call
-- 'GI.WebKit2.Objects.WebView.webViewCanExecuteEditingCommandFinish' to get the result of the operation.
webViewCanExecuteEditingCommand ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a, Gio.Cancellable.IsCancellable b) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> T.Text
    -- ^ /@command@/: the command to check
    -> Maybe (b)
    -- ^ /@cancellable@/: a t'GI.Gio.Objects.Cancellable.Cancellable' or 'P.Nothing' to ignore
    -> Maybe (Gio.Callbacks.AsyncReadyCallback)
    -- ^ /@callback@/: a t'GI.Gio.Callbacks.AsyncReadyCallback' to call when the request is satisfied
    -> m ()
webViewCanExecuteEditingCommand webView command cancellable callback = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    command' <- textToCString command
    maybeCancellable <- case cancellable of
        Nothing -> return FP.nullPtr
        Just jCancellable -> do
            jCancellable' <- unsafeManagedPtrCastPtr jCancellable
            return jCancellable'
    maybeCallback <- case callback of
        Nothing -> return FP.nullFunPtr
        Just jCallback -> do
            ptrcallback <- callocMem :: IO (Ptr (FunPtr Gio.Callbacks.C_AsyncReadyCallback))
            jCallback' <- Gio.Callbacks.mk_AsyncReadyCallback (Gio.Callbacks.wrap_AsyncReadyCallback (Just ptrcallback) (Gio.Callbacks.drop_closures_AsyncReadyCallback jCallback))
            poke ptrcallback jCallback'
            return jCallback'
    let userData = nullPtr
    webkit_web_view_can_execute_editing_command webView' command' maybeCancellable maybeCallback userData
    touchManagedPtr webView
    whenJust cancellable touchManagedPtr
    freeMem command'
    return ()

#if defined(ENABLE_OVERLOADING)
data WebViewCanExecuteEditingCommandMethodInfo
instance (signature ~ (T.Text -> Maybe (b) -> Maybe (Gio.Callbacks.AsyncReadyCallback) -> m ()), MonadIO m, IsWebView a, Gio.Cancellable.IsCancellable b) => O.OverloadedMethod WebViewCanExecuteEditingCommandMethodInfo a signature where
    overloadedMethod = webViewCanExecuteEditingCommand

instance O.OverloadedMethodInfo WebViewCanExecuteEditingCommandMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewCanExecuteEditingCommand",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewCanExecuteEditingCommand"
        })


#endif

-- method WebView::can_execute_editing_command_finish
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "result"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "AsyncResult" }
--           , argCType = Just "GAsyncResult*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GAsyncResult" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "webkit_web_view_can_execute_editing_command_finish" webkit_web_view_can_execute_editing_command_finish :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    Ptr Gio.AsyncResult.AsyncResult ->      -- result : TInterface (Name {namespace = "Gio", name = "AsyncResult"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | Finish an asynchronous operation started with 'GI.WebKit2.Objects.WebView.webViewCanExecuteEditingCommand'.
webViewCanExecuteEditingCommandFinish ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a, Gio.AsyncResult.IsAsyncResult b) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> b
    -- ^ /@result@/: a t'GI.Gio.Interfaces.AsyncResult.AsyncResult'
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
webViewCanExecuteEditingCommandFinish webView result_ = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result_' <- unsafeManagedPtrCastPtr result_
    onException (do
        _ <- propagateGError $ webkit_web_view_can_execute_editing_command_finish webView' result_'
        touchManagedPtr webView
        touchManagedPtr result_
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data WebViewCanExecuteEditingCommandFinishMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsWebView a, Gio.AsyncResult.IsAsyncResult b) => O.OverloadedMethod WebViewCanExecuteEditingCommandFinishMethodInfo a signature where
    overloadedMethod = webViewCanExecuteEditingCommandFinish

instance O.OverloadedMethodInfo WebViewCanExecuteEditingCommandFinishMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewCanExecuteEditingCommandFinish",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewCanExecuteEditingCommandFinish"
        })


#endif

-- method WebView::can_go_back
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_can_go_back" webkit_web_view_can_go_back :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO CInt

-- | Determines whether /@webView@/ has a previous history item.
webViewCanGoBack ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if able to move back or 'P.False' otherwise.
webViewCanGoBack webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result <- webkit_web_view_can_go_back webView'
    let result' = (/= 0) result
    touchManagedPtr webView
    return result'

#if defined(ENABLE_OVERLOADING)
data WebViewCanGoBackMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewCanGoBackMethodInfo a signature where
    overloadedMethod = webViewCanGoBack

instance O.OverloadedMethodInfo WebViewCanGoBackMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewCanGoBack",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewCanGoBack"
        })


#endif

-- method WebView::can_go_forward
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_can_go_forward" webkit_web_view_can_go_forward :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO CInt

-- | Determines whether /@webView@/ has a next history item.
webViewCanGoForward ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if able to move forward or 'P.False' otherwise.
webViewCanGoForward webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result <- webkit_web_view_can_go_forward webView'
    let result' = (/= 0) result
    touchManagedPtr webView
    return result'

#if defined(ENABLE_OVERLOADING)
data WebViewCanGoForwardMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewCanGoForwardMethodInfo a signature where
    overloadedMethod = webViewCanGoForward

instance O.OverloadedMethodInfo WebViewCanGoForwardMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewCanGoForward",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewCanGoForward"
        })


#endif

-- method WebView::can_show_mime_type
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "mime_type"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a MIME type" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_can_show_mime_type" webkit_web_view_can_show_mime_type :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    CString ->                              -- mime_type : TBasicType TUTF8
    IO CInt

-- | Whether or not a MIME type can be displayed in /@webView@/.
webViewCanShowMimeType ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> T.Text
    -- ^ /@mimeType@/: a MIME type
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the MIME type /@mimeType@/ can be displayed or 'P.False' otherwise
webViewCanShowMimeType webView mimeType = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    mimeType' <- textToCString mimeType
    result <- webkit_web_view_can_show_mime_type webView' mimeType'
    let result' = (/= 0) result
    touchManagedPtr webView
    freeMem mimeType'
    return result'

#if defined(ENABLE_OVERLOADING)
data WebViewCanShowMimeTypeMethodInfo
instance (signature ~ (T.Text -> m Bool), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewCanShowMimeTypeMethodInfo a signature where
    overloadedMethod = webViewCanShowMimeType

instance O.OverloadedMethodInfo WebViewCanShowMimeTypeMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewCanShowMimeType",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewCanShowMimeType"
        })


#endif

-- method WebView::download_uri
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "uri"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the URI to download"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "WebKit2" , name = "Download" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_download_uri" webkit_web_view_download_uri :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    CString ->                              -- uri : TBasicType TUTF8
    IO (Ptr WebKit2.Download.Download)

-- | Requests downloading of the specified URI string for /@webView@/.
webViewDownloadUri ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> T.Text
    -- ^ /@uri@/: the URI to download
    -> m WebKit2.Download.Download
    -- ^ __Returns:__ a new t'GI.WebKit2.Objects.Download.Download' representing
    --    the download operation.
webViewDownloadUri webView uri = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    uri' <- textToCString uri
    result <- webkit_web_view_download_uri webView' uri'
    checkUnexpectedReturnNULL "webViewDownloadUri" result
    result' <- (wrapObject WebKit2.Download.Download) result
    touchManagedPtr webView
    freeMem uri'
    return result'

#if defined(ENABLE_OVERLOADING)
data WebViewDownloadUriMethodInfo
instance (signature ~ (T.Text -> m WebKit2.Download.Download), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewDownloadUriMethodInfo a signature where
    overloadedMethod = webViewDownloadUri

instance O.OverloadedMethodInfo WebViewDownloadUriMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewDownloadUri",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewDownloadUri"
        })


#endif

-- method WebView::evaluate_javascript
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "script"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the script to evaluate"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "length"
--           , argType = TBasicType TSSize
--           , argCType = Just "gssize"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "length of @script, or -1 if @script is a nul-terminated string"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "world_name"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the name of a #WebKitScriptWorld or %NULL to use the default"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "source_uri"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the source URI" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "cancellable"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "Cancellable" }
--           , argCType = Just "GCancellable*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GCancellable or %NULL to ignore"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "callback"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "AsyncReadyCallback" }
--           , argCType = Just "GAsyncReadyCallback"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a #GAsyncReadyCallback to call when the script finished"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeAsync
--           , argClosure = 7
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "user_data"
--           , argType = TBasicType TPtr
--           , argCType = Just "gpointer"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the data to pass to callback function"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_evaluate_javascript" webkit_web_view_evaluate_javascript :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    CString ->                              -- script : TBasicType TUTF8
    DI.Int64 ->                             -- length : TBasicType TSSize
    CString ->                              -- world_name : TBasicType TUTF8
    CString ->                              -- source_uri : TBasicType TUTF8
    Ptr Gio.Cancellable.Cancellable ->      -- cancellable : TInterface (Name {namespace = "Gio", name = "Cancellable"})
    FunPtr Gio.Callbacks.C_AsyncReadyCallback -> -- callback : TInterface (Name {namespace = "Gio", name = "AsyncReadyCallback"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    IO ()

-- | Asynchronously evaluate /@script@/ in the script world with name /@worldName@/ of the main frame current context in /@webView@/.
-- If /@worldName@/ is 'P.Nothing', the default world is used. Any value that is not 'P.Nothing' is a distinct world.
-- The /@sourceUri@/ will be shown in exceptions and doesn\'t affect the behavior of the script.
-- When not provided, the document URL is used.
-- 
-- Note that if [Settings:enableJavascript]("GI.WebKit2.Objects.Settings#g:attr:enableJavascript") is 'P.False', this method will do nothing.
-- If you want to use this method but still prevent web content from executing its own
-- JavaScript, then use [Settings:enableJavascriptMarkup]("GI.WebKit2.Objects.Settings#g:attr:enableJavascriptMarkup").
-- 
-- When the operation is finished, /@callback@/ will be called. You can then call
-- 'GI.WebKit2.Objects.WebView.webViewEvaluateJavascriptFinish' to get the result of the operation.
-- 
-- This is an example of using 'GI.WebKit2.Objects.WebView.webViewEvaluateJavascript' with a script returning
-- a string:
-- 
-- 
-- === /c code/
-- >static void
-- >web_view_javascript_finished (GObject      *object,
-- >                              GAsyncResult *result,
-- >                              gpointer      user_data)
-- >{
-- >    JSCValue               *value;
-- >    GError                 *error = NULL;
-- >
-- >    value = webkit_web_view_evaluate_javascript_finish (WEBKIT_WEB_VIEW (object), result, &error);
-- >    if (!value) {
-- >        g_warning ("Error running javascript: %s", error->message);
-- >        g_error_free (error);
-- >        return;
-- >    }
-- >
-- >    if (jsc_value_is_string (value)) {
-- >        gchar        *str_value = jsc_value_to_string (value);
-- >        JSCException *exception = jsc_context_get_exception (jsc_value_get_context (value));
-- >        if (exception)
-- >            g_warning ("Error running javascript: %s", jsc_exception_get_message (exception));
-- >        else
-- >            g_print ("Script result: %s\n", str_value);
-- >        g_free (str_value);
-- >    } else {
-- >        g_warning ("Error running javascript: unexpected return value");
-- >    }
-- >    g_object_unref (value);
-- >}
-- >
-- >static void
-- >web_view_get_link_url (WebKitWebView *web_view,
-- >                       const gchar   *link_id)
-- >{
-- >    gchar *script = g_strdup_printf ("window.document.getElementById('%s').href;", link_id);
-- >    webkit_web_view_evaluate_javascript (web_view, script, -1, NULL, NULL, NULL, web_view_javascript_finished, NULL);
-- >    g_free (script);
-- >}
-- 
-- 
-- /Since: 2.40/
webViewEvaluateJavascript ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a, Gio.Cancellable.IsCancellable b) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> T.Text
    -- ^ /@script@/: the script to evaluate
    -> DI.Int64
    -- ^ /@length@/: length of /@script@/, or -1 if /@script@/ is a nul-terminated string
    -> Maybe (T.Text)
    -- ^ /@worldName@/: the name of a @/WebKitScriptWorld/@ or 'P.Nothing' to use the default
    -> Maybe (T.Text)
    -- ^ /@sourceUri@/: the source URI
    -> Maybe (b)
    -- ^ /@cancellable@/: a t'GI.Gio.Objects.Cancellable.Cancellable' or 'P.Nothing' to ignore
    -> Maybe (Gio.Callbacks.AsyncReadyCallback)
    -- ^ /@callback@/: a t'GI.Gio.Callbacks.AsyncReadyCallback' to call when the script finished
    -> m ()
webViewEvaluateJavascript webView script length_ worldName sourceUri cancellable callback = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    script' <- textToCString script
    maybeWorldName <- case worldName of
        Nothing -> return FP.nullPtr
        Just jWorldName -> do
            jWorldName' <- textToCString jWorldName
            return jWorldName'
    maybeSourceUri <- case sourceUri of
        Nothing -> return FP.nullPtr
        Just jSourceUri -> do
            jSourceUri' <- textToCString jSourceUri
            return jSourceUri'
    maybeCancellable <- case cancellable of
        Nothing -> return FP.nullPtr
        Just jCancellable -> do
            jCancellable' <- unsafeManagedPtrCastPtr jCancellable
            return jCancellable'
    maybeCallback <- case callback of
        Nothing -> return FP.nullFunPtr
        Just jCallback -> do
            ptrcallback <- callocMem :: IO (Ptr (FunPtr Gio.Callbacks.C_AsyncReadyCallback))
            jCallback' <- Gio.Callbacks.mk_AsyncReadyCallback (Gio.Callbacks.wrap_AsyncReadyCallback (Just ptrcallback) (Gio.Callbacks.drop_closures_AsyncReadyCallback jCallback))
            poke ptrcallback jCallback'
            return jCallback'
    let userData = nullPtr
    webkit_web_view_evaluate_javascript webView' script' length_ maybeWorldName maybeSourceUri maybeCancellable maybeCallback userData
    touchManagedPtr webView
    whenJust cancellable touchManagedPtr
    freeMem script'
    freeMem maybeWorldName
    freeMem maybeSourceUri
    return ()

#if defined(ENABLE_OVERLOADING)
data WebViewEvaluateJavascriptMethodInfo
instance (signature ~ (T.Text -> DI.Int64 -> Maybe (T.Text) -> Maybe (T.Text) -> Maybe (b) -> Maybe (Gio.Callbacks.AsyncReadyCallback) -> m ()), MonadIO m, IsWebView a, Gio.Cancellable.IsCancellable b) => O.OverloadedMethod WebViewEvaluateJavascriptMethodInfo a signature where
    overloadedMethod = webViewEvaluateJavascript

instance O.OverloadedMethodInfo WebViewEvaluateJavascriptMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewEvaluateJavascript",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewEvaluateJavascript"
        })


#endif

-- method WebView::evaluate_javascript_finish
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "result"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "AsyncResult" }
--           , argCType = Just "GAsyncResult*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GAsyncResult" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "JavaScriptCore" , name = "Value" })
-- throws : True
-- Skip return : False

foreign import ccall "webkit_web_view_evaluate_javascript_finish" webkit_web_view_evaluate_javascript_finish :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    Ptr Gio.AsyncResult.AsyncResult ->      -- result : TInterface (Name {namespace = "Gio", name = "AsyncResult"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr JavaScriptCore.Value.Value)

-- | Finish an asynchronous operation started with 'GI.WebKit2.Objects.WebView.webViewEvaluateJavascript'.
-- 
-- /Since: 2.40/
webViewEvaluateJavascriptFinish ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a, Gio.AsyncResult.IsAsyncResult b) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> b
    -- ^ /@result@/: a t'GI.Gio.Interfaces.AsyncResult.AsyncResult'
    -> m JavaScriptCore.Value.Value
    -- ^ __Returns:__ a t'GI.JavaScriptCore.Objects.Value.Value' with the result of the last executed statement in script
    --    or 'P.Nothing' in case of error /(Can throw 'Data.GI.Base.GError.GError')/
webViewEvaluateJavascriptFinish webView result_ = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result_' <- unsafeManagedPtrCastPtr result_
    onException (do
        result <- propagateGError $ webkit_web_view_evaluate_javascript_finish webView' result_'
        checkUnexpectedReturnNULL "webViewEvaluateJavascriptFinish" result
        result' <- (wrapObject JavaScriptCore.Value.Value) result
        touchManagedPtr webView
        touchManagedPtr result_
        return result'
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data WebViewEvaluateJavascriptFinishMethodInfo
instance (signature ~ (b -> m JavaScriptCore.Value.Value), MonadIO m, IsWebView a, Gio.AsyncResult.IsAsyncResult b) => O.OverloadedMethod WebViewEvaluateJavascriptFinishMethodInfo a signature where
    overloadedMethod = webViewEvaluateJavascriptFinish

instance O.OverloadedMethodInfo WebViewEvaluateJavascriptFinishMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewEvaluateJavascriptFinish",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewEvaluateJavascriptFinish"
        })


#endif

-- method WebView::execute_editing_command
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "command"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the command to execute"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_execute_editing_command" webkit_web_view_execute_editing_command :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    CString ->                              -- command : TBasicType TUTF8
    IO ()

-- | Request to execute the given /@command@/ for /@webView@/.
-- 
-- You can use 'GI.WebKit2.Objects.WebView.webViewCanExecuteEditingCommand' to check whether
-- it\'s possible to execute the command.
webViewExecuteEditingCommand ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> T.Text
    -- ^ /@command@/: the command to execute
    -> m ()
webViewExecuteEditingCommand webView command = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    command' <- textToCString command
    webkit_web_view_execute_editing_command webView' command'
    touchManagedPtr webView
    freeMem command'
    return ()

#if defined(ENABLE_OVERLOADING)
data WebViewExecuteEditingCommandMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewExecuteEditingCommandMethodInfo a signature where
    overloadedMethod = webViewExecuteEditingCommand

instance O.OverloadedMethodInfo WebViewExecuteEditingCommandMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewExecuteEditingCommand",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewExecuteEditingCommand"
        })


#endif

-- method WebView::execute_editing_command_with_argument
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "command"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the command to execute"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "argument"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the command argument"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_execute_editing_command_with_argument" webkit_web_view_execute_editing_command_with_argument :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    CString ->                              -- command : TBasicType TUTF8
    CString ->                              -- argument : TBasicType TUTF8
    IO ()

-- | Request to execute the given /@command@/ with /@argument@/ for /@webView@/.
-- 
-- You can use
-- 'GI.WebKit2.Objects.WebView.webViewCanExecuteEditingCommand' to check whether
-- it\'s possible to execute the command.
-- 
-- /Since: 2.10/
webViewExecuteEditingCommandWithArgument ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> T.Text
    -- ^ /@command@/: the command to execute
    -> T.Text
    -- ^ /@argument@/: the command argument
    -> m ()
webViewExecuteEditingCommandWithArgument webView command argument = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    command' <- textToCString command
    argument' <- textToCString argument
    webkit_web_view_execute_editing_command_with_argument webView' command' argument'
    touchManagedPtr webView
    freeMem command'
    freeMem argument'
    return ()

#if defined(ENABLE_OVERLOADING)
data WebViewExecuteEditingCommandWithArgumentMethodInfo
instance (signature ~ (T.Text -> T.Text -> m ()), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewExecuteEditingCommandWithArgumentMethodInfo a signature where
    overloadedMethod = webViewExecuteEditingCommandWithArgument

instance O.OverloadedMethodInfo WebViewExecuteEditingCommandWithArgumentMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewExecuteEditingCommandWithArgument",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewExecuteEditingCommandWithArgument"
        })


#endif

-- method WebView::get_automation_presentation_type
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name
--                    { namespace = "WebKit2"
--                    , name = "AutomationBrowsingContextPresentation"
--                    })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_get_automation_presentation_type" webkit_web_view_get_automation_presentation_type :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO CUInt

-- | Get the presentation type of t'GI.WebKit2.Objects.WebView.WebView' when created for automation.
-- 
-- /Since: 2.28/
webViewGetAutomationPresentationType ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m WebKit2.Enums.AutomationBrowsingContextPresentation
    -- ^ __Returns:__ a t'GI.WebKit2.Enums.AutomationBrowsingContextPresentation'.
webViewGetAutomationPresentationType webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result <- webkit_web_view_get_automation_presentation_type webView'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr webView
    return result'

#if defined(ENABLE_OVERLOADING)
data WebViewGetAutomationPresentationTypeMethodInfo
instance (signature ~ (m WebKit2.Enums.AutomationBrowsingContextPresentation), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewGetAutomationPresentationTypeMethodInfo a signature where
    overloadedMethod = webViewGetAutomationPresentationType

instance O.OverloadedMethodInfo WebViewGetAutomationPresentationTypeMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewGetAutomationPresentationType",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewGetAutomationPresentationType"
        })


#endif

-- method WebView::get_back_forward_list
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "WebKit2" , name = "BackForwardList" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_get_back_forward_list" webkit_web_view_get_back_forward_list :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO (Ptr WebKit2.BackForwardList.BackForwardList)

-- | Obtains the t'GI.WebKit2.Objects.BackForwardList.BackForwardList' associated with the given t'GI.WebKit2.Objects.WebView.WebView'.
-- 
-- The t'GI.WebKit2.Objects.BackForwardList.BackForwardList' is owned by the t'GI.WebKit2.Objects.WebView.WebView'.
webViewGetBackForwardList ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m WebKit2.BackForwardList.BackForwardList
    -- ^ __Returns:__ the t'GI.WebKit2.Objects.BackForwardList.BackForwardList'
webViewGetBackForwardList webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result <- webkit_web_view_get_back_forward_list webView'
    checkUnexpectedReturnNULL "webViewGetBackForwardList" result
    result' <- (newObject WebKit2.BackForwardList.BackForwardList) result
    touchManagedPtr webView
    return result'

#if defined(ENABLE_OVERLOADING)
data WebViewGetBackForwardListMethodInfo
instance (signature ~ (m WebKit2.BackForwardList.BackForwardList), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewGetBackForwardListMethodInfo a signature where
    overloadedMethod = webViewGetBackForwardList

instance O.OverloadedMethodInfo WebViewGetBackForwardListMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewGetBackForwardList",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewGetBackForwardList"
        })


#endif

-- method WebView::get_background_color
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "rgba"
--           , argType = TInterface Name { namespace = "Gdk" , name = "RGBA" }
--           , argCType = Just "GdkRGBA*"
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a #GdkRGBA to fill in with the background color"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = True
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_get_background_color" webkit_web_view_get_background_color :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    Ptr Gdk.RGBA.RGBA ->                    -- rgba : TInterface (Name {namespace = "Gdk", name = "RGBA"})
    IO ()

-- | Gets the color that is used to draw the /@webView@/ background.
-- 
-- Gets the color that is used to draw the /@webView@/ background before
-- the actual contents are rendered.
-- For more information see also 'GI.WebKit2.Objects.WebView.webViewSetBackgroundColor'
-- 
-- /Since: 2.8/
webViewGetBackgroundColor ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m (Gdk.RGBA.RGBA)
webViewGetBackgroundColor webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    rgba <- SP.callocBoxedBytes 32 :: IO (Ptr Gdk.RGBA.RGBA)
    webkit_web_view_get_background_color webView' rgba
    rgba' <- (wrapBoxed Gdk.RGBA.RGBA) rgba
    touchManagedPtr webView
    return rgba'

#if defined(ENABLE_OVERLOADING)
data WebViewGetBackgroundColorMethodInfo
instance (signature ~ (m (Gdk.RGBA.RGBA)), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewGetBackgroundColorMethodInfo a signature where
    overloadedMethod = webViewGetBackgroundColor

instance O.OverloadedMethodInfo WebViewGetBackgroundColorMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewGetBackgroundColor",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewGetBackgroundColor"
        })


#endif

-- method WebView::get_camera_capture_state
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "WebKit2" , name = "MediaCaptureState" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_get_camera_capture_state" webkit_web_view_get_camera_capture_state :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO CUInt

-- | Get the camera capture state of a t'GI.WebKit2.Objects.WebView.WebView'.
-- 
-- /Since: 2.34/
webViewGetCameraCaptureState ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m WebKit2.Enums.MediaCaptureState
    -- ^ __Returns:__ The t'GI.WebKit2.Enums.MediaCaptureState' of the camera device. If t'GI.WebKit2.Objects.Settings.Settings':@/enable-mediastream/@
    -- is 'P.False', this method will return 'GI.WebKit2.Enums.MediaCaptureStateNone'.
webViewGetCameraCaptureState webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result <- webkit_web_view_get_camera_capture_state webView'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr webView
    return result'

#if defined(ENABLE_OVERLOADING)
data WebViewGetCameraCaptureStateMethodInfo
instance (signature ~ (m WebKit2.Enums.MediaCaptureState), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewGetCameraCaptureStateMethodInfo a signature where
    overloadedMethod = webViewGetCameraCaptureState

instance O.OverloadedMethodInfo WebViewGetCameraCaptureStateMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewGetCameraCaptureState",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewGetCameraCaptureState"
        })


#endif

-- method WebView::get_context
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "WebKit2" , name = "WebContext" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_get_context" webkit_web_view_get_context :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO (Ptr WebKit2.WebContext.WebContext)

-- | Gets the web context of /@webView@/.
webViewGetContext ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m WebKit2.WebContext.WebContext
    -- ^ __Returns:__ the t'GI.WebKit2.Objects.WebContext.WebContext' of the view
webViewGetContext webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result <- webkit_web_view_get_context webView'
    checkUnexpectedReturnNULL "webViewGetContext" result
    result' <- (newObject WebKit2.WebContext.WebContext) result
    touchManagedPtr webView
    return result'

#if defined(ENABLE_OVERLOADING)
data WebViewGetContextMethodInfo
instance (signature ~ (m WebKit2.WebContext.WebContext), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewGetContextMethodInfo a signature where
    overloadedMethod = webViewGetContext

instance O.OverloadedMethodInfo WebViewGetContextMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewGetContext",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewGetContext"
        })


#endif

-- method WebView::get_custom_charset
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_get_custom_charset" webkit_web_view_get_custom_charset :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO CString

-- | Returns the current custom character encoding name of /@webView@/.
webViewGetCustomCharset ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ the current custom character encoding name or 'P.Nothing' if no
    --    custom character encoding has been set.
webViewGetCustomCharset webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result <- webkit_web_view_get_custom_charset webView'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr webView
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data WebViewGetCustomCharsetMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewGetCustomCharsetMethodInfo a signature where
    overloadedMethod = webViewGetCustomCharset

instance O.OverloadedMethodInfo WebViewGetCustomCharsetMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewGetCustomCharset",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewGetCustomCharset"
        })


#endif

-- method WebView::get_default_content_security_policy
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_get_default_content_security_policy" webkit_web_view_get_default_content_security_policy :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO CString

-- | Gets the configured default Content-Security-Policy.
-- 
-- /Since: 2.38/
webViewGetDefaultContentSecurityPolicy ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ The default policy or 'P.Nothing'
webViewGetDefaultContentSecurityPolicy webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result <- webkit_web_view_get_default_content_security_policy webView'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr webView
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data WebViewGetDefaultContentSecurityPolicyMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewGetDefaultContentSecurityPolicyMethodInfo a signature where
    overloadedMethod = webViewGetDefaultContentSecurityPolicy

instance O.OverloadedMethodInfo WebViewGetDefaultContentSecurityPolicyMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewGetDefaultContentSecurityPolicy",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewGetDefaultContentSecurityPolicy"
        })


#endif

-- method WebView::get_display_capture_state
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "WebKit2" , name = "MediaCaptureState" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_get_display_capture_state" webkit_web_view_get_display_capture_state :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO CUInt

-- | Get the display capture state of a t'GI.WebKit2.Objects.WebView.WebView'.
-- 
-- /Since: 2.34/
webViewGetDisplayCaptureState ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m WebKit2.Enums.MediaCaptureState
    -- ^ __Returns:__ The t'GI.WebKit2.Enums.MediaCaptureState' of the display device. If t'GI.WebKit2.Objects.Settings.Settings':@/enable-mediastream/@
    -- is 'P.False', this method will return 'GI.WebKit2.Enums.MediaCaptureStateNone'.
webViewGetDisplayCaptureState webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result <- webkit_web_view_get_display_capture_state webView'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr webView
    return result'

#if defined(ENABLE_OVERLOADING)
data WebViewGetDisplayCaptureStateMethodInfo
instance (signature ~ (m WebKit2.Enums.MediaCaptureState), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewGetDisplayCaptureStateMethodInfo a signature where
    overloadedMethod = webViewGetDisplayCaptureState

instance O.OverloadedMethodInfo WebViewGetDisplayCaptureStateMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewGetDisplayCaptureState",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewGetDisplayCaptureState"
        })


#endif

-- method WebView::get_editor_state
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "WebKit2" , name = "EditorState" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_get_editor_state" webkit_web_view_get_editor_state :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO (Ptr WebKit2.EditorState.EditorState)

-- | Gets the web editor state of /@webView@/.
-- 
-- /Since: 2.10/
webViewGetEditorState ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m WebKit2.EditorState.EditorState
    -- ^ __Returns:__ the t'GI.WebKit2.Objects.EditorState.EditorState' of the view
webViewGetEditorState webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result <- webkit_web_view_get_editor_state webView'
    checkUnexpectedReturnNULL "webViewGetEditorState" result
    result' <- (newObject WebKit2.EditorState.EditorState) result
    touchManagedPtr webView
    return result'

#if defined(ENABLE_OVERLOADING)
data WebViewGetEditorStateMethodInfo
instance (signature ~ (m WebKit2.EditorState.EditorState), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewGetEditorStateMethodInfo a signature where
    overloadedMethod = webViewGetEditorState

instance O.OverloadedMethodInfo WebViewGetEditorStateMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewGetEditorState",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewGetEditorState"
        })


#endif

-- method WebView::get_estimated_load_progress
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TDouble)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_get_estimated_load_progress" webkit_web_view_get_estimated_load_progress :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO CDouble

-- | Gets the value of the [WebView:estimatedLoadProgress]("GI.WebKit2.Objects.WebView#g:attr:estimatedLoadProgress") property.
-- 
-- You can monitor the estimated progress of a load operation by
-- connecting to the notify[estimatedLoadProgress](#g:signal:estimatedLoadProgress) signal of /@webView@/.
webViewGetEstimatedLoadProgress ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m Double
    -- ^ __Returns:__ an estimate of the of the percent complete for a document
    --     load as a range from 0.0 to 1.0.
webViewGetEstimatedLoadProgress webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result <- webkit_web_view_get_estimated_load_progress webView'
    let result' = realToFrac result
    touchManagedPtr webView
    return result'

#if defined(ENABLE_OVERLOADING)
data WebViewGetEstimatedLoadProgressMethodInfo
instance (signature ~ (m Double), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewGetEstimatedLoadProgressMethodInfo a signature where
    overloadedMethod = webViewGetEstimatedLoadProgress

instance O.OverloadedMethodInfo WebViewGetEstimatedLoadProgressMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewGetEstimatedLoadProgress",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewGetEstimatedLoadProgress"
        })


#endif

-- method WebView::get_favicon
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "cairo" , name = "Surface" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_get_favicon" webkit_web_view_get_favicon :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO (Ptr Cairo.Surface.Surface)

-- | Returns favicon currently associated to /@webView@/.
-- 
-- Returns favicon currently associated to /@webView@/, if any. You can
-- connect to notify[favicon](#g:signal:favicon) signal of /@webView@/ to be notified when
-- the favicon is available.
webViewGetFavicon ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m (Maybe Cairo.Surface.Surface)
    -- ^ __Returns:__ the favicon image or 'P.Nothing' if there\'s no
    --    icon associated with /@webView@/.
webViewGetFavicon webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result <- webkit_web_view_get_favicon webView'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newBoxed Cairo.Surface.Surface) result'
        return result''
    touchManagedPtr webView
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data WebViewGetFaviconMethodInfo
instance (signature ~ (m (Maybe Cairo.Surface.Surface)), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewGetFaviconMethodInfo a signature where
    overloadedMethod = webViewGetFavicon

instance O.OverloadedMethodInfo WebViewGetFaviconMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewGetFavicon",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewGetFavicon"
        })


#endif

-- method WebView::get_find_controller
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "WebKit2" , name = "FindController" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_get_find_controller" webkit_web_view_get_find_controller :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO (Ptr WebKit2.FindController.FindController)

-- | Gets the t'GI.WebKit2.Objects.FindController.FindController'.
-- 
-- Gets the t'GI.WebKit2.Objects.FindController.FindController' that will allow the caller to query
-- the t'GI.WebKit2.Objects.WebView.WebView' for the text to look for.
webViewGetFindController ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: the t'GI.WebKit2.Objects.WebView.WebView'
    -> m WebKit2.FindController.FindController
    -- ^ __Returns:__ the t'GI.WebKit2.Objects.FindController.FindController' associated to
    -- this particular t'GI.WebKit2.Objects.WebView.WebView'.
webViewGetFindController webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result <- webkit_web_view_get_find_controller webView'
    checkUnexpectedReturnNULL "webViewGetFindController" result
    result' <- (newObject WebKit2.FindController.FindController) result
    touchManagedPtr webView
    return result'

#if defined(ENABLE_OVERLOADING)
data WebViewGetFindControllerMethodInfo
instance (signature ~ (m WebKit2.FindController.FindController), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewGetFindControllerMethodInfo a signature where
    overloadedMethod = webViewGetFindController

instance O.OverloadedMethodInfo WebViewGetFindControllerMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewGetFindController",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewGetFindController"
        })


#endif

-- method WebView::get_input_method_context
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "WebKit2" , name = "InputMethodContext" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_get_input_method_context" webkit_web_view_get_input_method_context :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO (Ptr WebKit2.InputMethodContext.InputMethodContext)

-- | Get the t'GI.WebKit2.Objects.InputMethodContext.InputMethodContext' currently in use by /@webView@/.
-- 
-- Get the t'GI.WebKit2.Objects.InputMethodContext.InputMethodContext' currently in use by /@webView@/, or 'P.Nothing' if no input method is being used.
-- 
-- /Since: 2.28/
webViewGetInputMethodContext ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m (Maybe WebKit2.InputMethodContext.InputMethodContext)
    -- ^ __Returns:__ a t'GI.WebKit2.Objects.InputMethodContext.InputMethodContext', or 'P.Nothing'
webViewGetInputMethodContext webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result <- webkit_web_view_get_input_method_context webView'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject WebKit2.InputMethodContext.InputMethodContext) result'
        return result''
    touchManagedPtr webView
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data WebViewGetInputMethodContextMethodInfo
instance (signature ~ (m (Maybe WebKit2.InputMethodContext.InputMethodContext)), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewGetInputMethodContextMethodInfo a signature where
    overloadedMethod = webViewGetInputMethodContext

instance O.OverloadedMethodInfo WebViewGetInputMethodContextMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewGetInputMethodContext",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewGetInputMethodContext"
        })


#endif

-- method WebView::get_inspector
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "WebKit2" , name = "WebInspector" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_get_inspector" webkit_web_view_get_inspector :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO (Ptr WebKit2.WebInspector.WebInspector)

-- | Get the t'GI.WebKit2.Objects.WebInspector.WebInspector' associated to /@webView@/
webViewGetInspector ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m WebKit2.WebInspector.WebInspector
    -- ^ __Returns:__ the t'GI.WebKit2.Objects.WebInspector.WebInspector' of /@webView@/
webViewGetInspector webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result <- webkit_web_view_get_inspector webView'
    checkUnexpectedReturnNULL "webViewGetInspector" result
    result' <- (newObject WebKit2.WebInspector.WebInspector) result
    touchManagedPtr webView
    return result'

#if defined(ENABLE_OVERLOADING)
data WebViewGetInspectorMethodInfo
instance (signature ~ (m WebKit2.WebInspector.WebInspector), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewGetInspectorMethodInfo a signature where
    overloadedMethod = webViewGetInspector

instance O.OverloadedMethodInfo WebViewGetInspectorMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewGetInspector",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewGetInspector"
        })


#endif

-- method WebView::get_is_muted
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_get_is_muted" webkit_web_view_get_is_muted :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO CInt

-- | Gets the mute state of /@webView@/.
-- 
-- /Since: 2.30/
webViewGetIsMuted ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if /@webView@/ audio is muted or 'P.False' is audio is not muted.
webViewGetIsMuted webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result <- webkit_web_view_get_is_muted webView'
    let result' = (/= 0) result
    touchManagedPtr webView
    return result'

#if defined(ENABLE_OVERLOADING)
data WebViewGetIsMutedMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewGetIsMutedMethodInfo a signature where
    overloadedMethod = webViewGetIsMuted

instance O.OverloadedMethodInfo WebViewGetIsMutedMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewGetIsMuted",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewGetIsMuted"
        })


#endif

-- method WebView::get_is_web_process_responsive
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_get_is_web_process_responsive" webkit_web_view_get_is_web_process_responsive :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO CInt

-- | Get whether the current web process of a t'GI.WebKit2.Objects.WebView.WebView' is responsive.
-- 
-- /Since: 2.34/
webViewGetIsWebProcessResponsive ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the web process attached to /@webView@/ is responsive, or 'P.False' otherwise.
webViewGetIsWebProcessResponsive webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result <- webkit_web_view_get_is_web_process_responsive webView'
    let result' = (/= 0) result
    touchManagedPtr webView
    return result'

#if defined(ENABLE_OVERLOADING)
data WebViewGetIsWebProcessResponsiveMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewGetIsWebProcessResponsiveMethodInfo a signature where
    overloadedMethod = webViewGetIsWebProcessResponsive

instance O.OverloadedMethodInfo WebViewGetIsWebProcessResponsiveMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewGetIsWebProcessResponsive",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewGetIsWebProcessResponsive"
        })


#endif

-- method WebView::get_main_resource
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "WebKit2" , name = "WebResource" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_get_main_resource" webkit_web_view_get_main_resource :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO (Ptr WebKit2.WebResource.WebResource)

-- | Return the main resource of /@webView@/.
webViewGetMainResource ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m (Maybe WebKit2.WebResource.WebResource)
    -- ^ __Returns:__ the main t'GI.WebKit2.Objects.WebResource.WebResource' of the view
    --    or 'P.Nothing' if nothing has been loaded.
webViewGetMainResource webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result <- webkit_web_view_get_main_resource webView'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject WebKit2.WebResource.WebResource) result'
        return result''
    touchManagedPtr webView
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data WebViewGetMainResourceMethodInfo
instance (signature ~ (m (Maybe WebKit2.WebResource.WebResource)), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewGetMainResourceMethodInfo a signature where
    overloadedMethod = webViewGetMainResource

instance O.OverloadedMethodInfo WebViewGetMainResourceMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewGetMainResource",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewGetMainResource"
        })


#endif

-- method WebView::get_microphone_capture_state
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "WebKit2" , name = "MediaCaptureState" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_get_microphone_capture_state" webkit_web_view_get_microphone_capture_state :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO CUInt

-- | Get the microphone capture state of a t'GI.WebKit2.Objects.WebView.WebView'.
-- 
-- /Since: 2.34/
webViewGetMicrophoneCaptureState ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m WebKit2.Enums.MediaCaptureState
    -- ^ __Returns:__ The t'GI.WebKit2.Enums.MediaCaptureState' of the microphone device. If t'GI.WebKit2.Objects.Settings.Settings':@/enable-mediastream/@
    -- is 'P.False', this method will return 'GI.WebKit2.Enums.MediaCaptureStateNone'.
webViewGetMicrophoneCaptureState webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result <- webkit_web_view_get_microphone_capture_state webView'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr webView
    return result'

#if defined(ENABLE_OVERLOADING)
data WebViewGetMicrophoneCaptureStateMethodInfo
instance (signature ~ (m WebKit2.Enums.MediaCaptureState), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewGetMicrophoneCaptureStateMethodInfo a signature where
    overloadedMethod = webViewGetMicrophoneCaptureState

instance O.OverloadedMethodInfo WebViewGetMicrophoneCaptureStateMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewGetMicrophoneCaptureState",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewGetMicrophoneCaptureState"
        })


#endif

-- method WebView::get_page_id
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TUInt64)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_get_page_id" webkit_web_view_get_page_id :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO Word64

-- | Get the identifier of the @/WebKitWebPage/@ corresponding to
-- the t'GI.WebKit2.Objects.WebView.WebView'
webViewGetPageId ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m Word64
    -- ^ __Returns:__ the page ID of /@webView@/.
webViewGetPageId webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result <- webkit_web_view_get_page_id webView'
    touchManagedPtr webView
    return result

#if defined(ENABLE_OVERLOADING)
data WebViewGetPageIdMethodInfo
instance (signature ~ (m Word64), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewGetPageIdMethodInfo a signature where
    overloadedMethod = webViewGetPageId

instance O.OverloadedMethodInfo WebViewGetPageIdMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewGetPageId",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewGetPageId"
        })


#endif

-- method WebView::get_session_state
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "WebKit2" , name = "WebViewSessionState" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_get_session_state" webkit_web_view_get_session_state :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO (Ptr WebKit2.WebViewSessionState.WebViewSessionState)

-- | Gets the current session state of /@webView@/
-- 
-- /Since: 2.12/
webViewGetSessionState ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m WebKit2.WebViewSessionState.WebViewSessionState
    -- ^ __Returns:__ a t'GI.WebKit2.Structs.WebViewSessionState.WebViewSessionState'
webViewGetSessionState webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result <- webkit_web_view_get_session_state webView'
    checkUnexpectedReturnNULL "webViewGetSessionState" result
    result' <- (wrapBoxed WebKit2.WebViewSessionState.WebViewSessionState) result
    touchManagedPtr webView
    return result'

#if defined(ENABLE_OVERLOADING)
data WebViewGetSessionStateMethodInfo
instance (signature ~ (m WebKit2.WebViewSessionState.WebViewSessionState), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewGetSessionStateMethodInfo a signature where
    overloadedMethod = webViewGetSessionState

instance O.OverloadedMethodInfo WebViewGetSessionStateMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewGetSessionState",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewGetSessionState"
        })


#endif

-- method WebView::get_settings
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "WebKit2" , name = "Settings" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_get_settings" webkit_web_view_get_settings :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO (Ptr WebKit2.Settings.Settings)

-- | Gets the t'GI.WebKit2.Objects.Settings.Settings' currently applied to /@webView@/.
-- 
-- If no other t'GI.WebKit2.Objects.Settings.Settings' have been explicitly applied to
-- /@webView@/ with 'GI.WebKit2.Objects.WebView.webViewSetSettings', the default
-- t'GI.WebKit2.Objects.Settings.Settings' will be returned. This method always returns
-- a valid t'GI.WebKit2.Objects.Settings.Settings' object.
-- To modify any of the /@webView@/ settings, you can either create
-- a new t'GI.WebKit2.Objects.Settings.Settings' object with 'GI.WebKit2.Objects.Settings.settingsNew', setting
-- the desired preferences, and then replace the existing /@webView@/
-- settings with 'GI.WebKit2.Objects.WebView.webViewSetSettings' or get the existing
-- /@webView@/ settings and update it directly. t'GI.WebKit2.Objects.Settings.Settings' objects
-- can be shared by multiple t'GI.WebKit2.Objects.WebView.WebView's, so modifying
-- the settings of a t'GI.WebKit2.Objects.WebView.WebView' would affect other
-- t'GI.WebKit2.Objects.WebView.WebView's using the same t'GI.WebKit2.Objects.Settings.Settings'.
webViewGetSettings ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m WebKit2.Settings.Settings
    -- ^ __Returns:__ the t'GI.WebKit2.Objects.Settings.Settings' attached to /@webView@/
webViewGetSettings webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result <- webkit_web_view_get_settings webView'
    checkUnexpectedReturnNULL "webViewGetSettings" result
    result' <- (newObject WebKit2.Settings.Settings) result
    touchManagedPtr webView
    return result'

#if defined(ENABLE_OVERLOADING)
data WebViewGetSettingsMethodInfo
instance (signature ~ (m WebKit2.Settings.Settings), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewGetSettingsMethodInfo a signature where
    overloadedMethod = webViewGetSettings

instance O.OverloadedMethodInfo WebViewGetSettingsMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewGetSettings",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewGetSettings"
        })


#endif

-- method WebView::get_snapshot
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "region"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "SnapshotRegion" }
--           , argCType = Just "WebKitSnapshotRegion"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #WebKitSnapshotRegion for this snapshot"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "options"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "SnapshotOptions" }
--           , argCType = Just "WebKitSnapshotOptions"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "#WebKitSnapshotOptions for the snapshot"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "cancellable"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "Cancellable" }
--           , argCType = Just "GCancellable*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GCancellable" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "callback"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "AsyncReadyCallback" }
--           , argCType = Just "GAsyncReadyCallback"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GAsyncReadyCallback"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeAsync
--           , argClosure = 5
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "user_data"
--           , argType = TBasicType TPtr
--           , argCType = Just "gpointer"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "user data" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_get_snapshot" webkit_web_view_get_snapshot :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    CUInt ->                                -- region : TInterface (Name {namespace = "WebKit2", name = "SnapshotRegion"})
    CUInt ->                                -- options : TInterface (Name {namespace = "WebKit2", name = "SnapshotOptions"})
    Ptr Gio.Cancellable.Cancellable ->      -- cancellable : TInterface (Name {namespace = "Gio", name = "Cancellable"})
    FunPtr Gio.Callbacks.C_AsyncReadyCallback -> -- callback : TInterface (Name {namespace = "Gio", name = "AsyncReadyCallback"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    IO ()

-- | Asynchronously retrieves a snapshot of /@webView@/ for /@region@/.
-- 
-- /@options@/ specifies how the snapshot should be rendered.
-- 
-- When the operation is finished, /@callback@/ will be called. You must
-- call 'GI.WebKit2.Objects.WebView.webViewGetSnapshotFinish' to get the result of the
-- operation.
webViewGetSnapshot ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a, Gio.Cancellable.IsCancellable b) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> WebKit2.Enums.SnapshotRegion
    -- ^ /@region@/: the t'GI.WebKit2.Enums.SnapshotRegion' for this snapshot
    -> [WebKit2.Flags.SnapshotOptions]
    -- ^ /@options@/: t'GI.WebKit2.Flags.SnapshotOptions' for the snapshot
    -> Maybe (b)
    -- ^ /@cancellable@/: a t'GI.Gio.Objects.Cancellable.Cancellable'
    -> Maybe (Gio.Callbacks.AsyncReadyCallback)
    -- ^ /@callback@/: a t'GI.Gio.Callbacks.AsyncReadyCallback'
    -> m ()
webViewGetSnapshot webView region options cancellable callback = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    let region' = (fromIntegral . fromEnum) region
    let options' = gflagsToWord options
    maybeCancellable <- case cancellable of
        Nothing -> return FP.nullPtr
        Just jCancellable -> do
            jCancellable' <- unsafeManagedPtrCastPtr jCancellable
            return jCancellable'
    maybeCallback <- case callback of
        Nothing -> return FP.nullFunPtr
        Just jCallback -> do
            ptrcallback <- callocMem :: IO (Ptr (FunPtr Gio.Callbacks.C_AsyncReadyCallback))
            jCallback' <- Gio.Callbacks.mk_AsyncReadyCallback (Gio.Callbacks.wrap_AsyncReadyCallback (Just ptrcallback) (Gio.Callbacks.drop_closures_AsyncReadyCallback jCallback))
            poke ptrcallback jCallback'
            return jCallback'
    let userData = nullPtr
    webkit_web_view_get_snapshot webView' region' options' maybeCancellable maybeCallback userData
    touchManagedPtr webView
    whenJust cancellable touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data WebViewGetSnapshotMethodInfo
instance (signature ~ (WebKit2.Enums.SnapshotRegion -> [WebKit2.Flags.SnapshotOptions] -> Maybe (b) -> Maybe (Gio.Callbacks.AsyncReadyCallback) -> m ()), MonadIO m, IsWebView a, Gio.Cancellable.IsCancellable b) => O.OverloadedMethod WebViewGetSnapshotMethodInfo a signature where
    overloadedMethod = webViewGetSnapshot

instance O.OverloadedMethodInfo WebViewGetSnapshotMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewGetSnapshot",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewGetSnapshot"
        })


#endif

-- method WebView::get_snapshot_finish
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "result"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "AsyncResult" }
--           , argCType = Just "GAsyncResult*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GAsyncResult" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "cairo" , name = "Surface" })
-- throws : True
-- Skip return : False

foreign import ccall "webkit_web_view_get_snapshot_finish" webkit_web_view_get_snapshot_finish :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    Ptr Gio.AsyncResult.AsyncResult ->      -- result : TInterface (Name {namespace = "Gio", name = "AsyncResult"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Cairo.Surface.Surface)

-- | Finishes an asynchronous operation started with 'GI.WebKit2.Objects.WebView.webViewGetSnapshot', producing
-- an image of the snapshot using the BGRA8888 pixel format.
webViewGetSnapshotFinish ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a, Gio.AsyncResult.IsAsyncResult b) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> b
    -- ^ /@result@/: a t'GI.Gio.Interfaces.AsyncResult.AsyncResult'
    -> m Cairo.Surface.Surface
    -- ^ __Returns:__ an image with the retrieved snapshot, or 'P.Nothing' in case of error. /(Can throw 'Data.GI.Base.GError.GError')/
webViewGetSnapshotFinish webView result_ = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result_' <- unsafeManagedPtrCastPtr result_
    onException (do
        result <- propagateGError $ webkit_web_view_get_snapshot_finish webView' result_'
        checkUnexpectedReturnNULL "webViewGetSnapshotFinish" result
        result' <- (wrapBoxed Cairo.Surface.Surface) result
        touchManagedPtr webView
        touchManagedPtr result_
        return result'
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data WebViewGetSnapshotFinishMethodInfo
instance (signature ~ (b -> m Cairo.Surface.Surface), MonadIO m, IsWebView a, Gio.AsyncResult.IsAsyncResult b) => O.OverloadedMethod WebViewGetSnapshotFinishMethodInfo a signature where
    overloadedMethod = webViewGetSnapshotFinish

instance O.OverloadedMethodInfo WebViewGetSnapshotFinishMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewGetSnapshotFinish",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewGetSnapshotFinish"
        })


#endif

-- method WebView::get_theme_color
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "rgba"
--           , argType = TInterface Name { namespace = "Gdk" , name = "RGBA" }
--           , argCType = Just "GdkRGBA*"
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GdkRGBA to fill in with the theme color"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = True
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_get_theme_color" webkit_web_view_get_theme_color :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    Ptr Gdk.RGBA.RGBA ->                    -- rgba : TInterface (Name {namespace = "Gdk", name = "RGBA"})
    IO CInt

-- | Gets the theme color that is specified by the content in the /@webView@/.
-- If the /@webView@/ doesn\'t have a theme color it will fill the /@rgba@/
-- with transparent black content.
-- 
-- /Since: 2.50/
webViewGetThemeColor ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m ((Bool, Gdk.RGBA.RGBA))
    -- ^ __Returns:__ Whether the currently loaded page defines a theme color.
webViewGetThemeColor webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    rgba <- SP.callocBoxedBytes 32 :: IO (Ptr Gdk.RGBA.RGBA)
    result <- webkit_web_view_get_theme_color webView' rgba
    let result' = (/= 0) result
    rgba' <- (wrapBoxed Gdk.RGBA.RGBA) rgba
    touchManagedPtr webView
    return (result', rgba')

#if defined(ENABLE_OVERLOADING)
data WebViewGetThemeColorMethodInfo
instance (signature ~ (m ((Bool, Gdk.RGBA.RGBA))), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewGetThemeColorMethodInfo a signature where
    overloadedMethod = webViewGetThemeColor

instance O.OverloadedMethodInfo WebViewGetThemeColorMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewGetThemeColor",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewGetThemeColor"
        })


#endif

-- method WebView::get_title
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_get_title" webkit_web_view_get_title :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO CString

-- | Gets the value of the [WebView:title]("GI.WebKit2.Objects.WebView#g:attr:title") property.
-- 
-- You can connect to notify[title](#g:signal:title) signal of /@webView@/ to
-- be notified when the title has been received.
webViewGetTitle ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ The main frame document title of /@webView@/.
webViewGetTitle webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result <- webkit_web_view_get_title webView'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr webView
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data WebViewGetTitleMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewGetTitleMethodInfo a signature where
    overloadedMethod = webViewGetTitle

instance O.OverloadedMethodInfo WebViewGetTitleMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewGetTitle",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewGetTitle"
        })


#endif

-- method WebView::get_tls_info
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "certificate"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "TlsCertificate" }
--           , argCType = Just "GTlsCertificate**"
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "return location for a #GTlsCertificate"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "errors"
--           , argType =
--               TInterface
--                 Name { namespace = "Gio" , name = "TlsCertificateFlags" }
--           , argCType = Just "GTlsCertificateFlags*"
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "return location for a #GTlsCertificateFlags the verification status of @certificate"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferEverything
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_get_tls_info" webkit_web_view_get_tls_info :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    Ptr (Ptr Gio.TlsCertificate.TlsCertificate) -> -- certificate : TInterface (Name {namespace = "Gio", name = "TlsCertificate"})
    Ptr CUInt ->                            -- errors : TInterface (Name {namespace = "Gio", name = "TlsCertificateFlags"})
    IO CInt

-- | Retrieves the t'GI.Gio.Objects.TlsCertificate.TlsCertificate' associated with the main resource of /@webView@/.
-- 
-- Retrieves the t'GI.Gio.Objects.TlsCertificate.TlsCertificate' associated with the main resource of /@webView@/,
-- and the t'GI.Gio.Flags.TlsCertificateFlags' showing what problems, if any, have been found
-- with that certificate.
-- If the connection is not HTTPS, this function returns 'P.False'.
-- This function should be called after a response has been received from the
-- server, so you can connect to [WebView::loadChanged]("GI.WebKit2.Objects.WebView#g:signal:loadChanged") and call this function
-- when it\'s emitted with 'GI.WebKit2.Enums.LoadEventCommitted' event.
-- 
-- Note that this function provides no information about the security of the web
-- page if the current t'GI.WebKit2.Enums.TLSErrorsPolicy' is 'GI.WebKit2.Enums.TLSErrorsPolicyIgnore',
-- as subresources of the page may be controlled by an attacker. This function
-- may safely be used to determine the security status of the current page only
-- if the current t'GI.WebKit2.Enums.TLSErrorsPolicy' is 'GI.WebKit2.Enums.TLSErrorsPolicyFail', in
-- which case subresources that fail certificate verification will be blocked.
webViewGetTlsInfo ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m ((Bool, Gio.TlsCertificate.TlsCertificate, [Gio.Flags.TlsCertificateFlags]))
    -- ^ __Returns:__ 'P.True' if the /@webView@/ connection uses HTTPS and a response has been received
    --    from the server, or 'P.False' otherwise.
webViewGetTlsInfo webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    certificate <- callocMem :: IO (Ptr (Ptr Gio.TlsCertificate.TlsCertificate))
    errors <- allocMem :: IO (Ptr CUInt)
    result <- webkit_web_view_get_tls_info webView' certificate errors
    let result' = (/= 0) result
    certificate' <- peek certificate
    certificate'' <- (newObject Gio.TlsCertificate.TlsCertificate) certificate'
    errors' <- peek errors
    let errors'' = wordToGFlags errors'
    touchManagedPtr webView
    freeMem certificate
    freeMem errors
    return (result', certificate'', errors'')

#if defined(ENABLE_OVERLOADING)
data WebViewGetTlsInfoMethodInfo
instance (signature ~ (m ((Bool, Gio.TlsCertificate.TlsCertificate, [Gio.Flags.TlsCertificateFlags]))), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewGetTlsInfoMethodInfo a signature where
    overloadedMethod = webViewGetTlsInfo

instance O.OverloadedMethodInfo WebViewGetTlsInfoMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewGetTlsInfo",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewGetTlsInfo"
        })


#endif

-- method WebView::get_uri
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_get_uri" webkit_web_view_get_uri :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO CString

-- | Returns the current active URI of /@webView@/.
-- 
-- The active URI might change during
-- a load operation:
-- 
-- \<orderedlist>
-- \<listitem>\<para>
--   When nothing has been loaded yet on /@webView@/ the active URI is 'P.Nothing'.
-- \<\/para>\<\/listitem>
-- \<listitem>\<para>
--   When a new load operation starts the active URI is the requested URI:
--   \<itemizedlist>
--   \<listitem>\<para>
--     If the load operation was started by 'GI.WebKit2.Objects.WebView.webViewLoadUri',
--     the requested URI is the given one.
--   \<\/para>\<\/listitem>
--   \<listitem>\<para>
--     If the load operation was started by 'GI.WebKit2.Objects.WebView.webViewLoadHtml',
--     the requested URI is \"about:blank\".
--   \<\/para>\<\/listitem>
--   \<listitem>\<para>
--     If the load operation was started by 'GI.WebKit2.Objects.WebView.webViewLoadAlternateHtml',
--     the requested URI is content URI provided.
--   \<\/para>\<\/listitem>
--   \<listitem>\<para>
--     If the load operation was started by 'GI.WebKit2.Objects.WebView.webViewGoBack' or
--     'GI.WebKit2.Objects.WebView.webViewGoForward', the requested URI is the original URI
--     of the previous\/next item in the t'GI.WebKit2.Objects.BackForwardList.BackForwardList' of /@webView@/.
--   \<\/para>\<\/listitem>
--   \<listitem>\<para>
--     If the load operation was started by
--     'GI.WebKit2.Objects.WebView.webViewGoToBackForwardListItem', the requested URI
--     is the opriginal URI of the given t'GI.WebKit2.Objects.BackForwardListItem.BackForwardListItem'.
--   \<\/para>\<\/listitem>
--   \<\/itemizedlist>
-- \<\/para>\<\/listitem>
-- \<listitem>\<para>
--   If there is a server redirection during the load operation,
--   the active URI is the redirected URI. When the signal
--   [WebView::loadChanged]("GI.WebKit2.Objects.WebView#g:signal:loadChanged") is emitted with 'GI.WebKit2.Enums.LoadEventRedirected'
--   event, the active URI is already updated to the redirected URI.
-- \<\/para>\<\/listitem>
-- \<listitem>\<para>
--   When the signal [WebView::loadChanged]("GI.WebKit2.Objects.WebView#g:signal:loadChanged") is emitted
--   with 'GI.WebKit2.Enums.LoadEventCommitted' event, the active URI is the final
--   one and it will not change unless a new load operation is started
--   or a navigation action within the same page is performed.
-- \<\/para>\<\/listitem>
-- \<\/orderedlist>
-- 
-- You can monitor the active URI by connecting to the notify[uri](#g:signal:uri)
-- signal of /@webView@/.
webViewGetUri ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ the current active URI of /@webView@/ or 'P.Nothing'
    --    if nothing has been loaded yet.
webViewGetUri webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result <- webkit_web_view_get_uri webView'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr webView
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data WebViewGetUriMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewGetUriMethodInfo a signature where
    overloadedMethod = webViewGetUri

instance O.OverloadedMethodInfo WebViewGetUriMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewGetUri",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewGetUri"
        })


#endif

-- method WebView::get_user_content_manager
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "WebKit2" , name = "UserContentManager" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_get_user_content_manager" webkit_web_view_get_user_content_manager :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO (Ptr WebKit2.UserContentManager.UserContentManager)

-- | Gets the user content manager associated to /@webView@/.
-- 
-- /Since: 2.6/
webViewGetUserContentManager ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m WebKit2.UserContentManager.UserContentManager
    -- ^ __Returns:__ the t'GI.WebKit2.Objects.UserContentManager.UserContentManager' associated with the view
webViewGetUserContentManager webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result <- webkit_web_view_get_user_content_manager webView'
    checkUnexpectedReturnNULL "webViewGetUserContentManager" result
    result' <- (newObject WebKit2.UserContentManager.UserContentManager) result
    touchManagedPtr webView
    return result'

#if defined(ENABLE_OVERLOADING)
data WebViewGetUserContentManagerMethodInfo
instance (signature ~ (m WebKit2.UserContentManager.UserContentManager), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewGetUserContentManagerMethodInfo a signature where
    overloadedMethod = webViewGetUserContentManager

instance O.OverloadedMethodInfo WebViewGetUserContentManagerMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewGetUserContentManager",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewGetUserContentManager"
        })


#endif

-- method WebView::get_web_extension_mode
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "WebKit2" , name = "WebExtensionMode" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_get_web_extension_mode" webkit_web_view_get_web_extension_mode :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO CUInt

-- | Get the view\'s t'GI.WebKit2.Enums.WebExtensionMode'.
-- 
-- /Since: 2.38/
webViewGetWebExtensionMode ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m WebKit2.Enums.WebExtensionMode
    -- ^ __Returns:__ the t'GI.WebKit2.Enums.WebExtensionMode'
webViewGetWebExtensionMode webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result <- webkit_web_view_get_web_extension_mode webView'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr webView
    return result'

#if defined(ENABLE_OVERLOADING)
data WebViewGetWebExtensionModeMethodInfo
instance (signature ~ (m WebKit2.Enums.WebExtensionMode), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewGetWebExtensionModeMethodInfo a signature where
    overloadedMethod = webViewGetWebExtensionMode

instance O.OverloadedMethodInfo WebViewGetWebExtensionModeMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewGetWebExtensionMode",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewGetWebExtensionMode"
        })


#endif

-- method WebView::get_website_data_manager
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "WebKit2" , name = "WebsiteDataManager" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_get_website_data_manager" webkit_web_view_get_website_data_manager :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO (Ptr WebKit2.WebsiteDataManager.WebsiteDataManager)

-- | Get the t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager' associated to /@webView@/.
-- 
-- If /@webView@/ is not ephemeral,
-- the returned t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager' will be the same as the t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'
-- of /@webView@/\'s t'GI.WebKit2.Objects.WebContext.WebContext'.
-- 
-- /Since: 2.16/
webViewGetWebsiteDataManager ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m WebKit2.WebsiteDataManager.WebsiteDataManager
    -- ^ __Returns:__ a t'GI.WebKit2.Objects.WebsiteDataManager.WebsiteDataManager'
webViewGetWebsiteDataManager webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result <- webkit_web_view_get_website_data_manager webView'
    checkUnexpectedReturnNULL "webViewGetWebsiteDataManager" result
    result' <- (newObject WebKit2.WebsiteDataManager.WebsiteDataManager) result
    touchManagedPtr webView
    return result'

#if defined(ENABLE_OVERLOADING)
data WebViewGetWebsiteDataManagerMethodInfo
instance (signature ~ (m WebKit2.WebsiteDataManager.WebsiteDataManager), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewGetWebsiteDataManagerMethodInfo a signature where
    overloadedMethod = webViewGetWebsiteDataManager

instance O.OverloadedMethodInfo WebViewGetWebsiteDataManagerMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewGetWebsiteDataManager",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewGetWebsiteDataManager"
        })


#endif

-- method WebView::get_website_policies
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "WebKit2" , name = "WebsitePolicies" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_get_website_policies" webkit_web_view_get_website_policies :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO (Ptr WebKit2.WebsitePolicies.WebsitePolicies)

-- | Gets the default website policies.
-- 
-- Gets the default website policies set on construction in the
-- /@webView@/. These can be overridden on a per-origin basis via the
-- [WebView::decidePolicy]("GI.WebKit2.Objects.WebView#g:signal:decidePolicy") signal handler.
-- 
-- See also 'GI.WebKit2.Objects.PolicyDecision.policyDecisionUseWithPolicies'.
-- 
-- /Since: 2.30/
webViewGetWebsitePolicies ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m WebKit2.WebsitePolicies.WebsitePolicies
    -- ^ __Returns:__ the default t'GI.WebKit2.Objects.WebsitePolicies.WebsitePolicies'
    --     associated with the view.
webViewGetWebsitePolicies webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result <- webkit_web_view_get_website_policies webView'
    checkUnexpectedReturnNULL "webViewGetWebsitePolicies" result
    result' <- (newObject WebKit2.WebsitePolicies.WebsitePolicies) result
    touchManagedPtr webView
    return result'

#if defined(ENABLE_OVERLOADING)
data WebViewGetWebsitePoliciesMethodInfo
instance (signature ~ (m WebKit2.WebsitePolicies.WebsitePolicies), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewGetWebsitePoliciesMethodInfo a signature where
    overloadedMethod = webViewGetWebsitePolicies

instance O.OverloadedMethodInfo WebViewGetWebsitePoliciesMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewGetWebsitePolicies",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewGetWebsitePolicies"
        })


#endif

-- method WebView::get_window_properties
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "WebKit2" , name = "WindowProperties" })
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_get_window_properties" webkit_web_view_get_window_properties :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO (Ptr WebKit2.WindowProperties.WindowProperties)

-- | Get the t'GI.WebKit2.Objects.WindowProperties.WindowProperties' object.
-- 
-- Get the t'GI.WebKit2.Objects.WindowProperties.WindowProperties' object containing the properties
-- that the window containing /@webView@/ should have.
webViewGetWindowProperties ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m WebKit2.WindowProperties.WindowProperties
    -- ^ __Returns:__ the t'GI.WebKit2.Objects.WindowProperties.WindowProperties' of /@webView@/
webViewGetWindowProperties webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result <- webkit_web_view_get_window_properties webView'
    checkUnexpectedReturnNULL "webViewGetWindowProperties" result
    result' <- (newObject WebKit2.WindowProperties.WindowProperties) result
    touchManagedPtr webView
    return result'

#if defined(ENABLE_OVERLOADING)
data WebViewGetWindowPropertiesMethodInfo
instance (signature ~ (m WebKit2.WindowProperties.WindowProperties), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewGetWindowPropertiesMethodInfo a signature where
    overloadedMethod = webViewGetWindowProperties

instance O.OverloadedMethodInfo WebViewGetWindowPropertiesMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewGetWindowProperties",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewGetWindowProperties"
        })


#endif

-- method WebView::get_zoom_level
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TDouble)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_get_zoom_level" webkit_web_view_get_zoom_level :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO CDouble

-- | Set the zoom level of /@webView@/.
-- 
-- Get the zoom level of /@webView@/, i.e. the factor by which the
-- view contents are scaled with respect to their original size.
webViewGetZoomLevel ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m Double
    -- ^ __Returns:__ the current zoom level of /@webView@/
webViewGetZoomLevel webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result <- webkit_web_view_get_zoom_level webView'
    let result' = realToFrac result
    touchManagedPtr webView
    return result'

#if defined(ENABLE_OVERLOADING)
data WebViewGetZoomLevelMethodInfo
instance (signature ~ (m Double), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewGetZoomLevelMethodInfo a signature where
    overloadedMethod = webViewGetZoomLevel

instance O.OverloadedMethodInfo WebViewGetZoomLevelMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewGetZoomLevel",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewGetZoomLevel"
        })


#endif

-- method WebView::go_back
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_go_back" webkit_web_view_go_back :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO ()

-- | Loads the previous history item.
-- 
-- You can monitor the load operation by connecting to
-- [WebView::loadChanged]("GI.WebKit2.Objects.WebView#g:signal:loadChanged") signal.
webViewGoBack ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m ()
webViewGoBack webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    webkit_web_view_go_back webView'
    touchManagedPtr webView
    return ()

#if defined(ENABLE_OVERLOADING)
data WebViewGoBackMethodInfo
instance (signature ~ (m ()), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewGoBackMethodInfo a signature where
    overloadedMethod = webViewGoBack

instance O.OverloadedMethodInfo WebViewGoBackMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewGoBack",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewGoBack"
        })


#endif

-- method WebView::go_forward
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_go_forward" webkit_web_view_go_forward :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO ()

-- | Loads the next history item.
-- 
-- You can monitor the load operation by connecting to
-- [WebView::loadChanged]("GI.WebKit2.Objects.WebView#g:signal:loadChanged") signal.
webViewGoForward ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m ()
webViewGoForward webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    webkit_web_view_go_forward webView'
    touchManagedPtr webView
    return ()

#if defined(ENABLE_OVERLOADING)
data WebViewGoForwardMethodInfo
instance (signature ~ (m ()), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewGoForwardMethodInfo a signature where
    overloadedMethod = webViewGoForward

instance O.OverloadedMethodInfo WebViewGoForwardMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewGoForward",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewGoForward"
        })


#endif

-- method WebView::go_to_back_forward_list_item
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "list_item"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "BackForwardListItem" }
--           , argCType = Just "WebKitBackForwardListItem*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitBackForwardListItem"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_go_to_back_forward_list_item" webkit_web_view_go_to_back_forward_list_item :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    Ptr WebKit2.BackForwardListItem.BackForwardListItem -> -- list_item : TInterface (Name {namespace = "WebKit2", name = "BackForwardListItem"})
    IO ()

-- | Loads the specific history item /@listItem@/.
-- 
-- You can monitor the load operation by connecting to
-- [WebView::loadChanged]("GI.WebKit2.Objects.WebView#g:signal:loadChanged") signal.
webViewGoToBackForwardListItem ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a, WebKit2.BackForwardListItem.IsBackForwardListItem b) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> b
    -- ^ /@listItem@/: a t'GI.WebKit2.Objects.BackForwardListItem.BackForwardListItem'
    -> m ()
webViewGoToBackForwardListItem webView listItem = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    listItem' <- unsafeManagedPtrCastPtr listItem
    webkit_web_view_go_to_back_forward_list_item webView' listItem'
    touchManagedPtr webView
    touchManagedPtr listItem
    return ()

#if defined(ENABLE_OVERLOADING)
data WebViewGoToBackForwardListItemMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsWebView a, WebKit2.BackForwardListItem.IsBackForwardListItem b) => O.OverloadedMethod WebViewGoToBackForwardListItemMethodInfo a signature where
    overloadedMethod = webViewGoToBackForwardListItem

instance O.OverloadedMethodInfo WebViewGoToBackForwardListItemMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewGoToBackForwardListItem",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewGoToBackForwardListItem"
        })


#endif

-- method WebView::is_controlled_by_automation
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_is_controlled_by_automation" webkit_web_view_is_controlled_by_automation :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO CInt

-- | Get whether a t'GI.WebKit2.Objects.WebView.WebView' was created with [WebView:isControlledByAutomation]("GI.WebKit2.Objects.WebView#g:attr:isControlledByAutomation")
-- property enabled.
-- 
-- Only t'GI.WebKit2.Objects.WebView.WebView's controlled by automation can be used in an
-- automation session.
-- 
-- /Since: 2.18/
webViewIsControlledByAutomation ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if /@webView@/ is controlled by automation, or 'P.False' otherwise.
webViewIsControlledByAutomation webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result <- webkit_web_view_is_controlled_by_automation webView'
    let result' = (/= 0) result
    touchManagedPtr webView
    return result'

#if defined(ENABLE_OVERLOADING)
data WebViewIsControlledByAutomationMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewIsControlledByAutomationMethodInfo a signature where
    overloadedMethod = webViewIsControlledByAutomation

instance O.OverloadedMethodInfo WebViewIsControlledByAutomationMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewIsControlledByAutomation",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewIsControlledByAutomation"
        })


#endif

-- method WebView::is_editable
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_is_editable" webkit_web_view_is_editable :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO CInt

-- | Gets whether the user is allowed to edit the HTML document.
-- 
-- When /@webView@/ is not editable an element in the HTML document can only be edited if the
-- CONTENTEDITABLE attribute has been set on the element or one of its parent
-- elements. By default a t'GI.WebKit2.Objects.WebView.WebView' is not editable.
-- 
-- /Since: 2.8/
webViewIsEditable ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the user is allowed to edit the HTML document, or 'P.False' otherwise.
webViewIsEditable webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result <- webkit_web_view_is_editable webView'
    let result' = (/= 0) result
    touchManagedPtr webView
    return result'

#if defined(ENABLE_OVERLOADING)
data WebViewIsEditableMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewIsEditableMethodInfo a signature where
    overloadedMethod = webViewIsEditable

instance O.OverloadedMethodInfo WebViewIsEditableMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewIsEditable",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewIsEditable"
        })


#endif

-- method WebView::is_ephemeral
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_is_ephemeral" webkit_web_view_is_ephemeral :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO CInt

-- | Get whether a t'GI.WebKit2.Objects.WebView.WebView' is ephemeral.
-- 
-- To create an ephemeral t'GI.WebKit2.Objects.WebView.WebView' you need to
-- use @/g_object_new()/@ and pass is-ephemeral property with 'P.True' value. See
-- [WebView:isEphemeral]("GI.WebKit2.Objects.WebView#g:attr:isEphemeral") for more details.
-- If /@webView@/ was created with a ephemeral [WebView:relatedView]("GI.WebKit2.Objects.WebView#g:attr:relatedView") or an
-- ephemeral [WebView:webContext]("GI.WebKit2.Objects.WebView#g:attr:webContext") it will also be ephemeral.
-- 
-- /Since: 2.16/
webViewIsEphemeral ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if /@webView@/ is ephemeral or 'P.False' otherwise.
webViewIsEphemeral webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result <- webkit_web_view_is_ephemeral webView'
    let result' = (/= 0) result
    touchManagedPtr webView
    return result'

#if defined(ENABLE_OVERLOADING)
data WebViewIsEphemeralMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewIsEphemeralMethodInfo a signature where
    overloadedMethod = webViewIsEphemeral

instance O.OverloadedMethodInfo WebViewIsEphemeralMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewIsEphemeral",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewIsEphemeral"
        })


#endif

-- method WebView::is_immersive_mode_enabled
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_is_immersive_mode_enabled" webkit_web_view_is_immersive_mode_enabled :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO CInt

-- | Gets whether /@webView@/ is in immersive mode.
-- 
-- An immersive session is a mode in which the user is presented with a fully immersive XR experience
-- (such as VR or AR), typically rendered via a headset.
-- 
-- Note that if WebXR is disabled or OPENXR is not used, this API always returns 'P.False'.
-- 
-- /Since: 2.52/
webViewIsImmersiveModeEnabled ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the /@webView@/ is in immersive mode, or 'P.False' otherwise.
webViewIsImmersiveModeEnabled webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result <- webkit_web_view_is_immersive_mode_enabled webView'
    let result' = (/= 0) result
    touchManagedPtr webView
    return result'

#if defined(ENABLE_OVERLOADING)
data WebViewIsImmersiveModeEnabledMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewIsImmersiveModeEnabledMethodInfo a signature where
    overloadedMethod = webViewIsImmersiveModeEnabled

instance O.OverloadedMethodInfo WebViewIsImmersiveModeEnabledMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewIsImmersiveModeEnabled",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewIsImmersiveModeEnabled"
        })


#endif

-- method WebView::is_loading
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_is_loading" webkit_web_view_is_loading :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO CInt

-- | Gets the value of the [WebView:isLoading]("GI.WebKit2.Objects.WebView#g:attr:isLoading") property.
-- 
-- You can monitor when a t'GI.WebKit2.Objects.WebView.WebView' is loading a page by connecting to
-- notify[isLoading](#g:signal:isLoading) signal of /@webView@/. This is useful when you are
-- interesting in knowing when the view is loading something but not in the
-- details about the status of the load operation, for example to start a spinner
-- when the view is loading a page and stop it when it finishes.
webViewIsLoading ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if /@webView@/ is loading a page or 'P.False' otherwise.
webViewIsLoading webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result <- webkit_web_view_is_loading webView'
    let result' = (/= 0) result
    touchManagedPtr webView
    return result'

#if defined(ENABLE_OVERLOADING)
data WebViewIsLoadingMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewIsLoadingMethodInfo a signature where
    overloadedMethod = webViewIsLoading

instance O.OverloadedMethodInfo WebViewIsLoadingMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewIsLoading",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewIsLoading"
        })


#endif

-- method WebView::is_playing_audio
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_is_playing_audio" webkit_web_view_is_playing_audio :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO CInt

-- | Gets the value of the [WebView:isPlayingAudio]("GI.WebKit2.Objects.WebView#g:attr:isPlayingAudio") property.
-- 
-- You can monitor when a page in a t'GI.WebKit2.Objects.WebView.WebView' is playing audio by
-- connecting to the notify[isPlayingAudio](#g:signal:isPlayingAudio) signal of /@webView@/. This
-- is useful when the application wants to provide visual feedback when a
-- page is producing sound.
-- 
-- /Since: 2.8/
webViewIsPlayingAudio ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if a page in /@webView@/ is playing audio or 'P.False' otherwise.
webViewIsPlayingAudio webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result <- webkit_web_view_is_playing_audio webView'
    let result' = (/= 0) result
    touchManagedPtr webView
    return result'

#if defined(ENABLE_OVERLOADING)
data WebViewIsPlayingAudioMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewIsPlayingAudioMethodInfo a signature where
    overloadedMethod = webViewIsPlayingAudio

instance O.OverloadedMethodInfo WebViewIsPlayingAudioMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewIsPlayingAudio",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewIsPlayingAudio"
        })


#endif

-- method WebView::leave_immersive_mode
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_leave_immersive_mode" webkit_web_view_leave_immersive_mode :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO ()

-- | Requests to leave the immersive mode this t'GI.WebKit2.Objects.WebView.WebView' is in.
-- 
-- Users interact with web content to start XR sessions, and can typically
-- end the sessions themselves, but applications might need to end a session on their
-- own based on application or platform logic.
-- 
-- Note that if WebXR is disabled, or if it is enabled but the /@webView@/ is not in
-- immersive mode, this API does nothing. See also 'GI.WebKit2.Objects.WebView.webViewIsImmersiveModeEnabled'.
-- 
-- /Since: 2.52/
webViewLeaveImmersiveMode ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m ()
webViewLeaveImmersiveMode webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    webkit_web_view_leave_immersive_mode webView'
    touchManagedPtr webView
    return ()

#if defined(ENABLE_OVERLOADING)
data WebViewLeaveImmersiveModeMethodInfo
instance (signature ~ (m ()), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewLeaveImmersiveModeMethodInfo a signature where
    overloadedMethod = webViewLeaveImmersiveMode

instance O.OverloadedMethodInfo WebViewLeaveImmersiveModeMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewLeaveImmersiveMode",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewLeaveImmersiveMode"
        })


#endif

-- method WebView::load_alternate_html
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "content"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the new content to display as the main page of the @web_view"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "content_uri"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the URI for the alternate page content"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "base_uri"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the base URI for relative locations or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_load_alternate_html" webkit_web_view_load_alternate_html :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    CString ->                              -- content : TBasicType TUTF8
    CString ->                              -- content_uri : TBasicType TUTF8
    CString ->                              -- base_uri : TBasicType TUTF8
    IO ()

-- | Load the given /@content@/ string for the URI /@contentUri@/.
-- 
-- This allows clients to display page-loading errors in the t'GI.WebKit2.Objects.WebView.WebView' itself.
-- When this method is called from [WebView::loadFailed]("GI.WebKit2.Objects.WebView#g:signal:loadFailed") signal to show an
-- error page, then the back-forward list is maintained appropriately.
-- For everything else this method works the same way as 'GI.WebKit2.Objects.WebView.webViewLoadHtml'.
webViewLoadAlternateHtml ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> T.Text
    -- ^ /@content@/: the new content to display as the main page of the /@webView@/
    -> T.Text
    -- ^ /@contentUri@/: the URI for the alternate page content
    -> Maybe (T.Text)
    -- ^ /@baseUri@/: the base URI for relative locations or 'P.Nothing'
    -> m ()
webViewLoadAlternateHtml webView content contentUri baseUri = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    content' <- textToCString content
    contentUri' <- textToCString contentUri
    maybeBaseUri <- case baseUri of
        Nothing -> return FP.nullPtr
        Just jBaseUri -> do
            jBaseUri' <- textToCString jBaseUri
            return jBaseUri'
    webkit_web_view_load_alternate_html webView' content' contentUri' maybeBaseUri
    touchManagedPtr webView
    freeMem content'
    freeMem contentUri'
    freeMem maybeBaseUri
    return ()

#if defined(ENABLE_OVERLOADING)
data WebViewLoadAlternateHtmlMethodInfo
instance (signature ~ (T.Text -> T.Text -> Maybe (T.Text) -> m ()), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewLoadAlternateHtmlMethodInfo a signature where
    overloadedMethod = webViewLoadAlternateHtml

instance O.OverloadedMethodInfo WebViewLoadAlternateHtmlMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewLoadAlternateHtml",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewLoadAlternateHtml"
        })


#endif

-- method WebView::load_bytes
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "bytes"
--           , argType = TInterface Name { namespace = "GLib" , name = "Bytes" }
--           , argCType = Just "GBytes*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "input data to load" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "mime_type"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the MIME type of @bytes, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "encoding"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the character encoding of @bytes, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "base_uri"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the base URI for relative locations or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_load_bytes" webkit_web_view_load_bytes :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    Ptr GLib.Bytes.Bytes ->                 -- bytes : TInterface (Name {namespace = "GLib", name = "Bytes"})
    CString ->                              -- mime_type : TBasicType TUTF8
    CString ->                              -- encoding : TBasicType TUTF8
    CString ->                              -- base_uri : TBasicType TUTF8
    IO ()

-- | Load the specified /@bytes@/ into /@webView@/ using the given /@mimeType@/ and /@encoding@/.
-- 
-- When /@mimeType@/ is 'P.Nothing', it defaults to \"text\/html\".
-- When /@encoding@/ is 'P.Nothing', it defaults to \"UTF-8\".
-- When /@baseUri@/ is 'P.Nothing', it defaults to \"about:blank\".
-- You can monitor the load operation by connecting to [WebView::loadChanged]("GI.WebKit2.Objects.WebView#g:signal:loadChanged") signal.
-- 
-- /Since: 2.6/
webViewLoadBytes ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> GLib.Bytes.Bytes
    -- ^ /@bytes@/: input data to load
    -> Maybe (T.Text)
    -- ^ /@mimeType@/: the MIME type of /@bytes@/, or 'P.Nothing'
    -> Maybe (T.Text)
    -- ^ /@encoding@/: the character encoding of /@bytes@/, or 'P.Nothing'
    -> Maybe (T.Text)
    -- ^ /@baseUri@/: the base URI for relative locations or 'P.Nothing'
    -> m ()
webViewLoadBytes webView bytes mimeType encoding baseUri = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    bytes' <- unsafeManagedPtrGetPtr bytes
    maybeMimeType <- case mimeType of
        Nothing -> return FP.nullPtr
        Just jMimeType -> do
            jMimeType' <- textToCString jMimeType
            return jMimeType'
    maybeEncoding <- case encoding of
        Nothing -> return FP.nullPtr
        Just jEncoding -> do
            jEncoding' <- textToCString jEncoding
            return jEncoding'
    maybeBaseUri <- case baseUri of
        Nothing -> return FP.nullPtr
        Just jBaseUri -> do
            jBaseUri' <- textToCString jBaseUri
            return jBaseUri'
    webkit_web_view_load_bytes webView' bytes' maybeMimeType maybeEncoding maybeBaseUri
    touchManagedPtr webView
    touchManagedPtr bytes
    freeMem maybeMimeType
    freeMem maybeEncoding
    freeMem maybeBaseUri
    return ()

#if defined(ENABLE_OVERLOADING)
data WebViewLoadBytesMethodInfo
instance (signature ~ (GLib.Bytes.Bytes -> Maybe (T.Text) -> Maybe (T.Text) -> Maybe (T.Text) -> m ()), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewLoadBytesMethodInfo a signature where
    overloadedMethod = webViewLoadBytes

instance O.OverloadedMethodInfo WebViewLoadBytesMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewLoadBytes",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewLoadBytes"
        })


#endif

-- method WebView::load_html
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "content"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The HTML string to load"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "base_uri"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The base URI for relative locations or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_load_html" webkit_web_view_load_html :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    CString ->                              -- content : TBasicType TUTF8
    CString ->                              -- base_uri : TBasicType TUTF8
    IO ()

-- | Load the given /@content@/ string with the specified /@baseUri@/.
-- 
-- If /@baseUri@/ is not 'P.Nothing', relative URLs in the /@content@/ will be
-- resolved against /@baseUri@/ and absolute local paths must be children of the /@baseUri@/.
-- For security reasons absolute local paths that are not children of /@baseUri@/
-- will cause the web process to terminate.
-- If you need to include URLs in /@content@/ that are local paths in a different
-- directory than /@baseUri@/ you can build a data URI for them. When /@baseUri@/ is 'P.Nothing',
-- it defaults to \"about:blank\". The mime type of the document will be \"text\/html\".
-- You can monitor the load operation by connecting to [WebView::loadChanged]("GI.WebKit2.Objects.WebView#g:signal:loadChanged") signal.
webViewLoadHtml ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> T.Text
    -- ^ /@content@/: The HTML string to load
    -> Maybe (T.Text)
    -- ^ /@baseUri@/: The base URI for relative locations or 'P.Nothing'
    -> m ()
webViewLoadHtml webView content baseUri = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    content' <- textToCString content
    maybeBaseUri <- case baseUri of
        Nothing -> return FP.nullPtr
        Just jBaseUri -> do
            jBaseUri' <- textToCString jBaseUri
            return jBaseUri'
    webkit_web_view_load_html webView' content' maybeBaseUri
    touchManagedPtr webView
    freeMem content'
    freeMem maybeBaseUri
    return ()

#if defined(ENABLE_OVERLOADING)
data WebViewLoadHtmlMethodInfo
instance (signature ~ (T.Text -> Maybe (T.Text) -> m ()), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewLoadHtmlMethodInfo a signature where
    overloadedMethod = webViewLoadHtml

instance O.OverloadedMethodInfo WebViewLoadHtmlMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewLoadHtml",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewLoadHtml"
        })


#endif

-- method WebView::load_plain_text
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "plain_text"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The plain text to load"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_load_plain_text" webkit_web_view_load_plain_text :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    CString ->                              -- plain_text : TBasicType TUTF8
    IO ()

-- | Load the specified /@plainText@/ string into /@webView@/.
-- 
-- The mime type of document will be \"text\/plain\". You can monitor the load
-- operation by connecting to [WebView::loadChanged]("GI.WebKit2.Objects.WebView#g:signal:loadChanged") signal.
webViewLoadPlainText ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> T.Text
    -- ^ /@plainText@/: The plain text to load
    -> m ()
webViewLoadPlainText webView plainText = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    plainText' <- textToCString plainText
    webkit_web_view_load_plain_text webView' plainText'
    touchManagedPtr webView
    freeMem plainText'
    return ()

#if defined(ENABLE_OVERLOADING)
data WebViewLoadPlainTextMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewLoadPlainTextMethodInfo a signature where
    overloadedMethod = webViewLoadPlainText

instance O.OverloadedMethodInfo WebViewLoadPlainTextMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewLoadPlainText",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewLoadPlainText"
        })


#endif

-- method WebView::load_request
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "request"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "URIRequest" }
--           , argCType = Just "WebKitURIRequest*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitURIRequest to load"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_load_request" webkit_web_view_load_request :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    Ptr WebKit2.URIRequest.URIRequest ->    -- request : TInterface (Name {namespace = "WebKit2", name = "URIRequest"})
    IO ()

-- | Requests loading of the specified t'GI.WebKit2.Objects.URIRequest.URIRequest'.
-- 
-- You can monitor the load operation by connecting to
-- [WebView::loadChanged]("GI.WebKit2.Objects.WebView#g:signal:loadChanged") signal.
webViewLoadRequest ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a, WebKit2.URIRequest.IsURIRequest b) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> b
    -- ^ /@request@/: a t'GI.WebKit2.Objects.URIRequest.URIRequest' to load
    -> m ()
webViewLoadRequest webView request = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    request' <- unsafeManagedPtrCastPtr request
    webkit_web_view_load_request webView' request'
    touchManagedPtr webView
    touchManagedPtr request
    return ()

#if defined(ENABLE_OVERLOADING)
data WebViewLoadRequestMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsWebView a, WebKit2.URIRequest.IsURIRequest b) => O.OverloadedMethod WebViewLoadRequestMethodInfo a signature where
    overloadedMethod = webViewLoadRequest

instance O.OverloadedMethodInfo WebViewLoadRequestMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewLoadRequest",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewLoadRequest"
        })


#endif

-- method WebView::load_uri
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "uri"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "an URI string" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_load_uri" webkit_web_view_load_uri :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    CString ->                              -- uri : TBasicType TUTF8
    IO ()

-- | Requests loading of the specified URI string.
-- 
-- You can monitor the load operation by connecting to
-- [WebView::loadChanged]("GI.WebKit2.Objects.WebView#g:signal:loadChanged") signal.
webViewLoadUri ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> T.Text
    -- ^ /@uri@/: an URI string
    -> m ()
webViewLoadUri webView uri = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    uri' <- textToCString uri
    webkit_web_view_load_uri webView' uri'
    touchManagedPtr webView
    freeMem uri'
    return ()

#if defined(ENABLE_OVERLOADING)
data WebViewLoadUriMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewLoadUriMethodInfo a signature where
    overloadedMethod = webViewLoadUri

instance O.OverloadedMethodInfo WebViewLoadUriMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewLoadUri",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewLoadUri"
        })


#endif

-- method WebView::reload
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_reload" webkit_web_view_reload :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO ()

-- | Reloads the current contents of /@webView@/.
-- 
-- See also 'GI.WebKit2.Objects.WebView.webViewReloadBypassCache'.
webViewReload ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m ()
webViewReload webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    webkit_web_view_reload webView'
    touchManagedPtr webView
    return ()

#if defined(ENABLE_OVERLOADING)
data WebViewReloadMethodInfo
instance (signature ~ (m ()), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewReloadMethodInfo a signature where
    overloadedMethod = webViewReload

instance O.OverloadedMethodInfo WebViewReloadMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewReload",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewReload"
        })


#endif

-- method WebView::reload_bypass_cache
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_reload_bypass_cache" webkit_web_view_reload_bypass_cache :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO ()

-- | Reloads the current contents of /@webView@/ without
-- using any cached data.
webViewReloadBypassCache ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m ()
webViewReloadBypassCache webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    webkit_web_view_reload_bypass_cache webView'
    touchManagedPtr webView
    return ()

#if defined(ENABLE_OVERLOADING)
data WebViewReloadBypassCacheMethodInfo
instance (signature ~ (m ()), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewReloadBypassCacheMethodInfo a signature where
    overloadedMethod = webViewReloadBypassCache

instance O.OverloadedMethodInfo WebViewReloadBypassCacheMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewReloadBypassCache",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewReloadBypassCache"
        })


#endif

-- method WebView::restore_session_state
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "state"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "WebViewSessionState" }
--           , argCType = Just "WebKitWebViewSessionState*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebViewSessionState"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_restore_session_state" webkit_web_view_restore_session_state :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    Ptr WebKit2.WebViewSessionState.WebViewSessionState -> -- state : TInterface (Name {namespace = "WebKit2", name = "WebViewSessionState"})
    IO ()

-- | Restore the /@webView@/ session state from /@state@/
-- 
-- /Since: 2.12/
webViewRestoreSessionState ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> WebKit2.WebViewSessionState.WebViewSessionState
    -- ^ /@state@/: a t'GI.WebKit2.Structs.WebViewSessionState.WebViewSessionState'
    -> m ()
webViewRestoreSessionState webView state = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    state' <- unsafeManagedPtrGetPtr state
    webkit_web_view_restore_session_state webView' state'
    touchManagedPtr webView
    touchManagedPtr state
    return ()

#if defined(ENABLE_OVERLOADING)
data WebViewRestoreSessionStateMethodInfo
instance (signature ~ (WebKit2.WebViewSessionState.WebViewSessionState -> m ()), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewRestoreSessionStateMethodInfo a signature where
    overloadedMethod = webViewRestoreSessionState

instance O.OverloadedMethodInfo WebViewRestoreSessionStateMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewRestoreSessionState",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewRestoreSessionState"
        })


#endif

-- method WebView::run_async_javascript_function_in_world
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "body"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the JavaScript function body"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "arguments"
--           , argType = TVariant
--           , argCType = Just "GVariant*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "a #GVariant with format `{&sv}` storing the function arguments. Function argument values must be one of the following types, or contain only the following GVariant types: number, string, array, and dictionary."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "world_name"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const char*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the name of a #WebKitScriptWorld, if no name (i.e. %NULL) is provided, the default world is used. Any value that is not %NULL is a distinct world."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "cancellable"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "Cancellable" }
--           , argCType = Just "GCancellable*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GCancellable or %NULL to ignore"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "callback"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "AsyncReadyCallback" }
--           , argCType = Just "GAsyncReadyCallback"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a #GAsyncReadyCallback to call when the script finished"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeAsync
--           , argClosure = 6
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "user_data"
--           , argType = TBasicType TPtr
--           , argCType = Just "gpointer"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the data to pass to callback function"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_run_async_javascript_function_in_world" webkit_web_view_run_async_javascript_function_in_world :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    CString ->                              -- body : TBasicType TUTF8
    Ptr GVariant ->                         -- arguments : TVariant
    CString ->                              -- world_name : TBasicType TUTF8
    Ptr Gio.Cancellable.Cancellable ->      -- cancellable : TInterface (Name {namespace = "Gio", name = "Cancellable"})
    FunPtr Gio.Callbacks.C_AsyncReadyCallback -> -- callback : TInterface (Name {namespace = "Gio", name = "AsyncReadyCallback"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    IO ()

{-# DEPRECATED webViewRunAsyncJavascriptFunctionInWorld ["(Since version 2.40)","Use 'GI.WebKit2.Objects.WebView.webViewCallAsyncJavascriptFunction' instead."] #-}
-- | Asynchronously run /@body@/ in the script world with name /@worldName@/ of the current page context in
-- /@webView@/. If WebKitSettings:enable-javascript is FALSE, this method will do nothing. This API
-- differs from 'GI.WebKit2.Objects.WebView.webViewRunJavascriptInWorld' in that the JavaScript function can return a
-- Promise and its result will be properly passed to the callback.
-- 
-- When the operation is finished, /@callback@/ will be called. You can then call
-- 'GI.WebKit2.Objects.WebView.webViewRunJavascriptInWorldFinish' to get the result of the operation.
-- 
-- For instance here is a dummy example that shows how to pass arguments to a JS function that
-- returns a Promise that resolves with the passed argument:
-- 
-- 
-- === /c code/
-- >static void
-- >web_view_javascript_finished (GObject      *object,
-- >                              GAsyncResult *result,
-- >                              gpointer      user_data)
-- >{
-- >    WebKitJavascriptResult *js_result;
-- >    JSCValue               *value;
-- >    GError                 *error = NULL;
-- >
-- >    js_result = webkit_web_view_run_javascript_finish (WEBKIT_WEB_VIEW (object), result, &error);
-- >    if (!js_result) {
-- >        g_warning ("Error running javascript: %s", error->message);
-- >        g_error_free (error);
-- >        return;
-- >    }
-- >
-- >    value = webkit_javascript_result_get_js_value (js_result);
-- >    if (jsc_value_is_number (value)) {
-- >        gint32        int_value = jsc_value_to_string (value);
-- >        JSCException *exception = jsc_context_get_exception (jsc_value_get_context (value));
-- >        if (exception)
-- >            g_warning ("Error running javascript: %s", jsc_exception_get_message (exception));
-- >        else
-- >            g_print ("Script result: %d\n", int_value);
-- >        g_free (str_value);
-- >    } else {
-- >        g_warning ("Error running javascript: unexpected return value");
-- >    }
-- >    webkit_javascript_result_unref (js_result);
-- >}
-- >
-- >static void
-- >web_view_evaluate_promise (WebKitWebView *web_view)
-- >{
-- >    GVariantDict dict;
-- >    g_variant_dict_init (&dict, NULL);
-- >    g_variant_dict_insert (&dict, "count", "u", 42);
-- >    GVariant *args = g_variant_dict_end (&dict);
-- >    const gchar *body = "return new Promise((resolve) => { resolve(count); });";
-- >    webkit_web_view_run_async_javascript_function_in_world (web_view, body, arguments, NULL, NULL, web_view_javascript_finished, NULL);
-- >}
-- 
-- 
-- /Since: 2.38/
webViewRunAsyncJavascriptFunctionInWorld ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a, Gio.Cancellable.IsCancellable b) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> T.Text
    -- ^ /@body@/: the JavaScript function body
    -> GVariant
    -- ^ /@arguments@/: a t'GVariant' with format @{&sv}@ storing the function arguments. Function argument values must be one of the following types, or contain only the following GVariant types: number, string, array, and dictionary.
    -> Maybe (T.Text)
    -- ^ /@worldName@/: the name of a @/WebKitScriptWorld/@, if no name (i.e. 'P.Nothing') is provided, the default world is used. Any value that is not 'P.Nothing' is a distinct world.
    -> Maybe (b)
    -- ^ /@cancellable@/: a t'GI.Gio.Objects.Cancellable.Cancellable' or 'P.Nothing' to ignore
    -> Maybe (Gio.Callbacks.AsyncReadyCallback)
    -- ^ /@callback@/: a t'GI.Gio.Callbacks.AsyncReadyCallback' to call when the script finished
    -> m ()
webViewRunAsyncJavascriptFunctionInWorld webView body arguments worldName cancellable callback = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    body' <- textToCString body
    arguments' <- unsafeManagedPtrGetPtr arguments
    maybeWorldName <- case worldName of
        Nothing -> return FP.nullPtr
        Just jWorldName -> do
            jWorldName' <- textToCString jWorldName
            return jWorldName'
    maybeCancellable <- case cancellable of
        Nothing -> return FP.nullPtr
        Just jCancellable -> do
            jCancellable' <- unsafeManagedPtrCastPtr jCancellable
            return jCancellable'
    maybeCallback <- case callback of
        Nothing -> return FP.nullFunPtr
        Just jCallback -> do
            ptrcallback <- callocMem :: IO (Ptr (FunPtr Gio.Callbacks.C_AsyncReadyCallback))
            jCallback' <- Gio.Callbacks.mk_AsyncReadyCallback (Gio.Callbacks.wrap_AsyncReadyCallback (Just ptrcallback) (Gio.Callbacks.drop_closures_AsyncReadyCallback jCallback))
            poke ptrcallback jCallback'
            return jCallback'
    let userData = nullPtr
    webkit_web_view_run_async_javascript_function_in_world webView' body' arguments' maybeWorldName maybeCancellable maybeCallback userData
    touchManagedPtr webView
    touchManagedPtr arguments
    whenJust cancellable touchManagedPtr
    freeMem body'
    freeMem maybeWorldName
    return ()

#if defined(ENABLE_OVERLOADING)
data WebViewRunAsyncJavascriptFunctionInWorldMethodInfo
instance (signature ~ (T.Text -> GVariant -> Maybe (T.Text) -> Maybe (b) -> Maybe (Gio.Callbacks.AsyncReadyCallback) -> m ()), MonadIO m, IsWebView a, Gio.Cancellable.IsCancellable b) => O.OverloadedMethod WebViewRunAsyncJavascriptFunctionInWorldMethodInfo a signature where
    overloadedMethod = webViewRunAsyncJavascriptFunctionInWorld

instance O.OverloadedMethodInfo WebViewRunAsyncJavascriptFunctionInWorldMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewRunAsyncJavascriptFunctionInWorld",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewRunAsyncJavascriptFunctionInWorld"
        })


#endif

-- method WebView::run_javascript
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "script"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the script to run" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "cancellable"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "Cancellable" }
--           , argCType = Just "GCancellable*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GCancellable or %NULL to ignore"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "callback"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "AsyncReadyCallback" }
--           , argCType = Just "GAsyncReadyCallback"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a #GAsyncReadyCallback to call when the script finished"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeAsync
--           , argClosure = 4
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "user_data"
--           , argType = TBasicType TPtr
--           , argCType = Just "gpointer"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the data to pass to callback function"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_run_javascript" webkit_web_view_run_javascript :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    CString ->                              -- script : TBasicType TUTF8
    Ptr Gio.Cancellable.Cancellable ->      -- cancellable : TInterface (Name {namespace = "Gio", name = "Cancellable"})
    FunPtr Gio.Callbacks.C_AsyncReadyCallback -> -- callback : TInterface (Name {namespace = "Gio", name = "AsyncReadyCallback"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    IO ()

{-# DEPRECATED webViewRunJavascript ["(Since version 2.40)","Use 'GI.WebKit2.Objects.WebView.webViewEvaluateJavascript' instead."] #-}
-- | Asynchronously run /@script@/ in the context of the current page in /@webView@/.
-- 
-- If WebKitSettings:enable-javascript is FALSE, this method will do nothing.
-- 
-- When the operation is finished, /@callback@/ will be called. You can then call
-- 'GI.WebKit2.Objects.WebView.webViewRunJavascriptFinish' to get the result of the operation.
webViewRunJavascript ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a, Gio.Cancellable.IsCancellable b) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> T.Text
    -- ^ /@script@/: the script to run
    -> Maybe (b)
    -- ^ /@cancellable@/: a t'GI.Gio.Objects.Cancellable.Cancellable' or 'P.Nothing' to ignore
    -> Maybe (Gio.Callbacks.AsyncReadyCallback)
    -- ^ /@callback@/: a t'GI.Gio.Callbacks.AsyncReadyCallback' to call when the script finished
    -> m ()
webViewRunJavascript webView script cancellable callback = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    script' <- textToCString script
    maybeCancellable <- case cancellable of
        Nothing -> return FP.nullPtr
        Just jCancellable -> do
            jCancellable' <- unsafeManagedPtrCastPtr jCancellable
            return jCancellable'
    maybeCallback <- case callback of
        Nothing -> return FP.nullFunPtr
        Just jCallback -> do
            ptrcallback <- callocMem :: IO (Ptr (FunPtr Gio.Callbacks.C_AsyncReadyCallback))
            jCallback' <- Gio.Callbacks.mk_AsyncReadyCallback (Gio.Callbacks.wrap_AsyncReadyCallback (Just ptrcallback) (Gio.Callbacks.drop_closures_AsyncReadyCallback jCallback))
            poke ptrcallback jCallback'
            return jCallback'
    let userData = nullPtr
    webkit_web_view_run_javascript webView' script' maybeCancellable maybeCallback userData
    touchManagedPtr webView
    whenJust cancellable touchManagedPtr
    freeMem script'
    return ()

#if defined(ENABLE_OVERLOADING)
data WebViewRunJavascriptMethodInfo
instance (signature ~ (T.Text -> Maybe (b) -> Maybe (Gio.Callbacks.AsyncReadyCallback) -> m ()), MonadIO m, IsWebView a, Gio.Cancellable.IsCancellable b) => O.OverloadedMethod WebViewRunJavascriptMethodInfo a signature where
    overloadedMethod = webViewRunJavascript

instance O.OverloadedMethodInfo WebViewRunJavascriptMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewRunJavascript",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewRunJavascript"
        })


#endif

-- method WebView::run_javascript_finish
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "result"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "AsyncResult" }
--           , argCType = Just "GAsyncResult*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GAsyncResult" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "WebKit2" , name = "JavascriptResult" })
-- throws : True
-- Skip return : False

foreign import ccall "webkit_web_view_run_javascript_finish" webkit_web_view_run_javascript_finish :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    Ptr Gio.AsyncResult.AsyncResult ->      -- result : TInterface (Name {namespace = "Gio", name = "AsyncResult"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr WebKit2.JavascriptResult.JavascriptResult)

{-# DEPRECATED webViewRunJavascriptFinish ["(Since version 2.40)","Use 'GI.WebKit2.Objects.WebView.webViewEvaluateJavascriptFinish' instead."] #-}
-- | Finish an asynchronous operation started with 'GI.WebKit2.Objects.WebView.webViewRunJavascript'.
-- 
-- This is an example of using 'GI.WebKit2.Objects.WebView.webViewRunJavascript' with a script returning
-- a string:
-- 
-- 
-- === /c code/
-- >static void
-- >web_view_javascript_finished (GObject      *object,
-- >                              GAsyncResult *result,
-- >                              gpointer      user_data)
-- >{
-- >    WebKitJavascriptResult *js_result;
-- >    JSCValue               *value;
-- >    GError                 *error = NULL;
-- >
-- >    js_result = webkit_web_view_run_javascript_finish (WEBKIT_WEB_VIEW (object), result, &error);
-- >    if (!js_result) {
-- >        g_warning ("Error running javascript: %s", error->message);
-- >        g_error_free (error);
-- >        return;
-- >    }
-- >
-- >    value = webkit_javascript_result_get_js_value (js_result);
-- >    if (jsc_value_is_string (value)) {
-- >        gchar        *str_value = jsc_value_to_string (value);
-- >        JSCException *exception = jsc_context_get_exception (jsc_value_get_context (value));
-- >        if (exception)
-- >            g_warning ("Error running javascript: %s", jsc_exception_get_message (exception));
-- >        else
-- >            g_print ("Script result: %s\n", str_value);
-- >        g_free (str_value);
-- >    } else {
-- >        g_warning ("Error running javascript: unexpected return value");
-- >    }
-- >    webkit_javascript_result_unref (js_result);
-- >}
-- >
-- >static void
-- >web_view_get_link_url (WebKitWebView *web_view,
-- >                       const gchar   *link_id)
-- >{
-- >    gchar *script = g_strdup_printf ("window.document.getElementById('%s').href;", link_id);
-- >    webkit_web_view_run_javascript (web_view, script, NULL, web_view_javascript_finished, NULL);
-- >    g_free (script);
-- >}
webViewRunJavascriptFinish ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a, Gio.AsyncResult.IsAsyncResult b) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> b
    -- ^ /@result@/: a t'GI.Gio.Interfaces.AsyncResult.AsyncResult'
    -> m WebKit2.JavascriptResult.JavascriptResult
    -- ^ __Returns:__ a t'GI.WebKit2.Structs.JavascriptResult.JavascriptResult' with the result of the last executed statement in /@script@/
    --    or 'P.Nothing' in case of error /(Can throw 'Data.GI.Base.GError.GError')/
webViewRunJavascriptFinish webView result_ = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result_' <- unsafeManagedPtrCastPtr result_
    onException (do
        result <- propagateGError $ webkit_web_view_run_javascript_finish webView' result_'
        checkUnexpectedReturnNULL "webViewRunJavascriptFinish" result
        result' <- (wrapBoxed WebKit2.JavascriptResult.JavascriptResult) result
        touchManagedPtr webView
        touchManagedPtr result_
        return result'
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data WebViewRunJavascriptFinishMethodInfo
instance (signature ~ (b -> m WebKit2.JavascriptResult.JavascriptResult), MonadIO m, IsWebView a, Gio.AsyncResult.IsAsyncResult b) => O.OverloadedMethod WebViewRunJavascriptFinishMethodInfo a signature where
    overloadedMethod = webViewRunJavascriptFinish

instance O.OverloadedMethodInfo WebViewRunJavascriptFinishMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewRunJavascriptFinish",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewRunJavascriptFinish"
        })


#endif

-- method WebView::run_javascript_from_gresource
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "resource"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the location of the resource to load"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "cancellable"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "Cancellable" }
--           , argCType = Just "GCancellable*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GCancellable or %NULL to ignore"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "callback"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "AsyncReadyCallback" }
--           , argCType = Just "GAsyncReadyCallback"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a #GAsyncReadyCallback to call when the script finished"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeAsync
--           , argClosure = 4
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "user_data"
--           , argType = TBasicType TPtr
--           , argCType = Just "gpointer"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the data to pass to callback function"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_run_javascript_from_gresource" webkit_web_view_run_javascript_from_gresource :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    CString ->                              -- resource : TBasicType TUTF8
    Ptr Gio.Cancellable.Cancellable ->      -- cancellable : TInterface (Name {namespace = "Gio", name = "Cancellable"})
    FunPtr Gio.Callbacks.C_AsyncReadyCallback -> -- callback : TInterface (Name {namespace = "Gio", name = "AsyncReadyCallback"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    IO ()

{-# DEPRECATED webViewRunJavascriptFromGresource ["(Since version 2.40)","Use 'GI.WebKit2.Objects.WebView.webViewEvaluateJavascript' instead."] #-}
-- | Asynchronously run the script from /@resource@/.
-- 
-- Asynchronously run the script from /@resource@/ in the context of the
-- current page in /@webView@/.
-- 
-- When the operation is finished, /@callback@/ will be called. You can
-- then call 'GI.WebKit2.Objects.WebView.webViewRunJavascriptFromGresourceFinish' to get the result
-- of the operation.
webViewRunJavascriptFromGresource ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a, Gio.Cancellable.IsCancellable b) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> T.Text
    -- ^ /@resource@/: the location of the resource to load
    -> Maybe (b)
    -- ^ /@cancellable@/: a t'GI.Gio.Objects.Cancellable.Cancellable' or 'P.Nothing' to ignore
    -> Maybe (Gio.Callbacks.AsyncReadyCallback)
    -- ^ /@callback@/: a t'GI.Gio.Callbacks.AsyncReadyCallback' to call when the script finished
    -> m ()
webViewRunJavascriptFromGresource webView resource cancellable callback = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    resource' <- textToCString resource
    maybeCancellable <- case cancellable of
        Nothing -> return FP.nullPtr
        Just jCancellable -> do
            jCancellable' <- unsafeManagedPtrCastPtr jCancellable
            return jCancellable'
    maybeCallback <- case callback of
        Nothing -> return FP.nullFunPtr
        Just jCallback -> do
            ptrcallback <- callocMem :: IO (Ptr (FunPtr Gio.Callbacks.C_AsyncReadyCallback))
            jCallback' <- Gio.Callbacks.mk_AsyncReadyCallback (Gio.Callbacks.wrap_AsyncReadyCallback (Just ptrcallback) (Gio.Callbacks.drop_closures_AsyncReadyCallback jCallback))
            poke ptrcallback jCallback'
            return jCallback'
    let userData = nullPtr
    webkit_web_view_run_javascript_from_gresource webView' resource' maybeCancellable maybeCallback userData
    touchManagedPtr webView
    whenJust cancellable touchManagedPtr
    freeMem resource'
    return ()

#if defined(ENABLE_OVERLOADING)
data WebViewRunJavascriptFromGresourceMethodInfo
instance (signature ~ (T.Text -> Maybe (b) -> Maybe (Gio.Callbacks.AsyncReadyCallback) -> m ()), MonadIO m, IsWebView a, Gio.Cancellable.IsCancellable b) => O.OverloadedMethod WebViewRunJavascriptFromGresourceMethodInfo a signature where
    overloadedMethod = webViewRunJavascriptFromGresource

instance O.OverloadedMethodInfo WebViewRunJavascriptFromGresourceMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewRunJavascriptFromGresource",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewRunJavascriptFromGresource"
        })


#endif

-- method WebView::run_javascript_from_gresource_finish
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "result"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "AsyncResult" }
--           , argCType = Just "GAsyncResult*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GAsyncResult" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "WebKit2" , name = "JavascriptResult" })
-- throws : True
-- Skip return : False

foreign import ccall "webkit_web_view_run_javascript_from_gresource_finish" webkit_web_view_run_javascript_from_gresource_finish :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    Ptr Gio.AsyncResult.AsyncResult ->      -- result : TInterface (Name {namespace = "Gio", name = "AsyncResult"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr WebKit2.JavascriptResult.JavascriptResult)

{-# DEPRECATED webViewRunJavascriptFromGresourceFinish ["(Since version 2.40)","Use 'GI.WebKit2.Objects.WebView.webViewEvaluateJavascriptFinish' instead."] #-}
-- | Finish an asynchronous operation started with 'GI.WebKit2.Objects.WebView.webViewRunJavascriptFromGresource'.
-- 
-- Check 'GI.WebKit2.Objects.WebView.webViewRunJavascriptFinish' for a usage example.
webViewRunJavascriptFromGresourceFinish ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a, Gio.AsyncResult.IsAsyncResult b) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> b
    -- ^ /@result@/: a t'GI.Gio.Interfaces.AsyncResult.AsyncResult'
    -> m WebKit2.JavascriptResult.JavascriptResult
    -- ^ __Returns:__ a t'GI.WebKit2.Structs.JavascriptResult.JavascriptResult' with the result of the last executed statement in /@script@/
    --    or 'P.Nothing' in case of error /(Can throw 'Data.GI.Base.GError.GError')/
webViewRunJavascriptFromGresourceFinish webView result_ = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result_' <- unsafeManagedPtrCastPtr result_
    onException (do
        result <- propagateGError $ webkit_web_view_run_javascript_from_gresource_finish webView' result_'
        checkUnexpectedReturnNULL "webViewRunJavascriptFromGresourceFinish" result
        result' <- (wrapBoxed WebKit2.JavascriptResult.JavascriptResult) result
        touchManagedPtr webView
        touchManagedPtr result_
        return result'
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data WebViewRunJavascriptFromGresourceFinishMethodInfo
instance (signature ~ (b -> m WebKit2.JavascriptResult.JavascriptResult), MonadIO m, IsWebView a, Gio.AsyncResult.IsAsyncResult b) => O.OverloadedMethod WebViewRunJavascriptFromGresourceFinishMethodInfo a signature where
    overloadedMethod = webViewRunJavascriptFromGresourceFinish

instance O.OverloadedMethodInfo WebViewRunJavascriptFromGresourceFinishMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewRunJavascriptFromGresourceFinish",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewRunJavascriptFromGresourceFinish"
        })


#endif

-- method WebView::run_javascript_in_world
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "script"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the script to run" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "world_name"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the name of a #WebKitScriptWorld"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "cancellable"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "Cancellable" }
--           , argCType = Just "GCancellable*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GCancellable or %NULL to ignore"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "callback"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "AsyncReadyCallback" }
--           , argCType = Just "GAsyncReadyCallback"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a #GAsyncReadyCallback to call when the script finished"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeAsync
--           , argClosure = 5
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "user_data"
--           , argType = TBasicType TPtr
--           , argCType = Just "gpointer"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the data to pass to callback function"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_run_javascript_in_world" webkit_web_view_run_javascript_in_world :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    CString ->                              -- script : TBasicType TUTF8
    CString ->                              -- world_name : TBasicType TUTF8
    Ptr Gio.Cancellable.Cancellable ->      -- cancellable : TInterface (Name {namespace = "Gio", name = "Cancellable"})
    FunPtr Gio.Callbacks.C_AsyncReadyCallback -> -- callback : TInterface (Name {namespace = "Gio", name = "AsyncReadyCallback"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    IO ()

{-# DEPRECATED webViewRunJavascriptInWorld ["(Since version 2.40)","Use 'GI.WebKit2.Objects.WebView.webViewEvaluateJavascript' instead."] #-}
-- | Asynchronously run /@script@/ in the script world.
-- 
-- Asynchronously run /@script@/ in the script world with name /@worldName@/ of the current page context in /@webView@/.
-- If WebKitSettings:enable-javascript is FALSE, this method will do nothing.
-- 
-- When the operation is finished, /@callback@/ will be called. You can then call
-- 'GI.WebKit2.Objects.WebView.webViewRunJavascriptInWorldFinish' to get the result of the operation.
-- 
-- /Since: 2.22/
webViewRunJavascriptInWorld ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a, Gio.Cancellable.IsCancellable b) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> T.Text
    -- ^ /@script@/: the script to run
    -> T.Text
    -- ^ /@worldName@/: the name of a @/WebKitScriptWorld/@
    -> Maybe (b)
    -- ^ /@cancellable@/: a t'GI.Gio.Objects.Cancellable.Cancellable' or 'P.Nothing' to ignore
    -> Maybe (Gio.Callbacks.AsyncReadyCallback)
    -- ^ /@callback@/: a t'GI.Gio.Callbacks.AsyncReadyCallback' to call when the script finished
    -> m ()
webViewRunJavascriptInWorld webView script worldName cancellable callback = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    script' <- textToCString script
    worldName' <- textToCString worldName
    maybeCancellable <- case cancellable of
        Nothing -> return FP.nullPtr
        Just jCancellable -> do
            jCancellable' <- unsafeManagedPtrCastPtr jCancellable
            return jCancellable'
    maybeCallback <- case callback of
        Nothing -> return FP.nullFunPtr
        Just jCallback -> do
            ptrcallback <- callocMem :: IO (Ptr (FunPtr Gio.Callbacks.C_AsyncReadyCallback))
            jCallback' <- Gio.Callbacks.mk_AsyncReadyCallback (Gio.Callbacks.wrap_AsyncReadyCallback (Just ptrcallback) (Gio.Callbacks.drop_closures_AsyncReadyCallback jCallback))
            poke ptrcallback jCallback'
            return jCallback'
    let userData = nullPtr
    webkit_web_view_run_javascript_in_world webView' script' worldName' maybeCancellable maybeCallback userData
    touchManagedPtr webView
    whenJust cancellable touchManagedPtr
    freeMem script'
    freeMem worldName'
    return ()

#if defined(ENABLE_OVERLOADING)
data WebViewRunJavascriptInWorldMethodInfo
instance (signature ~ (T.Text -> T.Text -> Maybe (b) -> Maybe (Gio.Callbacks.AsyncReadyCallback) -> m ()), MonadIO m, IsWebView a, Gio.Cancellable.IsCancellable b) => O.OverloadedMethod WebViewRunJavascriptInWorldMethodInfo a signature where
    overloadedMethod = webViewRunJavascriptInWorld

instance O.OverloadedMethodInfo WebViewRunJavascriptInWorldMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewRunJavascriptInWorld",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewRunJavascriptInWorld"
        })


#endif

-- method WebView::run_javascript_in_world_finish
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "result"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "AsyncResult" }
--           , argCType = Just "GAsyncResult*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GAsyncResult" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "WebKit2" , name = "JavascriptResult" })
-- throws : True
-- Skip return : False

foreign import ccall "webkit_web_view_run_javascript_in_world_finish" webkit_web_view_run_javascript_in_world_finish :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    Ptr Gio.AsyncResult.AsyncResult ->      -- result : TInterface (Name {namespace = "Gio", name = "AsyncResult"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr WebKit2.JavascriptResult.JavascriptResult)

{-# DEPRECATED webViewRunJavascriptInWorldFinish ["(Since version 2.40)","Use 'GI.WebKit2.Objects.WebView.webViewCallAsyncJavascriptFunctionFinish' instead."] #-}
-- | Finish an asynchronous operation started with 'GI.WebKit2.Objects.WebView.webViewRunJavascriptInWorld'.
-- 
-- /Since: 2.22/
webViewRunJavascriptInWorldFinish ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a, Gio.AsyncResult.IsAsyncResult b) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> b
    -- ^ /@result@/: a t'GI.Gio.Interfaces.AsyncResult.AsyncResult'
    -> m WebKit2.JavascriptResult.JavascriptResult
    -- ^ __Returns:__ a t'GI.WebKit2.Structs.JavascriptResult.JavascriptResult' with the result of the last executed statement in /@script@/
    --    or 'P.Nothing' in case of error /(Can throw 'Data.GI.Base.GError.GError')/
webViewRunJavascriptInWorldFinish webView result_ = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result_' <- unsafeManagedPtrCastPtr result_
    onException (do
        result <- propagateGError $ webkit_web_view_run_javascript_in_world_finish webView' result_'
        checkUnexpectedReturnNULL "webViewRunJavascriptInWorldFinish" result
        result' <- (wrapBoxed WebKit2.JavascriptResult.JavascriptResult) result
        touchManagedPtr webView
        touchManagedPtr result_
        return result'
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data WebViewRunJavascriptInWorldFinishMethodInfo
instance (signature ~ (b -> m WebKit2.JavascriptResult.JavascriptResult), MonadIO m, IsWebView a, Gio.AsyncResult.IsAsyncResult b) => O.OverloadedMethod WebViewRunJavascriptInWorldFinishMethodInfo a signature where
    overloadedMethod = webViewRunJavascriptInWorldFinish

instance O.OverloadedMethodInfo WebViewRunJavascriptInWorldFinishMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewRunJavascriptInWorldFinish",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewRunJavascriptInWorldFinish"
        })


#endif

-- method WebView::save
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "save_mode"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "SaveMode" }
--           , argCType = Just "WebKitSaveMode"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the #WebKitSaveMode specifying how the web page should be saved."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "cancellable"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "Cancellable" }
--           , argCType = Just "GCancellable*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GCancellable or %NULL to ignore"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "callback"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "AsyncReadyCallback" }
--           , argCType = Just "GAsyncReadyCallback"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a #GAsyncReadyCallback to call when the request is satisfied"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeAsync
--           , argClosure = 4
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "user_data"
--           , argType = TBasicType TPtr
--           , argCType = Just "gpointer"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the data to pass to callback function"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_save" webkit_web_view_save :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    CUInt ->                                -- save_mode : TInterface (Name {namespace = "WebKit2", name = "SaveMode"})
    Ptr Gio.Cancellable.Cancellable ->      -- cancellable : TInterface (Name {namespace = "Gio", name = "Cancellable"})
    FunPtr Gio.Callbacks.C_AsyncReadyCallback -> -- callback : TInterface (Name {namespace = "Gio", name = "AsyncReadyCallback"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    IO ()

-- | Asynchronously save the current web page.
-- 
-- Asynchronously save the current web page associated to the
-- t'GI.WebKit2.Objects.WebView.WebView' into a self-contained format using the mode
-- specified in /@saveMode@/.
-- 
-- When the operation is finished, /@callback@/ will be called. You can
-- then call 'GI.WebKit2.Objects.WebView.webViewSaveFinish' to get the result of the
-- operation.
webViewSave ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a, Gio.Cancellable.IsCancellable b) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> WebKit2.Enums.SaveMode
    -- ^ /@saveMode@/: the t'GI.WebKit2.Enums.SaveMode' specifying how the web page should be saved.
    -> Maybe (b)
    -- ^ /@cancellable@/: a t'GI.Gio.Objects.Cancellable.Cancellable' or 'P.Nothing' to ignore
    -> Maybe (Gio.Callbacks.AsyncReadyCallback)
    -- ^ /@callback@/: a t'GI.Gio.Callbacks.AsyncReadyCallback' to call when the request is satisfied
    -> m ()
webViewSave webView saveMode cancellable callback = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    let saveMode' = (fromIntegral . fromEnum) saveMode
    maybeCancellable <- case cancellable of
        Nothing -> return FP.nullPtr
        Just jCancellable -> do
            jCancellable' <- unsafeManagedPtrCastPtr jCancellable
            return jCancellable'
    maybeCallback <- case callback of
        Nothing -> return FP.nullFunPtr
        Just jCallback -> do
            ptrcallback <- callocMem :: IO (Ptr (FunPtr Gio.Callbacks.C_AsyncReadyCallback))
            jCallback' <- Gio.Callbacks.mk_AsyncReadyCallback (Gio.Callbacks.wrap_AsyncReadyCallback (Just ptrcallback) (Gio.Callbacks.drop_closures_AsyncReadyCallback jCallback))
            poke ptrcallback jCallback'
            return jCallback'
    let userData = nullPtr
    webkit_web_view_save webView' saveMode' maybeCancellable maybeCallback userData
    touchManagedPtr webView
    whenJust cancellable touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data WebViewSaveMethodInfo
instance (signature ~ (WebKit2.Enums.SaveMode -> Maybe (b) -> Maybe (Gio.Callbacks.AsyncReadyCallback) -> m ()), MonadIO m, IsWebView a, Gio.Cancellable.IsCancellable b) => O.OverloadedMethod WebViewSaveMethodInfo a signature where
    overloadedMethod = webViewSave

instance O.OverloadedMethodInfo WebViewSaveMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewSave",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewSave"
        })


#endif

-- method WebView::save_finish
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "result"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "AsyncResult" }
--           , argCType = Just "GAsyncResult*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GAsyncResult" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gio" , name = "InputStream" })
-- throws : True
-- Skip return : False

foreign import ccall "webkit_web_view_save_finish" webkit_web_view_save_finish :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    Ptr Gio.AsyncResult.AsyncResult ->      -- result : TInterface (Name {namespace = "Gio", name = "AsyncResult"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Gio.InputStream.InputStream)

-- | Finish an asynchronous operation started with 'GI.WebKit2.Objects.WebView.webViewSave'.
webViewSaveFinish ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a, Gio.AsyncResult.IsAsyncResult b) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> b
    -- ^ /@result@/: a t'GI.Gio.Interfaces.AsyncResult.AsyncResult'
    -> m Gio.InputStream.InputStream
    -- ^ __Returns:__ a t'GI.Gio.Objects.InputStream.InputStream' with the result of saving
    --    the current web page or 'P.Nothing' in case of error. /(Can throw 'Data.GI.Base.GError.GError')/
webViewSaveFinish webView result_ = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result_' <- unsafeManagedPtrCastPtr result_
    onException (do
        result <- propagateGError $ webkit_web_view_save_finish webView' result_'
        checkUnexpectedReturnNULL "webViewSaveFinish" result
        result' <- (wrapObject Gio.InputStream.InputStream) result
        touchManagedPtr webView
        touchManagedPtr result_
        return result'
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data WebViewSaveFinishMethodInfo
instance (signature ~ (b -> m Gio.InputStream.InputStream), MonadIO m, IsWebView a, Gio.AsyncResult.IsAsyncResult b) => O.OverloadedMethod WebViewSaveFinishMethodInfo a signature where
    overloadedMethod = webViewSaveFinish

instance O.OverloadedMethodInfo WebViewSaveFinishMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewSaveFinish",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewSaveFinish"
        })


#endif

-- method WebView::save_to_file
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "file"
--           , argType = TInterface Name { namespace = "Gio" , name = "File" }
--           , argCType = Just "GFile*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the #GFile where the current web page should be saved to."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "save_mode"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "SaveMode" }
--           , argCType = Just "WebKitSaveMode"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the #WebKitSaveMode specifying how the web page should be saved."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "cancellable"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "Cancellable" }
--           , argCType = Just "GCancellable*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GCancellable or %NULL to ignore"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "callback"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "AsyncReadyCallback" }
--           , argCType = Just "GAsyncReadyCallback"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a #GAsyncReadyCallback to call when the request is satisfied"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeAsync
--           , argClosure = 5
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "user_data"
--           , argType = TBasicType TPtr
--           , argCType = Just "gpointer"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the data to pass to callback function"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_save_to_file" webkit_web_view_save_to_file :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    Ptr Gio.File.File ->                    -- file : TInterface (Name {namespace = "Gio", name = "File"})
    CUInt ->                                -- save_mode : TInterface (Name {namespace = "WebKit2", name = "SaveMode"})
    Ptr Gio.Cancellable.Cancellable ->      -- cancellable : TInterface (Name {namespace = "Gio", name = "Cancellable"})
    FunPtr Gio.Callbacks.C_AsyncReadyCallback -> -- callback : TInterface (Name {namespace = "Gio", name = "AsyncReadyCallback"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    IO ()

-- | Asynchronously save the current web page.
-- 
-- Asynchronously save the current web page associated to the
-- t'GI.WebKit2.Objects.WebView.WebView' into a self-contained format using the mode
-- specified in /@saveMode@/ and writing it to /@file@/.
-- 
-- When the operation is finished, /@callback@/ will be called. You can
-- then call 'GI.WebKit2.Objects.WebView.webViewSaveToFileFinish' to get the result of the
-- operation.
webViewSaveToFile ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a, Gio.File.IsFile b, Gio.Cancellable.IsCancellable c) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> b
    -- ^ /@file@/: the t'GI.Gio.Interfaces.File.File' where the current web page should be saved to.
    -> WebKit2.Enums.SaveMode
    -- ^ /@saveMode@/: the t'GI.WebKit2.Enums.SaveMode' specifying how the web page should be saved.
    -> Maybe (c)
    -- ^ /@cancellable@/: a t'GI.Gio.Objects.Cancellable.Cancellable' or 'P.Nothing' to ignore
    -> Maybe (Gio.Callbacks.AsyncReadyCallback)
    -- ^ /@callback@/: a t'GI.Gio.Callbacks.AsyncReadyCallback' to call when the request is satisfied
    -> m ()
webViewSaveToFile webView file saveMode cancellable callback = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    file' <- unsafeManagedPtrCastPtr file
    let saveMode' = (fromIntegral . fromEnum) saveMode
    maybeCancellable <- case cancellable of
        Nothing -> return FP.nullPtr
        Just jCancellable -> do
            jCancellable' <- unsafeManagedPtrCastPtr jCancellable
            return jCancellable'
    maybeCallback <- case callback of
        Nothing -> return FP.nullFunPtr
        Just jCallback -> do
            ptrcallback <- callocMem :: IO (Ptr (FunPtr Gio.Callbacks.C_AsyncReadyCallback))
            jCallback' <- Gio.Callbacks.mk_AsyncReadyCallback (Gio.Callbacks.wrap_AsyncReadyCallback (Just ptrcallback) (Gio.Callbacks.drop_closures_AsyncReadyCallback jCallback))
            poke ptrcallback jCallback'
            return jCallback'
    let userData = nullPtr
    webkit_web_view_save_to_file webView' file' saveMode' maybeCancellable maybeCallback userData
    touchManagedPtr webView
    touchManagedPtr file
    whenJust cancellable touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data WebViewSaveToFileMethodInfo
instance (signature ~ (b -> WebKit2.Enums.SaveMode -> Maybe (c) -> Maybe (Gio.Callbacks.AsyncReadyCallback) -> m ()), MonadIO m, IsWebView a, Gio.File.IsFile b, Gio.Cancellable.IsCancellable c) => O.OverloadedMethod WebViewSaveToFileMethodInfo a signature where
    overloadedMethod = webViewSaveToFile

instance O.OverloadedMethodInfo WebViewSaveToFileMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewSaveToFile",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewSaveToFile"
        })


#endif

-- method WebView::save_to_file_finish
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "result"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "AsyncResult" }
--           , argCType = Just "GAsyncResult*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GAsyncResult" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "webkit_web_view_save_to_file_finish" webkit_web_view_save_to_file_finish :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    Ptr Gio.AsyncResult.AsyncResult ->      -- result : TInterface (Name {namespace = "Gio", name = "AsyncResult"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | Finish an asynchronous operation started with 'GI.WebKit2.Objects.WebView.webViewSaveToFile'.
webViewSaveToFileFinish ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a, Gio.AsyncResult.IsAsyncResult b) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> b
    -- ^ /@result@/: a t'GI.Gio.Interfaces.AsyncResult.AsyncResult'
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
webViewSaveToFileFinish webView result_ = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result_' <- unsafeManagedPtrCastPtr result_
    onException (do
        _ <- propagateGError $ webkit_web_view_save_to_file_finish webView' result_'
        touchManagedPtr webView
        touchManagedPtr result_
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data WebViewSaveToFileFinishMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsWebView a, Gio.AsyncResult.IsAsyncResult b) => O.OverloadedMethod WebViewSaveToFileFinishMethodInfo a signature where
    overloadedMethod = webViewSaveToFileFinish

instance O.OverloadedMethodInfo WebViewSaveToFileFinishMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewSaveToFileFinish",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewSaveToFileFinish"
        })


#endif

-- method WebView::send_message_to_page
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "message"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "UserMessage" }
--           , argCType = Just "WebKitUserMessage*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitUserMessage"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "cancellable"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "Cancellable" }
--           , argCType = Just "GCancellable*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GCancellable or %NULL to ignore"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "callback"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "AsyncReadyCallback" }
--           , argCType = Just "GAsyncReadyCallback"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "(nullable): A #GAsyncReadyCallback to call when the request is satisfied or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeAsync
--           , argClosure = 4
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "user_data"
--           , argType = TBasicType TPtr
--           , argCType = Just "gpointer"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the data to pass to callback function"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_send_message_to_page" webkit_web_view_send_message_to_page :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    Ptr WebKit2.UserMessage.UserMessage ->  -- message : TInterface (Name {namespace = "WebKit2", name = "UserMessage"})
    Ptr Gio.Cancellable.Cancellable ->      -- cancellable : TInterface (Name {namespace = "Gio", name = "Cancellable"})
    FunPtr Gio.Callbacks.C_AsyncReadyCallback -> -- callback : TInterface (Name {namespace = "Gio", name = "AsyncReadyCallback"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    IO ()

-- | Send /@message@/ to the @/WebKitWebPage/@ corresponding to /@webView@/.
-- 
-- If /@message@/ is floating, it\'s consumed.
-- If you don\'t expect any reply, or you simply want to ignore it, you can pass 'P.Nothing' as /@callback@/.
-- When the operation is finished, /@callback@/ will be called. You can then call
-- 'GI.WebKit2.Objects.WebView.webViewSendMessageToPageFinish' to get the message reply.
-- 
-- /Since: 2.28/
webViewSendMessageToPage ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a, WebKit2.UserMessage.IsUserMessage b, Gio.Cancellable.IsCancellable c) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> b
    -- ^ /@message@/: a t'GI.WebKit2.Objects.UserMessage.UserMessage'
    -> Maybe (c)
    -- ^ /@cancellable@/: a t'GI.Gio.Objects.Cancellable.Cancellable' or 'P.Nothing' to ignore
    -> Maybe (Gio.Callbacks.AsyncReadyCallback)
    -- ^ /@callback@/: (nullable): A t'GI.Gio.Callbacks.AsyncReadyCallback' to call when the request is satisfied or 'P.Nothing'
    -> m ()
webViewSendMessageToPage webView message cancellable callback = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    message' <- unsafeManagedPtrCastPtr message
    maybeCancellable <- case cancellable of
        Nothing -> return FP.nullPtr
        Just jCancellable -> do
            jCancellable' <- unsafeManagedPtrCastPtr jCancellable
            return jCancellable'
    maybeCallback <- case callback of
        Nothing -> return FP.nullFunPtr
        Just jCallback -> do
            ptrcallback <- callocMem :: IO (Ptr (FunPtr Gio.Callbacks.C_AsyncReadyCallback))
            jCallback' <- Gio.Callbacks.mk_AsyncReadyCallback (Gio.Callbacks.wrap_AsyncReadyCallback (Just ptrcallback) (Gio.Callbacks.drop_closures_AsyncReadyCallback jCallback))
            poke ptrcallback jCallback'
            return jCallback'
    let userData = nullPtr
    webkit_web_view_send_message_to_page webView' message' maybeCancellable maybeCallback userData
    touchManagedPtr webView
    touchManagedPtr message
    whenJust cancellable touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data WebViewSendMessageToPageMethodInfo
instance (signature ~ (b -> Maybe (c) -> Maybe (Gio.Callbacks.AsyncReadyCallback) -> m ()), MonadIO m, IsWebView a, WebKit2.UserMessage.IsUserMessage b, Gio.Cancellable.IsCancellable c) => O.OverloadedMethod WebViewSendMessageToPageMethodInfo a signature where
    overloadedMethod = webViewSendMessageToPage

instance O.OverloadedMethodInfo WebViewSendMessageToPageMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewSendMessageToPage",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewSendMessageToPage"
        })


#endif

-- method WebView::send_message_to_page_finish
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "result"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "AsyncResult" }
--           , argCType = Just "GAsyncResult*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GAsyncResult" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "WebKit2" , name = "UserMessage" })
-- throws : True
-- Skip return : False

foreign import ccall "webkit_web_view_send_message_to_page_finish" webkit_web_view_send_message_to_page_finish :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    Ptr Gio.AsyncResult.AsyncResult ->      -- result : TInterface (Name {namespace = "Gio", name = "AsyncResult"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr WebKit2.UserMessage.UserMessage)

-- | Finish an asynchronous operation started with 'GI.WebKit2.Objects.WebView.webViewSendMessageToPage'.
-- 
-- /Since: 2.28/
webViewSendMessageToPageFinish ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a, Gio.AsyncResult.IsAsyncResult b) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> b
    -- ^ /@result@/: a t'GI.Gio.Interfaces.AsyncResult.AsyncResult'
    -> m WebKit2.UserMessage.UserMessage
    -- ^ __Returns:__ a t'GI.WebKit2.Objects.UserMessage.UserMessage' with the reply or 'P.Nothing' in case of error. /(Can throw 'Data.GI.Base.GError.GError')/
webViewSendMessageToPageFinish webView result_ = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    result_' <- unsafeManagedPtrCastPtr result_
    onException (do
        result <- propagateGError $ webkit_web_view_send_message_to_page_finish webView' result_'
        checkUnexpectedReturnNULL "webViewSendMessageToPageFinish" result
        result' <- (wrapObject WebKit2.UserMessage.UserMessage) result
        touchManagedPtr webView
        touchManagedPtr result_
        return result'
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data WebViewSendMessageToPageFinishMethodInfo
instance (signature ~ (b -> m WebKit2.UserMessage.UserMessage), MonadIO m, IsWebView a, Gio.AsyncResult.IsAsyncResult b) => O.OverloadedMethod WebViewSendMessageToPageFinishMethodInfo a signature where
    overloadedMethod = webViewSendMessageToPageFinish

instance O.OverloadedMethodInfo WebViewSendMessageToPageFinishMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewSendMessageToPageFinish",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewSendMessageToPageFinish"
        })


#endif

-- method WebView::set_background_color
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "rgba"
--           , argType = TInterface Name { namespace = "Gdk" , name = "RGBA" }
--           , argCType = Just "const GdkRGBA*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GdkRGBA" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_set_background_color" webkit_web_view_set_background_color :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    Ptr Gdk.RGBA.RGBA ->                    -- rgba : TInterface (Name {namespace = "Gdk", name = "RGBA"})
    IO ()

-- | Sets the color that will be used to draw the /@webView@/ background.
-- 
-- Sets the color that will be used to draw the /@webView@/ background before
-- the actual contents are rendered. Note that if the web page loaded in /@webView@/
-- specifies a background color, it will take precedence over the /@rgba@/ color.
-- By default the /@webView@/ background color is opaque white.
-- Note that the parent window must have a RGBA visual and
-- [Widget:appPaintable]("GI.Gtk.Objects.Widget#g:attr:appPaintable") property set to 'P.True' for backgrounds colors to work.
-- 
-- 
-- === /c code/
-- >static void browser_window_set_background_color (BrowserWindow *window,
-- >                                                 const GdkRGBA *rgba)
-- >{
-- >    WebKitWebView *web_view;
-- >    GdkScreen *screen = gtk_window_get_screen (GTK_WINDOW (window));
-- >    GdkVisual *rgba_visual = gdk_screen_get_rgba_visual (screen);
-- >
-- >    if (!rgba_visual)
-- >         return;
-- >
-- >    gtk_widget_set_visual (GTK_WIDGET (window), rgba_visual);
-- >    gtk_widget_set_app_paintable (GTK_WIDGET (window), TRUE);
-- >
-- >    web_view = browser_window_get_web_view (window);
-- >    webkit_web_view_set_background_color (web_view, rgba);
-- >}
-- 
-- 
-- /Since: 2.8/
webViewSetBackgroundColor ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> Gdk.RGBA.RGBA
    -- ^ /@rgba@/: a t'GI.Gdk.Structs.RGBA.RGBA'
    -> m ()
webViewSetBackgroundColor webView rgba = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    rgba' <- unsafeManagedPtrGetPtr rgba
    webkit_web_view_set_background_color webView' rgba'
    touchManagedPtr webView
    touchManagedPtr rgba
    return ()

#if defined(ENABLE_OVERLOADING)
data WebViewSetBackgroundColorMethodInfo
instance (signature ~ (Gdk.RGBA.RGBA -> m ()), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewSetBackgroundColorMethodInfo a signature where
    overloadedMethod = webViewSetBackgroundColor

instance O.OverloadedMethodInfo WebViewSetBackgroundColorMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewSetBackgroundColor",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewSetBackgroundColor"
        })


#endif

-- method WebView::set_camera_capture_state
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "state"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "MediaCaptureState" }
--           , argCType = Just "WebKitMediaCaptureState"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitMediaCaptureState"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_set_camera_capture_state" webkit_web_view_set_camera_capture_state :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    CUInt ->                                -- state : TInterface (Name {namespace = "WebKit2", name = "MediaCaptureState"})
    IO ()

-- | Set the camera capture state of a t'GI.WebKit2.Objects.WebView.WebView'.
-- 
-- If t'GI.WebKit2.Objects.Settings.Settings':@/enable-mediastream/@ is 'P.False', this method will have no visible effect. Once the
-- state of the device has been set to 'GI.WebKit2.Enums.MediaCaptureStateNone' it cannot be changed
-- anymore. The page can however request capture again using the mediaDevices API.
-- 
-- /Since: 2.34/
webViewSetCameraCaptureState ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> WebKit2.Enums.MediaCaptureState
    -- ^ /@state@/: a t'GI.WebKit2.Enums.MediaCaptureState'
    -> m ()
webViewSetCameraCaptureState webView state = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    let state' = (fromIntegral . fromEnum) state
    webkit_web_view_set_camera_capture_state webView' state'
    touchManagedPtr webView
    return ()

#if defined(ENABLE_OVERLOADING)
data WebViewSetCameraCaptureStateMethodInfo
instance (signature ~ (WebKit2.Enums.MediaCaptureState -> m ()), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewSetCameraCaptureStateMethodInfo a signature where
    overloadedMethod = webViewSetCameraCaptureState

instance O.OverloadedMethodInfo WebViewSetCameraCaptureStateMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewSetCameraCaptureState",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewSetCameraCaptureState"
        })


#endif

-- method WebView::set_cors_allowlist
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "allowlist"
--           , argType = TCArray True (-1) (-1) (TBasicType TUTF8)
--           , argCType = Just "const gchar* const*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "an allowlist of URI patterns, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_set_cors_allowlist" webkit_web_view_set_cors_allowlist :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    Ptr CString ->                          -- allowlist : TCArray True (-1) (-1) (TBasicType TUTF8)
    IO ()

-- | Sets the /@allowlist@/ for CORS.
-- 
-- Sets the /@allowlist@/ for which
-- <https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS Cross-Origin Resource Sharing>
-- checks are disabled in /@webView@/. URI patterns must be of the form
-- @[protocol]:\/\/[host]\/[path]@, each component may contain the wildcard
-- character (@*@) to represent zero or more other characters. All three
-- components are required and must not be omitted from the URI
-- patterns.
-- 
-- Disabling CORS checks permits resources from other origins to load
-- allowlisted resources. It does not permit the allowlisted resources
-- to load resources from other origins.
-- 
-- If this function is called multiple times, only the allowlist set by
-- the most recent call will be effective.
-- 
-- /Since: 2.34/
webViewSetCorsAllowlist ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> Maybe ([T.Text])
    -- ^ /@allowlist@/: an allowlist of URI patterns, or 'P.Nothing'
    -> m ()
webViewSetCorsAllowlist webView allowlist = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    maybeAllowlist <- case allowlist of
        Nothing -> return FP.nullPtr
        Just jAllowlist -> do
            jAllowlist' <- packZeroTerminatedUTF8CArray jAllowlist
            return jAllowlist'
    webkit_web_view_set_cors_allowlist webView' maybeAllowlist
    touchManagedPtr webView
    mapZeroTerminatedCArray freeMem maybeAllowlist
    freeMem maybeAllowlist
    return ()

#if defined(ENABLE_OVERLOADING)
data WebViewSetCorsAllowlistMethodInfo
instance (signature ~ (Maybe ([T.Text]) -> m ()), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewSetCorsAllowlistMethodInfo a signature where
    overloadedMethod = webViewSetCorsAllowlist

instance O.OverloadedMethodInfo WebViewSetCorsAllowlistMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewSetCorsAllowlist",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewSetCorsAllowlist"
        })


#endif

-- method WebView::set_custom_charset
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "charset"
--           , argType = TBasicType TUTF8
--           , argCType = Just "const gchar*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a character encoding name or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_set_custom_charset" webkit_web_view_set_custom_charset :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    CString ->                              -- charset : TBasicType TUTF8
    IO ()

-- | Sets the current custom character encoding override of /@webView@/.
-- 
-- The custom character encoding will override any text encoding detected via HTTP headers or
-- META tags. Calling this method will stop any current load operation and reload the
-- current page. Setting the custom character encoding to 'P.Nothing' removes the character
-- encoding override.
webViewSetCustomCharset ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> Maybe (T.Text)
    -- ^ /@charset@/: a character encoding name or 'P.Nothing'
    -> m ()
webViewSetCustomCharset webView charset = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    maybeCharset <- case charset of
        Nothing -> return FP.nullPtr
        Just jCharset -> do
            jCharset' <- textToCString jCharset
            return jCharset'
    webkit_web_view_set_custom_charset webView' maybeCharset
    touchManagedPtr webView
    freeMem maybeCharset
    return ()

#if defined(ENABLE_OVERLOADING)
data WebViewSetCustomCharsetMethodInfo
instance (signature ~ (Maybe (T.Text) -> m ()), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewSetCustomCharsetMethodInfo a signature where
    overloadedMethod = webViewSetCustomCharset

instance O.OverloadedMethodInfo WebViewSetCustomCharsetMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewSetCustomCharset",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewSetCustomCharset"
        })


#endif

-- method WebView::set_display_capture_state
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "state"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "MediaCaptureState" }
--           , argCType = Just "WebKitMediaCaptureState"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitMediaCaptureState"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_set_display_capture_state" webkit_web_view_set_display_capture_state :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    CUInt ->                                -- state : TInterface (Name {namespace = "WebKit2", name = "MediaCaptureState"})
    IO ()

-- | Set the display capture state of a t'GI.WebKit2.Objects.WebView.WebView'.
-- 
-- If t'GI.WebKit2.Objects.Settings.Settings':@/enable-mediastream/@ is 'P.False', this method will have no visible effect. Once the
-- state of the device has been set to 'GI.WebKit2.Enums.MediaCaptureStateNone' it cannot be changed
-- anymore. The page can however request capture again using the mediaDevices API.
-- 
-- /Since: 2.34/
webViewSetDisplayCaptureState ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> WebKit2.Enums.MediaCaptureState
    -- ^ /@state@/: a t'GI.WebKit2.Enums.MediaCaptureState'
    -> m ()
webViewSetDisplayCaptureState webView state = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    let state' = (fromIntegral . fromEnum) state
    webkit_web_view_set_display_capture_state webView' state'
    touchManagedPtr webView
    return ()

#if defined(ENABLE_OVERLOADING)
data WebViewSetDisplayCaptureStateMethodInfo
instance (signature ~ (WebKit2.Enums.MediaCaptureState -> m ()), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewSetDisplayCaptureStateMethodInfo a signature where
    overloadedMethod = webViewSetDisplayCaptureState

instance O.OverloadedMethodInfo WebViewSetDisplayCaptureStateMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewSetDisplayCaptureState",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewSetDisplayCaptureState"
        })


#endif

-- method WebView::set_editable
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "editable"
--           , argType = TBasicType TBoolean
--           , argCType = Just "gboolean"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #gboolean indicating the editable state"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_set_editable" webkit_web_view_set_editable :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    CInt ->                                 -- editable : TBasicType TBoolean
    IO ()

-- | Sets whether the user is allowed to edit the HTML document.
-- 
-- If /@editable@/ is 'P.True', /@webView@/ allows the user to edit the HTML document. If
-- /@editable@/ is 'P.False', an element in /@webView@/\'s document can only be edited if the
-- CONTENTEDITABLE attribute has been set on the element or one of its parent
-- elements. By default a t'GI.WebKit2.Objects.WebView.WebView' is not editable.
-- 
-- Normally, a HTML document is not editable unless the elements within the
-- document are editable. This function provides a way to make the contents
-- of a t'GI.WebKit2.Objects.WebView.WebView' editable without altering the document or DOM structure.
-- 
-- /Since: 2.8/
webViewSetEditable ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> Bool
    -- ^ /@editable@/: a t'P.Bool' indicating the editable state
    -> m ()
webViewSetEditable webView editable = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    let editable' = (P.fromIntegral . P.fromEnum) editable
    webkit_web_view_set_editable webView' editable'
    touchManagedPtr webView
    return ()

#if defined(ENABLE_OVERLOADING)
data WebViewSetEditableMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewSetEditableMethodInfo a signature where
    overloadedMethod = webViewSetEditable

instance O.OverloadedMethodInfo WebViewSetEditableMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewSetEditable",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewSetEditable"
        })


#endif

-- method WebView::set_input_method_context
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "context"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "InputMethodContext" }
--           , argCType = Just "WebKitInputMethodContext*"
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the #WebKitInputMethodContext to set, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_set_input_method_context" webkit_web_view_set_input_method_context :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    Ptr WebKit2.InputMethodContext.InputMethodContext -> -- context : TInterface (Name {namespace = "WebKit2", name = "InputMethodContext"})
    IO ()

-- | Set the t'GI.WebKit2.Objects.InputMethodContext.InputMethodContext' to be used by /@webView@/.
-- 
-- Set the t'GI.WebKit2.Objects.InputMethodContext.InputMethodContext' to be used by /@webView@/, or 'P.Nothing' to not use any input method.
-- Note that the same t'GI.WebKit2.Objects.InputMethodContext.InputMethodContext' can\'t be set on more than one t'GI.WebKit2.Objects.WebView.WebView' at the same time.
-- 
-- /Since: 2.28/
webViewSetInputMethodContext ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a, WebKit2.InputMethodContext.IsInputMethodContext b) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> Maybe (b)
    -- ^ /@context@/: the t'GI.WebKit2.Objects.InputMethodContext.InputMethodContext' to set, or 'P.Nothing'
    -> m ()
webViewSetInputMethodContext webView context = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    maybeContext <- case context of
        Nothing -> return FP.nullPtr
        Just jContext -> do
            jContext' <- unsafeManagedPtrCastPtr jContext
            return jContext'
    webkit_web_view_set_input_method_context webView' maybeContext
    touchManagedPtr webView
    whenJust context touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data WebViewSetInputMethodContextMethodInfo
instance (signature ~ (Maybe (b) -> m ()), MonadIO m, IsWebView a, WebKit2.InputMethodContext.IsInputMethodContext b) => O.OverloadedMethod WebViewSetInputMethodContextMethodInfo a signature where
    overloadedMethod = webViewSetInputMethodContext

instance O.OverloadedMethodInfo WebViewSetInputMethodContextMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewSetInputMethodContext",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewSetInputMethodContext"
        })


#endif

-- method WebView::set_is_muted
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "muted"
--           , argType = TBasicType TBoolean
--           , argCType = Just "gboolean"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "mute flag" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_set_is_muted" webkit_web_view_set_is_muted :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    CInt ->                                 -- muted : TBasicType TBoolean
    IO ()

-- | Sets the mute state of /@webView@/.
-- 
-- /Since: 2.30/
webViewSetIsMuted ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> Bool
    -- ^ /@muted@/: mute flag
    -> m ()
webViewSetIsMuted webView muted = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    let muted' = (P.fromIntegral . P.fromEnum) muted
    webkit_web_view_set_is_muted webView' muted'
    touchManagedPtr webView
    return ()

#if defined(ENABLE_OVERLOADING)
data WebViewSetIsMutedMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewSetIsMutedMethodInfo a signature where
    overloadedMethod = webViewSetIsMuted

instance O.OverloadedMethodInfo WebViewSetIsMutedMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewSetIsMuted",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewSetIsMuted"
        })


#endif

-- method WebView::set_microphone_capture_state
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "state"
--           , argType =
--               TInterface
--                 Name { namespace = "WebKit2" , name = "MediaCaptureState" }
--           , argCType = Just "WebKitMediaCaptureState"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitMediaCaptureState"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_set_microphone_capture_state" webkit_web_view_set_microphone_capture_state :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    CUInt ->                                -- state : TInterface (Name {namespace = "WebKit2", name = "MediaCaptureState"})
    IO ()

-- | Set the microphone capture state of a t'GI.WebKit2.Objects.WebView.WebView'.
-- 
-- If t'GI.WebKit2.Objects.Settings.Settings':@/enable-mediastream/@ is 'P.False', this method will have no visible effect. Once the
-- state of the device has been set to 'GI.WebKit2.Enums.MediaCaptureStateNone' it cannot be changed
-- anymore. The page can however request capture again using the mediaDevices API.
-- 
-- /Since: 2.34/
webViewSetMicrophoneCaptureState ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> WebKit2.Enums.MediaCaptureState
    -- ^ /@state@/: a t'GI.WebKit2.Enums.MediaCaptureState'
    -> m ()
webViewSetMicrophoneCaptureState webView state = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    let state' = (fromIntegral . fromEnum) state
    webkit_web_view_set_microphone_capture_state webView' state'
    touchManagedPtr webView
    return ()

#if defined(ENABLE_OVERLOADING)
data WebViewSetMicrophoneCaptureStateMethodInfo
instance (signature ~ (WebKit2.Enums.MediaCaptureState -> m ()), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewSetMicrophoneCaptureStateMethodInfo a signature where
    overloadedMethod = webViewSetMicrophoneCaptureState

instance O.OverloadedMethodInfo WebViewSetMicrophoneCaptureStateMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewSetMicrophoneCaptureState",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewSetMicrophoneCaptureState"
        })


#endif

-- method WebView::set_settings
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "settings"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "Settings" }
--           , argCType = Just "WebKitSettings*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitSettings" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_set_settings" webkit_web_view_set_settings :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    Ptr WebKit2.Settings.Settings ->        -- settings : TInterface (Name {namespace = "WebKit2", name = "Settings"})
    IO ()

-- | Sets the t'GI.WebKit2.Objects.Settings.Settings' to be applied to /@webView@/.
-- 
-- The
-- existing t'GI.WebKit2.Objects.Settings.Settings' of /@webView@/ will be replaced by
-- /@settings@/. New settings are applied immediately on /@webView@/.
-- The same t'GI.WebKit2.Objects.Settings.Settings' object can be shared
-- by multiple t'GI.WebKit2.Objects.WebView.WebView's.
webViewSetSettings ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a, WebKit2.Settings.IsSettings b) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> b
    -- ^ /@settings@/: a t'GI.WebKit2.Objects.Settings.Settings'
    -> m ()
webViewSetSettings webView settings = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    settings' <- unsafeManagedPtrCastPtr settings
    webkit_web_view_set_settings webView' settings'
    touchManagedPtr webView
    touchManagedPtr settings
    return ()

#if defined(ENABLE_OVERLOADING)
data WebViewSetSettingsMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsWebView a, WebKit2.Settings.IsSettings b) => O.OverloadedMethod WebViewSetSettingsMethodInfo a signature where
    overloadedMethod = webViewSetSettings

instance O.OverloadedMethodInfo WebViewSetSettingsMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewSetSettings",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewSetSettings"
        })


#endif

-- method WebView::set_zoom_level
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "zoom_level"
--           , argType = TBasicType TDouble
--           , argCType = Just "gdouble"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the zoom level" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_set_zoom_level" webkit_web_view_set_zoom_level :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    CDouble ->                              -- zoom_level : TBasicType TDouble
    IO ()

-- | Set the zoom level of /@webView@/.
-- 
-- Set the zoom level of /@webView@/, i.e. the factor by which the
-- view contents are scaled with respect to their original size.
webViewSetZoomLevel ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> Double
    -- ^ /@zoomLevel@/: the zoom level
    -> m ()
webViewSetZoomLevel webView zoomLevel = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    let zoomLevel' = realToFrac zoomLevel
    webkit_web_view_set_zoom_level webView' zoomLevel'
    touchManagedPtr webView
    return ()

#if defined(ENABLE_OVERLOADING)
data WebViewSetZoomLevelMethodInfo
instance (signature ~ (Double -> m ()), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewSetZoomLevelMethodInfo a signature where
    overloadedMethod = webViewSetZoomLevel

instance O.OverloadedMethodInfo WebViewSetZoomLevelMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewSetZoomLevel",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewSetZoomLevel"
        })


#endif

-- method WebView::stop_loading
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_stop_loading" webkit_web_view_stop_loading :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO ()

-- | Stops any ongoing loading operation in /@webView@/.
-- 
-- This method does nothing if no content is being loaded.
-- If there is a loading operation in progress, it will be cancelled and
-- [WebView::loadFailed]("GI.WebKit2.Objects.WebView#g:signal:loadFailed") signal will be emitted with
-- 'GI.WebKit2.Enums.NetworkErrorCancelled' error.
webViewStopLoading ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m ()
webViewStopLoading webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    webkit_web_view_stop_loading webView'
    touchManagedPtr webView
    return ()

#if defined(ENABLE_OVERLOADING)
data WebViewStopLoadingMethodInfo
instance (signature ~ (m ()), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewStopLoadingMethodInfo a signature where
    overloadedMethod = webViewStopLoading

instance O.OverloadedMethodInfo WebViewStopLoadingMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewStopLoading",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewStopLoading"
        })


#endif

-- method WebView::terminate_web_process
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_terminate_web_process" webkit_web_view_terminate_web_process :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO ()

-- | Terminates the web process associated to /@webView@/.
-- 
-- When the web process gets terminated
-- using this method, the [WebView::webProcessTerminated]("GI.WebKit2.Objects.WebView#g:signal:webProcessTerminated") signal is emitted with
-- 'GI.WebKit2.Enums.WebProcessTerminationReasonTerminatedByApi' as the reason for termination.
-- 
-- /Since: 2.34/
webViewTerminateWebProcess ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m ()
webViewTerminateWebProcess webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    webkit_web_view_terminate_web_process webView'
    touchManagedPtr webView
    return ()

#if defined(ENABLE_OVERLOADING)
data WebViewTerminateWebProcessMethodInfo
instance (signature ~ (m ()), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewTerminateWebProcessMethodInfo a signature where
    overloadedMethod = webViewTerminateWebProcess

instance O.OverloadedMethodInfo WebViewTerminateWebProcessMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewTerminateWebProcess",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewTerminateWebProcess"
        })


#endif

-- method WebView::try_close
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "web_view"
--           , argType =
--               TInterface Name { namespace = "WebKit2" , name = "WebView" }
--           , argCType = Just "WebKitWebView*"
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #WebKitWebView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , argCallbackUserData = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "webkit_web_view_try_close" webkit_web_view_try_close :: 
    Ptr WebView ->                          -- web_view : TInterface (Name {namespace = "WebKit2", name = "WebView"})
    IO ()

-- | Tries to close the /@webView@/.
-- 
-- This will fire the onbeforeunload event
-- to ask the user for confirmation to close the page. If there isn\'t an
-- onbeforeunload event handler or the user confirms to close the page,
-- the [WebView::close]("GI.WebKit2.Objects.WebView#g:signal:close") signal is emitted, otherwise nothing happens.
-- 
-- /Since: 2.12/
webViewTryClose ::
    (B.CallStack.HasCallStack, MonadIO m, IsWebView a) =>
    a
    -- ^ /@webView@/: a t'GI.WebKit2.Objects.WebView.WebView'
    -> m ()
webViewTryClose webView = liftIO $ do
    webView' <- unsafeManagedPtrCastPtr webView
    webkit_web_view_try_close webView'
    touchManagedPtr webView
    return ()

#if defined(ENABLE_OVERLOADING)
data WebViewTryCloseMethodInfo
instance (signature ~ (m ()), MonadIO m, IsWebView a) => O.OverloadedMethod WebViewTryCloseMethodInfo a signature where
    overloadedMethod = webViewTryClose

instance O.OverloadedMethodInfo WebViewTryCloseMethodInfo a where
    overloadedMethodInfo = P.Just (O.ResolvedSymbolInfo {
        O.resolvedSymbolName = "GI.WebKit2.Objects.WebView.webViewTryClose",
        O.resolvedSymbolURL = "https://hackage.haskell.org/package/gi-webkit2-4.0.32/docs/GI-WebKit2-Objects-WebView.html#v:webViewTryClose"
        })


#endif


