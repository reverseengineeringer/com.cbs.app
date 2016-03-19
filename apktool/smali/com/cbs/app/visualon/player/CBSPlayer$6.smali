.class final Lcom/cbs/app/visualon/player/CBSPlayer$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/visualon/player/CBSPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 3558
    :try_start_0
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->H()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/a/a;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/a/a$a;

    move-result-object v0

    .line 3559
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->a:Ljava/lang/String;

    .line 3560
    if-eqz v0, :cond_1

    .line 3561
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->a:Ljava/lang/String;

    .line 3562
    invoke-virtual {v0}, Lcom/google/android/gms/ads/a/a$a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3563
    const-string v0, "optout"

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/d; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/c; {:try_start_0 .. :try_end_0} :catch_3

    .line 3580
    :goto_0
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->a:Ljava/lang/String;

    .line 3581
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->H()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/cbs/app/visualon/player/CBSPlayer$6$1;

    invoke-direct {v1, p0}, Lcom/cbs/app/visualon/player/CBSPlayer$6$1;-><init>(Lcom/cbs/app/visualon/player/CBSPlayer$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3587
    return-void

    .line 3565
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/ads/a/a$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 3566
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "advertisingId2"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->az()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/common/d; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/android/gms/common/c; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 3571
    :catch_0
    move-exception v0

    .line 3572
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->a:Ljava/lang/String;

    const-string v2, "IllegalStateException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3569
    :cond_1
    :try_start_2
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->a:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/gms/common/d; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/google/android/gms/common/c; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 3573
    :catch_1
    move-exception v0

    .line 3574
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->a:Ljava/lang/String;

    const-string v2, "GooglePlayServicesRepairableException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3576
    :catch_2
    move-exception v0

    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->a:Ljava/lang/String;

    const-string v1, "IOException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3577
    :catch_3
    move-exception v0

    .line 3578
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->a:Ljava/lang/String;

    const-string v2, "GooglePlayServicesNotAvailableException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
