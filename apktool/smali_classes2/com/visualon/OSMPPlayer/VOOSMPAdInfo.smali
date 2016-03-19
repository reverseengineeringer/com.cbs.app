.class public interface abstract Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPPlayer/VOOSMPAdInfo$IID3Infor;
    }
.end annotation


# virtual methods
.method public abstract getCount()I
.end method

.method public abstract getIID3Infor()Lcom/visualon/OSMPPlayer/VOOSMPAdInfo$IID3Infor;
.end method

.method public abstract getOpenParam()Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;
.end method

.method public abstract getPeriodList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlayer()Lcom/visualon/OSMPPlayer/VOCommonPlayer;
.end method

.method public abstract getStreamUrl()Ljava/lang/String;
.end method

.method public abstract setIID3Infor(Lcom/visualon/OSMPPlayer/VOOSMPAdInfo$IID3Infor;)V
.end method

.method public abstract setOpenParam(Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;)V
.end method

.method public abstract setPlayer(Lcom/visualon/OSMPPlayer/VOCommonPlayer;)V
.end method

.method public abstract setStreamUrl(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method
