.class public interface abstract Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;,
        Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;,
        Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AVAILABLE_TRACK_TYPE;,
        Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_WARNING_EVENT;,
        Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;,
        Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;,
        Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;,
        Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_SYNC_EVENT_ID;,
        Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "@@@VOCommonPlayerListener"


# virtual methods
.method public abstract onVOEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract onVOSyncEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_SYNC_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method
