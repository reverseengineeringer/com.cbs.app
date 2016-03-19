.class public interface abstract Lcom/visualon/OSMPPlayer/VOCommonPlayerAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract enableAnalytics(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract enableAnalyticsAgent(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract enableAnalyticsDisplay(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract enableAnalyticsExport(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract enableAnalyticsFoundation(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract enableAnalyticsFoundationLocation(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract getAnalytics(Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsFilter;)Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsInfo;
.end method

.method public abstract getAnalyticsExportPacket()Ljava/lang/String;
.end method

.method public abstract getAnalyticsFPS()F
.end method

.method public abstract getAudioDecodingBitrate()[I
.end method

.method public abstract getVideoDecodingBitrate()[I
.end method

.method public abstract setAnalyticsAgentAppID(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract setAnalyticsAgentCUID(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract setAnalyticsDisplayType(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract setAnalyticsExportListener(Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsExportListener;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract setAnalyticsFoundationCUID(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method
