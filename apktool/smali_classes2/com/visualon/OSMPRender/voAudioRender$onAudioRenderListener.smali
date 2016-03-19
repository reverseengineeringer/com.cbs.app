.class public interface abstract Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPRender/voAudioRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "onAudioRenderListener"
.end annotation


# virtual methods
.method public abstract GetAudioData([B)J
.end method

.method public abstract onAudioRenderEvent(IIILjava/lang/Object;)I
.end method

.method public abstract onGetAudioFormat()Lcom/visualon/OSMPUtils/voOSAudioFormat;
.end method

.method public abstract onGetAudioParam(J)Ljava/lang/Object;
.end method

.method public abstract onGetFormatID()I
.end method

.method public abstract onSetAudioParam(ILjava/lang/Object;)J
.end method
