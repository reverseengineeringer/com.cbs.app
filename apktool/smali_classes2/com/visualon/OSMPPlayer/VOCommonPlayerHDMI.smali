.class public interface abstract Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;,
        Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$onHDMIConnectionChangeListener;
    }
.end annotation


# virtual methods
.method public abstract enableHDMIDetection(Landroid/content/Context;Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract getHDMIStatus()Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;
.end method

.method public abstract isHDMIDetectionSupported()Z
.end method

.method public abstract setOnHDMIConnectionChangeListener(Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$onHDMIConnectionChangeListener;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method
