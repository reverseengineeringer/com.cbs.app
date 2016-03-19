.class public interface abstract Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;
    }
.end annotation


# virtual methods
.method public abstract getDeviceModel()Ljava/lang/String;
.end method

.method public abstract getMaxCPUFrequency()J
.end method

.method public abstract getNumberOfCores()I
.end method

.method public abstract getOSType()Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;
.end method

.method public abstract getOSVersion()Ljava/lang/String;
.end method

.method public abstract getProcessorType()Ljava/lang/String;
.end method

.method public abstract hasNeon()Z
.end method
