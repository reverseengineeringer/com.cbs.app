.class final Lcom/cbs/app/cast/VideoCastNotificationService$1;
.super Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/cast/VideoCastNotificationService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/cast/VideoCastNotificationService;


# direct methods
.method constructor <init>(Lcom/cbs/app/cast/VideoCastNotificationService;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/cbs/app/cast/VideoCastNotificationService$1;->a:Lcom/cbs/app/cast/VideoCastNotificationService;

    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService$1;->a:Lcom/cbs/app/cast/VideoCastNotificationService;

    invoke-static {v0}, Lcom/cbs/app/cast/VideoCastNotificationService;->a(Lcom/cbs/app/cast/VideoCastNotificationService;)Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->S()I

    move-result v0

    .line 110
    iget-object v1, p0, Lcom/cbs/app/cast/VideoCastNotificationService$1;->a:Lcom/cbs/app/cast/VideoCastNotificationService;

    invoke-static {v1, v0}, Lcom/cbs/app/cast/VideoCastNotificationService;->a(Lcom/cbs/app/cast/VideoCastNotificationService;I)V

    .line 111
    return-void
.end method

.method public final c(I)V
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Lcom/cbs/app/cast/VideoCastNotificationService;->a()Ljava/lang/String;

    const-string v0, "onApplicationDisconnected() was reached, stopping the notification service"

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService$1;->a:Lcom/cbs/app/cast/VideoCastNotificationService;

    invoke-virtual {v0}, Lcom/cbs/app/cast/VideoCastNotificationService;->stopSelf()V

    .line 105
    return-void
.end method

.method public final c(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 115
    iget-object v2, p0, Lcom/cbs/app/cast/VideoCastNotificationService$1;->a:Lcom/cbs/app/cast/VideoCastNotificationService;

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Lcom/cbs/app/cast/VideoCastNotificationService;->a(Lcom/cbs/app/cast/VideoCastNotificationService;Z)Z

    .line 116
    iget-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService$1;->a:Lcom/cbs/app/cast/VideoCastNotificationService;

    invoke-static {v0}, Lcom/cbs/app/cast/VideoCastNotificationService;->b(Lcom/cbs/app/cast/VideoCastNotificationService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService$1;->a:Lcom/cbs/app/cast/VideoCastNotificationService;

    invoke-static {v0}, Lcom/cbs/app/cast/VideoCastNotificationService;->c(Lcom/cbs/app/cast/VideoCastNotificationService;)Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService$1;->a:Lcom/cbs/app/cast/VideoCastNotificationService;

    iget-object v2, p0, Lcom/cbs/app/cast/VideoCastNotificationService$1;->a:Lcom/cbs/app/cast/VideoCastNotificationService;

    invoke-static {v2}, Lcom/cbs/app/cast/VideoCastNotificationService;->c(Lcom/cbs/app/cast/VideoCastNotificationService;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cbs/app/cast/VideoCastNotificationService;->startForeground(ILandroid/app/Notification;)V

    .line 121
    :goto_1
    return-void

    .line 115
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService$1;->a:Lcom/cbs/app/cast/VideoCastNotificationService;

    invoke-virtual {v0, v1}, Lcom/cbs/app/cast/VideoCastNotificationService;->stopForeground(Z)V

    goto :goto_1
.end method
