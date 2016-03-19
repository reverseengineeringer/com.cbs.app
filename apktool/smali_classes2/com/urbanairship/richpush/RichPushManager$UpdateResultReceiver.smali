.class abstract Lcom/urbanairship/richpush/RichPushManager$UpdateResultReceiver;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/richpush/RichPushManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "UpdateResultReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 397
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 398
    return-void
.end method


# virtual methods
.method public abstract a(Z)V
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 402
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 403
    :goto_0
    invoke-virtual {p0, v0}, Lcom/urbanairship/richpush/RichPushManager$UpdateResultReceiver;->a(Z)V

    .line 404
    return-void

    .line 402
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
