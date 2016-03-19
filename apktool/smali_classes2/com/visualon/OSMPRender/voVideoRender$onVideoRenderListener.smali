.class public interface abstract Lcom/visualon/OSMPRender/voVideoRender$onVideoRenderListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPRender/voVideoRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "onVideoRenderListener"
.end annotation


# virtual methods
.method public abstract GetVideoData([B)J
.end method

.method public abstract VideoSizeChanged()V
.end method

.method public abstract onGetVideoFormat()Lcom/visualon/OSMPUtils/voOSVideoFormat;
.end method

.method public abstract onGetVideoParam(J)Ljava/lang/Object;
.end method

.method public abstract onSetVideoParam(ILjava/lang/Object;)J
.end method

.method public abstract onVideoRenderEvent(IIILjava/lang/Object;)I
.end method
