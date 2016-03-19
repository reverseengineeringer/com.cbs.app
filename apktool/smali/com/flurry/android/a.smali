.class public final Lcom/flurry/android/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/flurry/android/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/b;"
        }
    .end annotation

    .prologue
    .line 530
    sget-object v0, Lcom/flurry/android/b;->a:Lcom/flurry/android/b;

    .line 532
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 533
    sget-object v1, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v2, "Device SDK Version older than 10"

    invoke-static {v1, v2}, Lcom/flurry/sdk/am;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :goto_0
    return-object v0

    .line 536
    :cond_0
    if-nez p0, :cond_1

    .line 537
    sget-object v1, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v2, "String eventId passed to logEvent was null."

    invoke-static {v1, v2}, Lcom/flurry/sdk/am;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 545
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/a;->a()Lcom/flurry/sdk/a;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/b;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 546
    :catch_0
    move-exception v1

    .line 547
    sget-object v2, Lcom/flurry/android/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to log event: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/flurry/sdk/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a()V
    .locals 3

    .prologue
    .line 792
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 793
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/am;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    :goto_0
    return-void

    .line 797
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/a;->a()Lcom/flurry/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/a;->e()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 798
    :catch_0
    move-exception v0

    .line 799
    sget-object v1, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 369
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 370
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/am;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :goto_0
    return-void

    .line 373
    :cond_0
    if-nez p0, :cond_1

    .line 374
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_1
    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_2

    .line 377
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot start a session with an Application context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_2
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    if-nez v0, :cond_3

    .line 380
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Flurry SDK must be initialized before starting a session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/bf;->a()Lcom/flurry/sdk/bf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/bf;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 385
    :catch_0
    move-exception v0

    .line 386
    sget-object v1, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 286
    const-class v1, Lcom/flurry/android/a;

    monitor-enter v1

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 287
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v2, "Device SDK Version older than 10"

    invoke-static {v0, v2}, Lcom/flurry/sdk/am;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    :goto_0
    monitor-exit v1

    return-void

    .line 290
    :cond_0
    if-nez p0, :cond_1

    .line 291
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Null context"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 293
    :cond_1
    if-eqz p1, :cond_2

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 294
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "apiKey not specified"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 298
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/flurry/sdk/bx;->a()V

    .line 299
    invoke-static {p0, p1}, Lcom/flurry/sdk/y;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    :try_start_4
    sget-object v2, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 2

    .prologue
    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 82
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/am;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :goto_0
    return-void

    .line 85
    :cond_0
    if-eqz p0, :cond_1

    .line 86
    invoke-static {}, Lcom/flurry/sdk/am;->b()V

    goto :goto_0

    .line 88
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/am;->a()V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 416
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 417
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/am;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :goto_0
    return-void

    .line 420
    :cond_0
    if-nez p0, :cond_1

    .line 421
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_1
    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_2

    .line 424
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot end a session with an Application context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_2
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    if-nez v0, :cond_3

    .line 427
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Flurry SDK must be initialized before ending a session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/bf;->a()Lcom/flurry/sdk/bf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/bf;->c(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 431
    :catch_0
    move-exception v0

    .line 432
    sget-object v1, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
