.class final Lcom/cbs/app/cast/VideoCastNotificationService$2;
.super Lcom/google/android/libraries/cast/companionlibrary/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/cast/VideoCastNotificationService;->a(Lcom/google/android/gms/cast/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/cast/d;

.field final synthetic b:Lcom/cbs/app/cast/VideoCastNotificationService;


# direct methods
.method constructor <init>(Lcom/cbs/app/cast/VideoCastNotificationService;Lcom/google/android/gms/cast/d;)V
    .locals 1

    .prologue
    .line 195
    iput-object p1, p0, Lcom/cbs/app/cast/VideoCastNotificationService$2;->b:Lcom/cbs/app/cast/VideoCastNotificationService;

    iput-object p2, p0, Lcom/cbs/app/cast/VideoCastNotificationService$2;->a:Lcom/google/android/gms/cast/d;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/a;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 195
    check-cast p1, Landroid/graphics/Bitmap;

    .line 1200
    :try_start_0
    iget-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService$2;->a:Lcom/google/android/gms/cast/d;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/d;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1201
    iget-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService$2;->b:Lcom/cbs/app/cast/VideoCastNotificationService;

    iget-object v1, p0, Lcom/cbs/app/cast/VideoCastNotificationService$2;->b:Lcom/cbs/app/cast/VideoCastNotificationService;

    invoke-static {v1}, Lcom/cbs/app/cast/VideoCastNotificationService;->d(Lcom/cbs/app/cast/VideoCastNotificationService;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/google/android/libraries/cast/companionlibrary/a/d;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/cast/VideoCastNotificationService;->a(Lcom/cbs/app/cast/VideoCastNotificationService;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1206
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService$2;->b:Lcom/cbs/app/cast/VideoCastNotificationService;

    iget-object v1, p0, Lcom/cbs/app/cast/VideoCastNotificationService$2;->a:Lcom/google/android/gms/cast/d;

    iget-object v2, p0, Lcom/cbs/app/cast/VideoCastNotificationService$2;->b:Lcom/cbs/app/cast/VideoCastNotificationService;

    invoke-static {v2}, Lcom/cbs/app/cast/VideoCastNotificationService;->e(Lcom/cbs/app/cast/VideoCastNotificationService;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/cast/VideoCastNotificationService$2;->b:Lcom/cbs/app/cast/VideoCastNotificationService;

    invoke-static {v3}, Lcom/cbs/app/cast/VideoCastNotificationService;->f(Lcom/cbs/app/cast/VideoCastNotificationService;)Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/cbs/app/cast/VideoCastNotificationService;->a(Lcom/cbs/app/cast/VideoCastNotificationService;Lcom/google/android/gms/cast/d;Landroid/graphics/Bitmap;Z)Landroid/widget/RemoteViews;
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_0 .. :try_end_0} :catch_1

    .line 1211
    :goto_1
    iget-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService$2;->b:Lcom/cbs/app/cast/VideoCastNotificationService;

    invoke-static {v0}, Lcom/cbs/app/cast/VideoCastNotificationService;->b(Lcom/cbs/app/cast/VideoCastNotificationService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1212
    iget-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService$2;->b:Lcom/cbs/app/cast/VideoCastNotificationService;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/cbs/app/cast/VideoCastNotificationService$2;->b:Lcom/cbs/app/cast/VideoCastNotificationService;

    invoke-static {v2}, Lcom/cbs/app/cast/VideoCastNotificationService;->c(Lcom/cbs/app/cast/VideoCastNotificationService;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cbs/app/cast/VideoCastNotificationService;->startForeground(ILandroid/app/Notification;)V

    .line 1214
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService$2;->b:Lcom/cbs/app/cast/VideoCastNotificationService;

    invoke-static {v0}, Lcom/cbs/app/cast/VideoCastNotificationService;->g(Lcom/cbs/app/cast/VideoCastNotificationService;)Lcom/google/android/libraries/cast/companionlibrary/a/a;

    move-result-object v0

    if-ne p0, v0, :cond_1

    .line 1215
    iget-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService$2;->b:Lcom/cbs/app/cast/VideoCastNotificationService;

    invoke-static {v0}, Lcom/cbs/app/cast/VideoCastNotificationService;->h(Lcom/cbs/app/cast/VideoCastNotificationService;)Lcom/google/android/libraries/cast/companionlibrary/a/a;

    .line 195
    :cond_1
    return-void

    .line 1203
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService$2;->b:Lcom/cbs/app/cast/VideoCastNotificationService;

    iget-object v1, p0, Lcom/cbs/app/cast/VideoCastNotificationService$2;->b:Lcom/cbs/app/cast/VideoCastNotificationService;

    invoke-static {v1}, Lcom/cbs/app/cast/VideoCastNotificationService;->d(Lcom/cbs/app/cast/VideoCastNotificationService;)I

    move-result v1

    iget-object v2, p0, Lcom/cbs/app/cast/VideoCastNotificationService$2;->b:Lcom/cbs/app/cast/VideoCastNotificationService;

    invoke-static {v2}, Lcom/cbs/app/cast/VideoCastNotificationService;->d(Lcom/cbs/app/cast/VideoCastNotificationService;)I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/a/d;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/cast/VideoCastNotificationService;->a(Lcom/cbs/app/cast/VideoCastNotificationService;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/a; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1207
    :catch_0
    move-exception v0

    .line 1209
    :goto_2
    invoke-static {}, Lcom/cbs/app/cast/VideoCastNotificationService;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to set notification for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cbs/app/cast/VideoCastNotificationService$2;->a:Lcom/google/android/gms/cast/d;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1207
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2
.end method
