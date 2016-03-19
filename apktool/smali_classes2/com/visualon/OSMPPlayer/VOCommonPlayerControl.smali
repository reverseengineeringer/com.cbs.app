.class public interface abstract Lcom/visualon/OSMPPlayer/VOCommonPlayerControl;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract canPlayIframeOnly()Z
.end method

.method public abstract close()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract destroy()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract init(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PLAYER_ENGINE;Lcom/visualon/OSMPPlayer/VOOSMPInitParam;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract mute()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract open(Ljava/lang/String;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FLAG;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract openSource(JLcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FLAG;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract pause()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract redrawVideo()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract resume(Ljava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract setOnEventListener(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract setPosition(J)J
.end method

.method public abstract setPreference(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract setScreenBrightness(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract setScreenBrightnessMode(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SCREEN_BRIGHTNESS_MODE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract setSurface(Landroid/view/Surface;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract setSurfaceChangeFinished()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract setUTCPosition(J)J
.end method

.method public abstract setVideoAspectRatio(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract setView(Landroid/view/View;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract setViewSize(II)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract setVolume(F)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract setVolume(FF)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract start()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract startAnalyticsNotification(ILcom/visualon/OSMPPlayer/VOOSMPAnalyticsFilter;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract startSEINotification(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract stop()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract stopAnalyticsNotification()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract stopSEINotification()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract suspend(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract unmute()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract updateSourceURL(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method
