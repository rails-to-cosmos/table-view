{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson and Iñaki García Etxebarria
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.WebKit2.Objects.WebViewBase
    ( 

-- * Exported types
    WebViewBase(..)                         ,
    IsWebViewBase                           ,
    toWebViewBase                           ,


 -- * Methods
-- | 
-- 
--  === __Click to display all available methods, including inherited ones__
-- ==== Methods
-- [activate]("GI.Gtk.Objects.Widget#g:method:activate"), [add]("GI.Gtk.Objects.Container#g:method:add"), [addAccelerator]("GI.Gtk.Objects.Widget#g:method:addAccelerator"), [addChild]("GI.Gtk.Interfaces.Buildable#g:method:addChild"), [addDeviceEvents]("GI.Gtk.Objects.Widget#g:method:addDeviceEvents"), [addEvents]("GI.Gtk.Objects.Widget#g:method:addEvents"), [addMnemonicLabel]("GI.Gtk.Objects.Widget#g:method:addMnemonicLabel"), [addTickCallback]("GI.Gtk.Objects.Widget#g:method:addTickCallback"), [bindProperty]("GI.GObject.Objects.Object#g:method:bindProperty"), [bindPropertyFull]("GI.GObject.Objects.Object#g:method:bindPropertyFull"), [canActivateAccel]("GI.Gtk.Objects.Widget#g:method:canActivateAccel"), [checkResize]("GI.Gtk.Objects.Container#g:method:checkResize"), [childFocus]("GI.Gtk.Objects.Widget#g:method:childFocus"), [childGetProperty]("GI.Gtk.Objects.Container#g:method:childGetProperty"), [childNotify]("GI.Gtk.Objects.Container#g:method:childNotify"), [childNotifyByPspec]("GI.Gtk.Objects.Container#g:method:childNotifyByPspec"), [childSetProperty]("GI.Gtk.Objects.Container#g:method:childSetProperty"), [childType]("GI.Gtk.Objects.Container#g:method:childType"), [classPath]("GI.Gtk.Objects.Widget#g:method:classPath"), [computeExpand]("GI.Gtk.Objects.Widget#g:method:computeExpand"), [constructChild]("GI.Gtk.Interfaces.Buildable#g:method:constructChild"), [createPangoContext]("GI.Gtk.Objects.Widget#g:method:createPangoContext"), [createPangoLayout]("GI.Gtk.Objects.Widget#g:method:createPangoLayout"), [customFinished]("GI.Gtk.Interfaces.Buildable#g:method:customFinished"), [customTagEnd]("GI.Gtk.Interfaces.Buildable#g:method:customTagEnd"), [customTagStart]("GI.Gtk.Interfaces.Buildable#g:method:customTagStart"), [destroy]("GI.Gtk.Objects.Widget#g:method:destroy"), [destroyed]("GI.Gtk.Objects.Widget#g:method:destroyed"), [deviceIsShadowed]("GI.Gtk.Objects.Widget#g:method:deviceIsShadowed"), [dragBegin]("GI.Gtk.Objects.Widget#g:method:dragBegin"), [dragBeginWithCoordinates]("GI.Gtk.Objects.Widget#g:method:dragBeginWithCoordinates"), [dragCheckThreshold]("GI.Gtk.Objects.Widget#g:method:dragCheckThreshold"), [dragDestAddImageTargets]("GI.Gtk.Objects.Widget#g:method:dragDestAddImageTargets"), [dragDestAddTextTargets]("GI.Gtk.Objects.Widget#g:method:dragDestAddTextTargets"), [dragDestAddUriTargets]("GI.Gtk.Objects.Widget#g:method:dragDestAddUriTargets"), [dragDestFindTarget]("GI.Gtk.Objects.Widget#g:method:dragDestFindTarget"), [dragDestGetTargetList]("GI.Gtk.Objects.Widget#g:method:dragDestGetTargetList"), [dragDestGetTrackMotion]("GI.Gtk.Objects.Widget#g:method:dragDestGetTrackMotion"), [dragDestSet]("GI.Gtk.Objects.Widget#g:method:dragDestSet"), [dragDestSetProxy]("GI.Gtk.Objects.Widget#g:method:dragDestSetProxy"), [dragDestSetTargetList]("GI.Gtk.Objects.Widget#g:method:dragDestSetTargetList"), [dragDestSetTrackMotion]("GI.Gtk.Objects.Widget#g:method:dragDestSetTrackMotion"), [dragDestUnset]("GI.Gtk.Objects.Widget#g:method:dragDestUnset"), [dragGetData]("GI.Gtk.Objects.Widget#g:method:dragGetData"), [dragHighlight]("GI.Gtk.Objects.Widget#g:method:dragHighlight"), [dragSourceAddImageTargets]("GI.Gtk.Objects.Widget#g:method:dragSourceAddImageTargets"), [dragSourceAddTextTargets]("GI.Gtk.Objects.Widget#g:method:dragSourceAddTextTargets"), [dragSourceAddUriTargets]("GI.Gtk.Objects.Widget#g:method:dragSourceAddUriTargets"), [dragSourceGetTargetList]("GI.Gtk.Objects.Widget#g:method:dragSourceGetTargetList"), [dragSourceSet]("GI.Gtk.Objects.Widget#g:method:dragSourceSet"), [dragSourceSetIconGicon]("GI.Gtk.Objects.Widget#g:method:dragSourceSetIconGicon"), [dragSourceSetIconName]("GI.Gtk.Objects.Widget#g:method:dragSourceSetIconName"), [dragSourceSetIconPixbuf]("GI.Gtk.Objects.Widget#g:method:dragSourceSetIconPixbuf"), [dragSourceSetIconStock]("GI.Gtk.Objects.Widget#g:method:dragSourceSetIconStock"), [dragSourceSetTargetList]("GI.Gtk.Objects.Widget#g:method:dragSourceSetTargetList"), [dragSourceUnset]("GI.Gtk.Objects.Widget#g:method:dragSourceUnset"), [dragUnhighlight]("GI.Gtk.Objects.Widget#g:method:dragUnhighlight"), [draw]("GI.Gtk.Objects.Widget#g:method:draw"), [ensureStyle]("GI.Gtk.Objects.Widget#g:method:ensureStyle"), [errorBell]("GI.Gtk.Objects.Widget#g:method:errorBell"), [event]("GI.Gtk.Objects.Widget#g:method:event"), [forall]("GI.Gtk.Objects.Container#g:method:forall"), [forceFloating]("GI.GObject.Objects.Object#g:method:forceFloating"), [foreach]("GI.Gtk.Objects.Container#g:method:foreach"), [freezeChildNotify]("GI.Gtk.Objects.Widget#g:method:freezeChildNotify"), [freezeNotify]("GI.GObject.Objects.Object#g:method:freezeNotify"), [getv]("GI.GObject.Objects.Object#g:method:getv"), [grabAdd]("GI.Gtk.Objects.Widget#g:method:grabAdd"), [grabDefault]("GI.Gtk.Objects.Widget#g:method:grabDefault"), [grabFocus]("GI.Gtk.Objects.Widget#g:method:grabFocus"), [grabRemove]("GI.Gtk.Objects.Widget#g:method:grabRemove"), [hasDefault]("GI.Gtk.Objects.Widget#g:method:hasDefault"), [hasFocus]("GI.Gtk.Objects.Widget#g:method:hasFocus"), [hasGrab]("GI.Gtk.Objects.Widget#g:method:hasGrab"), [hasRcStyle]("GI.Gtk.Objects.Widget#g:method:hasRcStyle"), [hasScreen]("GI.Gtk.Objects.Widget#g:method:hasScreen"), [hasVisibleFocus]("GI.Gtk.Objects.Widget#g:method:hasVisibleFocus"), [hide]("GI.Gtk.Objects.Widget#g:method:hide"), [hideOnDelete]("GI.Gtk.Objects.Widget#g:method:hideOnDelete"), [inDestruction]("GI.Gtk.Objects.Widget#g:method:inDestruction"), [initTemplate]("GI.Gtk.Objects.Widget#g:method:initTemplate"), [inputShapeCombineRegion]("GI.Gtk.Objects.Widget#g:method:inputShapeCombineRegion"), [insertActionGroup]("GI.Gtk.Objects.Widget#g:method:insertActionGroup"), [intersect]("GI.Gtk.Objects.Widget#g:method:intersect"), [isAncestor]("GI.Gtk.Objects.Widget#g:method:isAncestor"), [isComposited]("GI.Gtk.Objects.Widget#g:method:isComposited"), [isDrawable]("GI.Gtk.Objects.Widget#g:method:isDrawable"), [isFloating]("GI.GObject.Objects.Object#g:method:isFloating"), [isFocus]("GI.Gtk.Objects.Widget#g:method:isFocus"), [isSensitive]("GI.Gtk.Objects.Widget#g:method:isSensitive"), [isToplevel]("GI.Gtk.Objects.Widget#g:method:isToplevel"), [isVisible]("GI.Gtk.Objects.Widget#g:method:isVisible"), [keynavFailed]("GI.Gtk.Objects.Widget#g:method:keynavFailed"), [listAccelClosures]("GI.Gtk.Objects.Widget#g:method:listAccelClosures"), [listActionPrefixes]("GI.Gtk.Objects.Widget#g:method:listActionPrefixes"), [listMnemonicLabels]("GI.Gtk.Objects.Widget#g:method:listMnemonicLabels"), [map]("GI.Gtk.Objects.Widget#g:method:map"), [mnemonicActivate]("GI.Gtk.Objects.Widget#g:method:mnemonicActivate"), [modifyBase]("GI.Gtk.Objects.Widget#g:method:modifyBase"), [modifyBg]("GI.Gtk.Objects.Widget#g:method:modifyBg"), [modifyCursor]("GI.Gtk.Objects.Widget#g:method:modifyCursor"), [modifyFg]("GI.Gtk.Objects.Widget#g:method:modifyFg"), [modifyFont]("GI.Gtk.Objects.Widget#g:method:modifyFont"), [modifyStyle]("GI.Gtk.Objects.Widget#g:method:modifyStyle"), [modifyText]("GI.Gtk.Objects.Widget#g:method:modifyText"), [notify]("GI.GObject.Objects.Object#g:method:notify"), [notifyByPspec]("GI.GObject.Objects.Object#g:method:notifyByPspec"), [overrideBackgroundColor]("GI.Gtk.Objects.Widget#g:method:overrideBackgroundColor"), [overrideColor]("GI.Gtk.Objects.Widget#g:method:overrideColor"), [overrideCursor]("GI.Gtk.Objects.Widget#g:method:overrideCursor"), [overrideFont]("GI.Gtk.Objects.Widget#g:method:overrideFont"), [overrideSymbolicColor]("GI.Gtk.Objects.Widget#g:method:overrideSymbolicColor"), [parserFinished]("GI.Gtk.Interfaces.Buildable#g:method:parserFinished"), [path]("GI.Gtk.Objects.Widget#g:method:path"), [propagateDraw]("GI.Gtk.Objects.Container#g:method:propagateDraw"), [queueAllocate]("GI.Gtk.Objects.Widget#g:method:queueAllocate"), [queueComputeExpand]("GI.Gtk.Objects.Widget#g:method:queueComputeExpand"), [queueDraw]("GI.Gtk.Objects.Widget#g:method:queueDraw"), [queueDrawArea]("GI.Gtk.Objects.Widget#g:method:queueDrawArea"), [queueDrawRegion]("GI.Gtk.Objects.Widget#g:method:queueDrawRegion"), [queueResize]("GI.Gtk.Objects.Widget#g:method:queueResize"), [queueResizeNoRedraw]("GI.Gtk.Objects.Widget#g:method:queueResizeNoRedraw"), [realize]("GI.Gtk.Objects.Widget#g:method:realize"), [ref]("GI.GObject.Objects.Object#g:method:ref"), [refSink]("GI.GObject.Objects.Object#g:method:refSink"), [regionIntersect]("GI.Gtk.Objects.Widget#g:method:regionIntersect"), [registerWindow]("GI.Gtk.Objects.Widget#g:method:registerWindow"), [remove]("GI.Gtk.Objects.Container#g:method:remove"), [removeAccelerator]("GI.Gtk.Objects.Widget#g:method:removeAccelerator"), [removeMnemonicLabel]("GI.Gtk.Objects.Widget#g:method:removeMnemonicLabel"), [removeTickCallback]("GI.Gtk.Objects.Widget#g:method:removeTickCallback"), [renderIcon]("GI.Gtk.Objects.Widget#g:method:renderIcon"), [renderIconPixbuf]("GI.Gtk.Objects.Widget#g:method:renderIconPixbuf"), [reparent]("GI.Gtk.Objects.Widget#g:method:reparent"), [resetRcStyles]("GI.Gtk.Objects.Widget#g:method:resetRcStyles"), [resetStyle]("GI.Gtk.Objects.Widget#g:method:resetStyle"), [resizeChildren]("GI.Gtk.Objects.Container#g:method:resizeChildren"), [runDispose]("GI.GObject.Objects.Object#g:method:runDispose"), [sendExpose]("GI.Gtk.Objects.Widget#g:method:sendExpose"), [sendFocusChange]("GI.Gtk.Objects.Widget#g:method:sendFocusChange"), [shapeCombineRegion]("GI.Gtk.Objects.Widget#g:method:shapeCombineRegion"), [show]("GI.Gtk.Objects.Widget#g:method:show"), [showAll]("GI.Gtk.Objects.Widget#g:method:showAll"), [showNow]("GI.Gtk.Objects.Widget#g:method:showNow"), [sizeAllocate]("GI.Gtk.Objects.Widget#g:method:sizeAllocate"), [sizeAllocateWithBaseline]("GI.Gtk.Objects.Widget#g:method:sizeAllocateWithBaseline"), [sizeRequest]("GI.Gtk.Objects.Widget#g:method:sizeRequest"), [stealData]("GI.GObject.Objects.Object#g:method:stealData"), [stealQdata]("GI.GObject.Objects.Object#g:method:stealQdata"), [styleAttach]("GI.Gtk.Objects.Widget#g:method:styleAttach"), [styleGetProperty]("GI.Gtk.Objects.Widget#g:method:styleGetProperty"), [thawChildNotify]("GI.Gtk.Objects.Widget#g:method:thawChildNotify"), [thawNotify]("GI.GObject.Objects.Object#g:method:thawNotify"), [translateCoordinates]("GI.Gtk.Objects.Widget#g:method:translateCoordinates"), [triggerTooltipQuery]("GI.Gtk.Objects.Widget#g:method:triggerTooltipQuery"), [unmap]("GI.Gtk.Objects.Widget#g:method:unmap"), [unparent]("GI.Gtk.Objects.Widget#g:method:unparent"), [unrealize]("GI.Gtk.Objects.Widget#g:method:unrealize"), [unref]("GI.GObject.Objects.Object#g:method:unref"), [unregisterWindow]("GI.Gtk.Objects.Widget#g:method:unregisterWindow"), [unsetFocusChain]("GI.Gtk.Objects.Container#g:method:unsetFocusChain"), [unsetStateFlags]("GI.Gtk.Objects.Widget#g:method:unsetStateFlags"), [watchClosure]("GI.GObject.Objects.Object#g:method:watchClosure").
-- 
-- ==== Getters
-- [getAccessible]("GI.Gtk.Objects.Widget#g:method:getAccessible"), [getActionGroup]("GI.Gtk.Objects.Widget#g:method:getActionGroup"), [getAllocatedBaseline]("GI.Gtk.Objects.Widget#g:method:getAllocatedBaseline"), [getAllocatedHeight]("GI.Gtk.Objects.Widget#g:method:getAllocatedHeight"), [getAllocatedSize]("GI.Gtk.Objects.Widget#g:method:getAllocatedSize"), [getAllocatedWidth]("GI.Gtk.Objects.Widget#g:method:getAllocatedWidth"), [getAllocation]("GI.Gtk.Objects.Widget#g:method:getAllocation"), [getAncestor]("GI.Gtk.Objects.Widget#g:method:getAncestor"), [getAppPaintable]("GI.Gtk.Objects.Widget#g:method:getAppPaintable"), [getBorderWidth]("GI.Gtk.Objects.Container#g:method:getBorderWidth"), [getCanDefault]("GI.Gtk.Objects.Widget#g:method:getCanDefault"), [getCanFocus]("GI.Gtk.Objects.Widget#g:method:getCanFocus"), [getChildRequisition]("GI.Gtk.Objects.Widget#g:method:getChildRequisition"), [getChildVisible]("GI.Gtk.Objects.Widget#g:method:getChildVisible"), [getChildren]("GI.Gtk.Objects.Container#g:method:getChildren"), [getClip]("GI.Gtk.Objects.Widget#g:method:getClip"), [getClipboard]("GI.Gtk.Objects.Widget#g:method:getClipboard"), [getCompositeName]("GI.Gtk.Objects.Widget#g:method:getCompositeName"), [getData]("GI.GObject.Objects.Object#g:method:getData"), [getDeviceEnabled]("GI.Gtk.Objects.Widget#g:method:getDeviceEnabled"), [getDeviceEvents]("GI.Gtk.Objects.Widget#g:method:getDeviceEvents"), [getDirection]("GI.Gtk.Objects.Widget#g:method:getDirection"), [getDisplay]("GI.Gtk.Objects.Widget#g:method:getDisplay"), [getDoubleBuffered]("GI.Gtk.Objects.Widget#g:method:getDoubleBuffered"), [getEvents]("GI.Gtk.Objects.Widget#g:method:getEvents"), [getFocusChain]("GI.Gtk.Objects.Container#g:method:getFocusChain"), [getFocusChild]("GI.Gtk.Objects.Container#g:method:getFocusChild"), [getFocusHadjustment]("GI.Gtk.Objects.Container#g:method:getFocusHadjustment"), [getFocusOnClick]("GI.Gtk.Objects.Widget#g:method:getFocusOnClick"), [getFocusVadjustment]("GI.Gtk.Objects.Container#g:method:getFocusVadjustment"), [getFontMap]("GI.Gtk.Objects.Widget#g:method:getFontMap"), [getFontOptions]("GI.Gtk.Objects.Widget#g:method:getFontOptions"), [getFrameClock]("GI.Gtk.Objects.Widget#g:method:getFrameClock"), [getHalign]("GI.Gtk.Objects.Widget#g:method:getHalign"), [getHasTooltip]("GI.Gtk.Objects.Widget#g:method:getHasTooltip"), [getHasWindow]("GI.Gtk.Objects.Widget#g:method:getHasWindow"), [getHexpand]("GI.Gtk.Objects.Widget#g:method:getHexpand"), [getHexpandSet]("GI.Gtk.Objects.Widget#g:method:getHexpandSet"), [getInternalChild]("GI.Gtk.Interfaces.Buildable#g:method:getInternalChild"), [getMapped]("GI.Gtk.Objects.Widget#g:method:getMapped"), [getMarginBottom]("GI.Gtk.Objects.Widget#g:method:getMarginBottom"), [getMarginEnd]("GI.Gtk.Objects.Widget#g:method:getMarginEnd"), [getMarginLeft]("GI.Gtk.Objects.Widget#g:method:getMarginLeft"), [getMarginRight]("GI.Gtk.Objects.Widget#g:method:getMarginRight"), [getMarginStart]("GI.Gtk.Objects.Widget#g:method:getMarginStart"), [getMarginTop]("GI.Gtk.Objects.Widget#g:method:getMarginTop"), [getModifierMask]("GI.Gtk.Objects.Widget#g:method:getModifierMask"), [getModifierStyle]("GI.Gtk.Objects.Widget#g:method:getModifierStyle"), [getName]("GI.Gtk.Objects.Widget#g:method:getName"), [getNoShowAll]("GI.Gtk.Objects.Widget#g:method:getNoShowAll"), [getOpacity]("GI.Gtk.Objects.Widget#g:method:getOpacity"), [getPangoContext]("GI.Gtk.Objects.Widget#g:method:getPangoContext"), [getParent]("GI.Gtk.Objects.Widget#g:method:getParent"), [getParentWindow]("GI.Gtk.Objects.Widget#g:method:getParentWindow"), [getPath]("GI.Gtk.Objects.Widget#g:method:getPath"), [getPathForChild]("GI.Gtk.Objects.Container#g:method:getPathForChild"), [getPointer]("GI.Gtk.Objects.Widget#g:method:getPointer"), [getPreferredHeight]("GI.Gtk.Objects.Widget#g:method:getPreferredHeight"), [getPreferredHeightAndBaselineForWidth]("GI.Gtk.Objects.Widget#g:method:getPreferredHeightAndBaselineForWidth"), [getPreferredHeightForWidth]("GI.Gtk.Objects.Widget#g:method:getPreferredHeightForWidth"), [getPreferredSize]("GI.Gtk.Objects.Widget#g:method:getPreferredSize"), [getPreferredWidth]("GI.Gtk.Objects.Widget#g:method:getPreferredWidth"), [getPreferredWidthForHeight]("GI.Gtk.Objects.Widget#g:method:getPreferredWidthForHeight"), [getProperty]("GI.GObject.Objects.Object#g:method:getProperty"), [getQdata]("GI.GObject.Objects.Object#g:method:getQdata"), [getRealized]("GI.Gtk.Objects.Widget#g:method:getRealized"), [getReceivesDefault]("GI.Gtk.Objects.Widget#g:method:getReceivesDefault"), [getRequestMode]("GI.Gtk.Objects.Widget#g:method:getRequestMode"), [getRequisition]("GI.Gtk.Objects.Widget#g:method:getRequisition"), [getResizeMode]("GI.Gtk.Objects.Container#g:method:getResizeMode"), [getRootWindow]("GI.Gtk.Objects.Widget#g:method:getRootWindow"), [getScaleFactor]("GI.Gtk.Objects.Widget#g:method:getScaleFactor"), [getScreen]("GI.Gtk.Objects.Widget#g:method:getScreen"), [getSensitive]("GI.Gtk.Objects.Widget#g:method:getSensitive"), [getSettings]("GI.Gtk.Objects.Widget#g:method:getSettings"), [getSizeRequest]("GI.Gtk.Objects.Widget#g:method:getSizeRequest"), [getState]("GI.Gtk.Objects.Widget#g:method:getState"), [getStateFlags]("GI.Gtk.Objects.Widget#g:method:getStateFlags"), [getStyle]("GI.Gtk.Objects.Widget#g:method:getStyle"), [getStyleContext]("GI.Gtk.Objects.Widget#g:method:getStyleContext"), [getSupportMultidevice]("GI.Gtk.Objects.Widget#g:method:getSupportMultidevice"), [getTemplateChild]("GI.Gtk.Objects.Widget#g:method:getTemplateChild"), [getTooltipMarkup]("GI.Gtk.Objects.Widget#g:method:getTooltipMarkup"), [getTooltipText]("GI.Gtk.Objects.Widget#g:method:getTooltipText"), [getTooltipWindow]("GI.Gtk.Objects.Widget#g:method:getTooltipWindow"), [getToplevel]("GI.Gtk.Objects.Widget#g:method:getToplevel"), [getValign]("GI.Gtk.Objects.Widget#g:method:getValign"), [getValignWithBaseline]("GI.Gtk.Objects.Widget#g:method:getValignWithBaseline"), [getVexpand]("GI.Gtk.Objects.Widget#g:method:getVexpand"), [getVexpandSet]("GI.Gtk.Objects.Widget#g:method:getVexpandSet"), [getVisible]("GI.Gtk.Objects.Widget#g:method:getVisible"), [getVisual]("GI.Gtk.Objects.Widget#g:method:getVisual"), [getWindow]("GI.Gtk.Objects.Widget#g:method:getWindow").
-- 
-- ==== Setters
-- [setAccelPath]("GI.Gtk.Objects.Widget#g:method:setAccelPath"), [setAllocation]("GI.Gtk.Objects.Widget#g:method:setAllocation"), [setAppPaintable]("GI.Gtk.Objects.Widget#g:method:setAppPaintable"), [setBorderWidth]("GI.Gtk.Objects.Container#g:method:setBorderWidth"), [setBuildableProperty]("GI.Gtk.Interfaces.Buildable#g:method:setBuildableProperty"), [setCanDefault]("GI.Gtk.Objects.Widget#g:method:setCanDefault"), [setCanFocus]("GI.Gtk.Objects.Widget#g:method:setCanFocus"), [setChildVisible]("GI.Gtk.Objects.Widget#g:method:setChildVisible"), [setClip]("GI.Gtk.Objects.Widget#g:method:setClip"), [setCompositeName]("GI.Gtk.Objects.Widget#g:method:setCompositeName"), [setData]("GI.GObject.Objects.Object#g:method:setData"), [setDataFull]("GI.GObject.Objects.Object#g:method:setDataFull"), [setDeviceEnabled]("GI.Gtk.Objects.Widget#g:method:setDeviceEnabled"), [setDeviceEvents]("GI.Gtk.Objects.Widget#g:method:setDeviceEvents"), [setDirection]("GI.Gtk.Objects.Widget#g:method:setDirection"), [setDoubleBuffered]("GI.Gtk.Objects.Widget#g:method:setDoubleBuffered"), [setEvents]("GI.Gtk.Objects.Widget#g:method:setEvents"), [setFocusChain]("GI.Gtk.Objects.Container#g:method:setFocusChain"), [setFocusChild]("GI.Gtk.Objects.Container#g:method:setFocusChild"), [setFocusHadjustment]("GI.Gtk.Objects.Container#g:method:setFocusHadjustment"), [setFocusOnClick]("GI.Gtk.Objects.Widget#g:method:setFocusOnClick"), [setFocusVadjustment]("GI.Gtk.Objects.Container#g:method:setFocusVadjustment"), [setFontMap]("GI.Gtk.Objects.Widget#g:method:setFontMap"), [setFontOptions]("GI.Gtk.Objects.Widget#g:method:setFontOptions"), [setHalign]("GI.Gtk.Objects.Widget#g:method:setHalign"), [setHasTooltip]("GI.Gtk.Objects.Widget#g:method:setHasTooltip"), [setHasWindow]("GI.Gtk.Objects.Widget#g:method:setHasWindow"), [setHexpand]("GI.Gtk.Objects.Widget#g:method:setHexpand"), [setHexpandSet]("GI.Gtk.Objects.Widget#g:method:setHexpandSet"), [setMapped]("GI.Gtk.Objects.Widget#g:method:setMapped"), [setMarginBottom]("GI.Gtk.Objects.Widget#g:method:setMarginBottom"), [setMarginEnd]("GI.Gtk.Objects.Widget#g:method:setMarginEnd"), [setMarginLeft]("GI.Gtk.Objects.Widget#g:method:setMarginLeft"), [setMarginRight]("GI.Gtk.Objects.Widget#g:method:setMarginRight"), [setMarginStart]("GI.Gtk.Objects.Widget#g:method:setMarginStart"), [setMarginTop]("GI.Gtk.Objects.Widget#g:method:setMarginTop"), [setName]("GI.Gtk.Objects.Widget#g:method:setName"), [setNoShowAll]("GI.Gtk.Objects.Widget#g:method:setNoShowAll"), [setOpacity]("GI.Gtk.Objects.Widget#g:method:setOpacity"), [setParent]("GI.Gtk.Objects.Widget#g:method:setParent"), [setParentWindow]("GI.Gtk.Objects.Widget#g:method:setParentWindow"), [setProperty]("GI.GObject.Objects.Object#g:method:setProperty"), [setRealized]("GI.Gtk.Objects.Widget#g:method:setRealized"), [setReallocateRedraws]("GI.Gtk.Objects.Container#g:method:setReallocateRedraws"), [setReceivesDefault]("GI.Gtk.Objects.Widget#g:method:setReceivesDefault"), [setRedrawOnAllocate]("GI.Gtk.Objects.Widget#g:method:setRedrawOnAllocate"), [setResizeMode]("GI.Gtk.Objects.Container#g:method:setResizeMode"), [setSensitive]("GI.Gtk.Objects.Widget#g:method:setSensitive"), [setSizeRequest]("GI.Gtk.Objects.Widget#g:method:setSizeRequest"), [setState]("GI.Gtk.Objects.Widget#g:method:setState"), [setStateFlags]("GI.Gtk.Objects.Widget#g:method:setStateFlags"), [setStyle]("GI.Gtk.Objects.Widget#g:method:setStyle"), [setSupportMultidevice]("GI.Gtk.Objects.Widget#g:method:setSupportMultidevice"), [setTooltipMarkup]("GI.Gtk.Objects.Widget#g:method:setTooltipMarkup"), [setTooltipText]("GI.Gtk.Objects.Widget#g:method:setTooltipText"), [setTooltipWindow]("GI.Gtk.Objects.Widget#g:method:setTooltipWindow"), [setValign]("GI.Gtk.Objects.Widget#g:method:setValign"), [setVexpand]("GI.Gtk.Objects.Widget#g:method:setVexpand"), [setVexpandSet]("GI.Gtk.Objects.Widget#g:method:setVexpandSet"), [setVisible]("GI.Gtk.Objects.Widget#g:method:setVisible"), [setVisual]("GI.Gtk.Objects.Widget#g:method:setVisual"), [setWindow]("GI.Gtk.Objects.Widget#g:method:setWindow").

#if defined(ENABLE_OVERLOADING)
    ResolveWebViewBaseMethod                ,
#endif



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
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import qualified GI.Gtk.Objects.Container as Gtk.Container
import qualified GI.Gtk.Objects.Widget as Gtk.Widget

#else
import qualified GI.Atk.Interfaces.ImplementorIface as Atk.ImplementorIface
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import qualified GI.Gtk.Objects.Container as Gtk.Container
import qualified GI.Gtk.Objects.Widget as Gtk.Widget

#endif

-- | Memory-managed wrapper type.
newtype WebViewBase = WebViewBase (SP.ManagedPtr WebViewBase)
    deriving (Eq)

instance SP.ManagedPtrNewtype WebViewBase where
    toManagedPtr (WebViewBase p) = p

foreign import ccall "webkit_web_view_base_get_type"
    c_webkit_web_view_base_get_type :: IO B.Types.GType

instance B.Types.TypedObject WebViewBase where
    glibType = c_webkit_web_view_base_get_type

instance B.Types.GObject WebViewBase

-- | Type class for types which can be safely cast to t'WebViewBase', for instance with `toWebViewBase`.
class (SP.GObject o, O.IsDescendantOf WebViewBase o) => IsWebViewBase o
instance (SP.GObject o, O.IsDescendantOf WebViewBase o) => IsWebViewBase o

instance O.HasParentTypes WebViewBase
type instance O.ParentTypes WebViewBase = '[Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable]

-- | Cast to t'WebViewBase', for types for which this is known to be safe. For general casts, use 'Data.GI.Base.ManagedPtr.castTo'.
toWebViewBase :: (MIO.MonadIO m, IsWebViewBase o) => o -> m WebViewBase
toWebViewBase = MIO.liftIO . B.ManagedPtr.unsafeCastTo WebViewBase

-- | Convert t'WebViewBase' to and from t'Data.GI.Base.GValue.GValue'. See 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue (Maybe WebViewBase) where
    gvalueGType_ = c_webkit_web_view_base_get_type
    gvalueSet_ gv P.Nothing = B.GValue.set_object gv (FP.nullPtr :: FP.Ptr WebViewBase)
    gvalueSet_ gv (P.Just obj) = B.ManagedPtr.withManagedPtr obj (B.GValue.set_object gv)
    gvalueGet_ gv = do
        ptr <- B.GValue.get_object gv :: IO (FP.Ptr WebViewBase)
        if ptr /= FP.nullPtr
        then P.Just <$> B.ManagedPtr.newObject WebViewBase ptr
        else return P.Nothing
        
    

#if defined(ENABLE_OVERLOADING)
type family ResolveWebViewBaseMethod (t :: Symbol) (o :: DK.Type) :: DK.Type where
    ResolveWebViewBaseMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveWebViewBaseMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveWebViewBaseMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveWebViewBaseMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveWebViewBaseMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveWebViewBaseMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveWebViewBaseMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveWebViewBaseMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveWebViewBaseMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveWebViewBaseMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveWebViewBaseMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveWebViewBaseMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveWebViewBaseMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveWebViewBaseMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveWebViewBaseMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveWebViewBaseMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveWebViewBaseMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveWebViewBaseMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveWebViewBaseMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveWebViewBaseMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveWebViewBaseMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveWebViewBaseMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveWebViewBaseMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveWebViewBaseMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveWebViewBaseMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveWebViewBaseMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveWebViewBaseMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveWebViewBaseMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveWebViewBaseMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveWebViewBaseMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveWebViewBaseMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveWebViewBaseMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveWebViewBaseMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveWebViewBaseMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveWebViewBaseMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveWebViewBaseMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveWebViewBaseMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveWebViewBaseMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveWebViewBaseMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveWebViewBaseMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveWebViewBaseMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveWebViewBaseMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveWebViewBaseMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveWebViewBaseMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveWebViewBaseMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveWebViewBaseMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveWebViewBaseMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveWebViewBaseMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveWebViewBaseMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveWebViewBaseMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveWebViewBaseMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveWebViewBaseMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveWebViewBaseMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveWebViewBaseMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveWebViewBaseMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveWebViewBaseMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveWebViewBaseMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveWebViewBaseMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveWebViewBaseMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveWebViewBaseMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveWebViewBaseMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveWebViewBaseMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveWebViewBaseMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveWebViewBaseMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveWebViewBaseMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveWebViewBaseMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveWebViewBaseMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveWebViewBaseMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveWebViewBaseMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveWebViewBaseMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveWebViewBaseMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveWebViewBaseMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveWebViewBaseMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveWebViewBaseMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveWebViewBaseMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveWebViewBaseMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveWebViewBaseMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveWebViewBaseMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveWebViewBaseMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveWebViewBaseMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveWebViewBaseMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveWebViewBaseMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveWebViewBaseMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveWebViewBaseMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveWebViewBaseMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveWebViewBaseMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveWebViewBaseMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveWebViewBaseMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveWebViewBaseMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveWebViewBaseMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveWebViewBaseMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveWebViewBaseMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveWebViewBaseMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveWebViewBaseMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveWebViewBaseMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveWebViewBaseMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveWebViewBaseMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveWebViewBaseMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveWebViewBaseMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveWebViewBaseMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveWebViewBaseMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveWebViewBaseMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveWebViewBaseMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveWebViewBaseMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveWebViewBaseMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveWebViewBaseMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveWebViewBaseMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveWebViewBaseMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveWebViewBaseMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveWebViewBaseMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveWebViewBaseMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveWebViewBaseMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveWebViewBaseMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveWebViewBaseMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveWebViewBaseMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveWebViewBaseMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveWebViewBaseMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveWebViewBaseMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveWebViewBaseMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveWebViewBaseMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveWebViewBaseMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveWebViewBaseMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveWebViewBaseMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveWebViewBaseMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveWebViewBaseMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveWebViewBaseMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveWebViewBaseMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveWebViewBaseMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveWebViewBaseMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveWebViewBaseMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveWebViewBaseMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveWebViewBaseMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveWebViewBaseMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveWebViewBaseMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveWebViewBaseMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveWebViewBaseMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveWebViewBaseMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveWebViewBaseMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveWebViewBaseMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveWebViewBaseMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveWebViewBaseMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveWebViewBaseMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveWebViewBaseMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveWebViewBaseMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveWebViewBaseMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveWebViewBaseMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveWebViewBaseMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveWebViewBaseMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveWebViewBaseMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveWebViewBaseMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveWebViewBaseMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveWebViewBaseMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveWebViewBaseMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveWebViewBaseMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveWebViewBaseMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveWebViewBaseMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveWebViewBaseMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveWebViewBaseMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveWebViewBaseMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveWebViewBaseMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveWebViewBaseMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveWebViewBaseMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveWebViewBaseMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveWebViewBaseMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveWebViewBaseMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveWebViewBaseMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveWebViewBaseMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveWebViewBaseMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveWebViewBaseMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveWebViewBaseMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveWebViewBaseMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveWebViewBaseMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveWebViewBaseMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveWebViewBaseMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveWebViewBaseMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveWebViewBaseMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveWebViewBaseMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveWebViewBaseMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveWebViewBaseMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveWebViewBaseMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveWebViewBaseMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveWebViewBaseMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveWebViewBaseMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveWebViewBaseMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveWebViewBaseMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveWebViewBaseMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveWebViewBaseMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveWebViewBaseMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveWebViewBaseMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveWebViewBaseMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveWebViewBaseMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveWebViewBaseMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveWebViewBaseMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveWebViewBaseMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveWebViewBaseMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveWebViewBaseMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveWebViewBaseMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveWebViewBaseMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveWebViewBaseMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveWebViewBaseMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveWebViewBaseMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveWebViewBaseMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveWebViewBaseMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveWebViewBaseMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveWebViewBaseMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveWebViewBaseMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveWebViewBaseMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveWebViewBaseMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveWebViewBaseMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveWebViewBaseMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveWebViewBaseMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveWebViewBaseMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveWebViewBaseMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveWebViewBaseMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveWebViewBaseMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveWebViewBaseMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveWebViewBaseMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveWebViewBaseMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveWebViewBaseMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveWebViewBaseMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveWebViewBaseMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveWebViewBaseMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveWebViewBaseMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveWebViewBaseMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveWebViewBaseMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveWebViewBaseMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveWebViewBaseMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveWebViewBaseMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveWebViewBaseMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveWebViewBaseMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveWebViewBaseMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveWebViewBaseMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveWebViewBaseMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveWebViewBaseMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveWebViewBaseMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveWebViewBaseMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveWebViewBaseMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveWebViewBaseMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveWebViewBaseMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveWebViewBaseMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveWebViewBaseMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveWebViewBaseMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveWebViewBaseMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveWebViewBaseMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveWebViewBaseMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveWebViewBaseMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveWebViewBaseMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveWebViewBaseMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveWebViewBaseMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveWebViewBaseMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveWebViewBaseMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveWebViewBaseMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveWebViewBaseMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveWebViewBaseMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveWebViewBaseMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveWebViewBaseMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveWebViewBaseMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveWebViewBaseMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveWebViewBaseMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveWebViewBaseMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveWebViewBaseMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveWebViewBaseMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveWebViewBaseMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveWebViewBaseMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveWebViewBaseMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveWebViewBaseMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveWebViewBaseMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveWebViewBaseMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveWebViewBaseMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveWebViewBaseMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveWebViewBaseMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveWebViewBaseMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveWebViewBaseMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveWebViewBaseMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveWebViewBaseMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveWebViewBaseMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveWebViewBaseMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveWebViewBaseMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveWebViewBaseMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveWebViewBaseMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveWebViewBaseMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveWebViewBaseMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveWebViewBaseMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveWebViewBaseMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveWebViewBaseMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveWebViewBaseMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveWebViewBaseMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveWebViewBaseMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveWebViewBaseMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveWebViewBaseMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveWebViewBaseMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveWebViewBaseMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveWebViewBaseMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveWebViewBaseMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveWebViewBaseMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveWebViewBaseMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveWebViewBaseMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveWebViewBaseMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveWebViewBaseMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveWebViewBaseMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveWebViewBaseMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveWebViewBaseMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveWebViewBaseMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveWebViewBaseMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveWebViewBaseMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveWebViewBaseMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveWebViewBaseMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveWebViewBaseMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveWebViewBaseMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveWebViewBaseMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveWebViewBaseMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveWebViewBaseMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveWebViewBaseMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveWebViewBaseMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveWebViewBaseMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveWebViewBaseMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveWebViewBaseMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveWebViewBaseMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveWebViewBaseMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveWebViewBaseMethod t WebViewBase, O.OverloadedMethod info WebViewBase p) => OL.IsLabel t (WebViewBase -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#if MIN_VERSION_base(4,13,0)
instance (info ~ ResolveWebViewBaseMethod t WebViewBase, O.OverloadedMethod info WebViewBase p, R.HasField t WebViewBase p) => R.HasField t WebViewBase p where
    getField = O.overloadedMethod @info

#endif

instance (info ~ ResolveWebViewBaseMethod t WebViewBase, O.OverloadedMethodInfo info WebViewBase) => OL.IsLabel t (O.MethodProxy info WebViewBase) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.MethodProxy
#else
    fromLabel _ = O.MethodProxy
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList WebViewBase
type instance O.AttributeList WebViewBase = WebViewBaseAttributeList
type WebViewBaseAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, DK.Type)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList WebViewBase = WebViewBaseSignalList
type WebViewBaseSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, DK.Type)])

#endif


