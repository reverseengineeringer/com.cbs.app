.class public interface abstract Lcom/visualon/OSMPPlayer/VOCommonPlayerStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract canBePaused()Z
.end method

.method public abstract canPlayIframeOnly()Z
.end method

.method public abstract getDRMUniqueIdentifier()Ljava/lang/String;
.end method

.method public abstract getDownloadStatus(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;
.end method

.method public abstract getDuration()J
.end method

.method public abstract getFrameScrubbingThumbnail(I)Ljava/lang/String;
.end method

.method public abstract getMaxPosition()J
.end method

.method public abstract getMinPosition()J
.end method

.method public abstract getParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract getPlayerStatus()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;
.end method

.method public abstract getPlayerType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PLAYER_ENGINE;
.end method

.method public abstract getPosition()J
.end method

.method public abstract getSEIInfo(JLcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SEI_INFO_FLAG;)Lcom/visualon/OSMPPlayer/VOOSMPSEIPicTiming;
.end method

.method public abstract getScreenBrightness()I
.end method

.method public abstract getScreenBrightnessMode()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SCREEN_BRIGHTNESS_MODE;
.end method

.method public abstract getUTCPosition()J
.end method

.method public abstract getValidBufferDuration()I
.end method

.method public abstract getVersion(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_MODULE_TYPE;)Ljava/lang/String;
.end method

.method public abstract isLiveStreaming()Z
.end method

.method public abstract isOutputControlActive(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;)Z
.end method

.method public abstract isOutputControlEnforce(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;)Z
.end method
