.class final Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService$1;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 86
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->a()Ljava/lang/String;

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

    .line 87
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService$1;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;)J

    move-result-wide v0

    .line 88
    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService$1;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->b(Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;)V

    .line 91
    :cond_0
    return-void
.end method
