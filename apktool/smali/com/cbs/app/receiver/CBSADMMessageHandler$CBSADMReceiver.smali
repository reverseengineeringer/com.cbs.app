.class public Lcom/cbs/app/receiver/CBSADMMessageHandler$CBSADMReceiver;
.super Lcom/amazon/device/messaging/ADMMessageReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/receiver/CBSADMMessageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CBSADMReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    const-class v0, Lcom/cbs/app/receiver/CBSADMMessageHandler;

    invoke-direct {p0, v0}, Lcom/amazon/device/messaging/ADMMessageReceiver;-><init>(Ljava/lang/Class;)V

    .line 89
    return-void
.end method
