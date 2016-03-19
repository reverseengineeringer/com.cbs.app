.class public interface abstract Lcom/visualon/OSMPPlayer/VOCommonPlayerAd;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract enableFullScreen(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract getVideoAdClickThru()Ljava/lang/String;
.end method

.method public abstract loadAdCall(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract loadVideo(Ljava/lang/String;Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract loadVideoById(Ljava/lang/String;Ljava/lang/String;IILcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract loadVideoByUrl(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract resume(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_RESUME_MODE;J)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract setADSkipAction()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract setAdTrackingAPI(Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract setSegmentStartParam(Ljava/util/HashMap;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;"
        }
    .end annotation
.end method
