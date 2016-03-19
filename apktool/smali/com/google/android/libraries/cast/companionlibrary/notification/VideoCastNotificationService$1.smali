.class final Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$1;
.super Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$1;->a:Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$1;->a:Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->a(Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;)Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->S()I

    move-result v0

    .line 106
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$1;->a:Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    invoke-static {v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->a(Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;I)V

    .line 107
    return-void
.end method

.method public final c(I)V
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->a()Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$1;->a:Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->stopSelf()V

    .line 101
    return-void
.end method

.method public final c(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 111
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$1;->a:Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->a(Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;Z)Z

    .line 112
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$1;->a:Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->b(Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$1;->a:Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->c(Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;)Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$1;->a:Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$1;->a:Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    invoke-static {v2}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->c(Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->startForeground(ILandroid/app/Notification;)V

    .line 117
    :goto_1
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$1;->a:Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->stopForeground(Z)V

    goto :goto_1
.end method
