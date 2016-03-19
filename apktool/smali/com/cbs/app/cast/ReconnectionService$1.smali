.class final Lcom/cbs/app/cast/ReconnectionService$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/cast/ReconnectionService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/cast/ReconnectionService;


# direct methods
.method constructor <init>(Lcom/cbs/app/cast/ReconnectionService;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/cbs/app/cast/ReconnectionService$1;->a:Lcom/cbs/app/cast/ReconnectionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 87
    invoke-static {}, Lcom/cbs/app/cast/ReconnectionService;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ScreenOnOffBroadcastReceiver: onReceive(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/cbs/app/cast/ReconnectionService$1;->a:Lcom/cbs/app/cast/ReconnectionService;

    invoke-static {v0}, Lcom/cbs/app/cast/ReconnectionService;->a(Lcom/cbs/app/cast/ReconnectionService;)J

    move-result-wide v0

    .line 89
    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/cbs/app/cast/ReconnectionService$1;->a:Lcom/cbs/app/cast/ReconnectionService;

    invoke-static {v0}, Lcom/cbs/app/cast/ReconnectionService;->b(Lcom/cbs/app/cast/ReconnectionService;)V

    .line 92
    :cond_0
    return-void
.end method
