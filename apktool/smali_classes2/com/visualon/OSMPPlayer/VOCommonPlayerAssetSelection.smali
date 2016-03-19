.class public interface abstract Lcom/visualon/OSMPPlayer/VOCommonPlayerAssetSelection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPPlayer/VOCommonPlayerAssetSelection$VOOSMPAssetProperty;,
        Lcom/visualon/OSMPPlayer/VOCommonPlayerAssetSelection$VOOSMPAssetIndex;
    }
.end annotation


# static fields
.field public static final VO_OSMP_ASSET_AUTO_SELECTED:I = -0x1

.field public static final VO_OSMP_ASSET_NOT_SELECTED:I = -0x2


# virtual methods
.method public abstract clearSelection()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract commitSelection()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract getAudioCount()I
.end method

.method public abstract getAudioProperty(I)Lcom/visualon/OSMPPlayer/VOCommonPlayerAssetSelection$VOOSMPAssetProperty;
.end method

.method public abstract getCurrentSelection()Lcom/visualon/OSMPPlayer/VOCommonPlayerAssetSelection$VOOSMPAssetIndex;
.end method

.method public abstract getPlayingAsset()Lcom/visualon/OSMPPlayer/VOCommonPlayerAssetSelection$VOOSMPAssetIndex;
.end method

.method public abstract getSubtitleCount()I
.end method

.method public abstract getSubtitleProperty(I)Lcom/visualon/OSMPPlayer/VOCommonPlayerAssetSelection$VOOSMPAssetProperty;
.end method

.method public abstract getVideoCount()I
.end method

.method public abstract getVideoProperty(I)Lcom/visualon/OSMPPlayer/VOCommonPlayerAssetSelection$VOOSMPAssetProperty;
.end method

.method public abstract isAudioAvailable(I)Z
.end method

.method public abstract isSubtitleAvailable(I)Z
.end method

.method public abstract isVideoAvailable(I)Z
.end method

.method public abstract selectAudio(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract selectSubtitle(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract selectVideo(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract setDefaultAudioLanguage(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract setDefaultSubtitleLanguage(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract setPreferredAudioLanguage([Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract setPreferredSubtitleLanguage([Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method
