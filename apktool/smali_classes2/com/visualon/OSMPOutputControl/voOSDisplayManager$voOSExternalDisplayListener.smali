.class public interface abstract Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPOutputControl/voOSDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "voOSExternalDisplayListener"
.end annotation


# virtual methods
.method public abstract onExternalDisplayConnected(Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;)V
.end method

.method public abstract onExternalDisplayDisconnected(Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;)V
.end method

.method public abstract onMiracastClosed()V
.end method

.method public abstract onMiracastOpened()V
.end method
