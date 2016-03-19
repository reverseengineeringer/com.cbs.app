.class public Lcom/flurry/sdk/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/bi;
.implements Lcom/flurry/sdk/bk$a;


# static fields
.field static a:I

.field static b:I

.field static c:I

.field static d:I

.field static e:I

.field private static final f:Ljava/lang/String;


# instance fields
.field private A:I

.field private final B:Lcom/flurry/sdk/b;

.field private final C:Lcom/flurry/sdk/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ah",
            "<",
            "Lcom/flurry/sdk/p;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field private j:Ljava/io/File;

.field private k:Lcom/flurry/sdk/af;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/af",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/j;",
            ">;>;"
        }
    .end annotation
.end field

.field private l:Z

.field private m:J

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:B

.field private q:Ljava/lang/Long;

.field private final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/j;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/f;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/g;",
            ">;"
        }
    .end annotation
.end field

.field private w:Z

.field private x:I

.field private final y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/e;",
            ">;"
        }
    .end annotation
.end field

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-class v0, Lcom/flurry/sdk/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/l;->f:Ljava/lang/String;

    .line 78
    const/16 v0, 0x64

    sput v0, Lcom/flurry/sdk/l;->a:I

    .line 79
    const/16 v0, 0xa

    sput v0, Lcom/flurry/sdk/l;->b:I

    .line 80
    const/16 v0, 0x3e8

    sput v0, Lcom/flurry/sdk/l;->c:I

    .line 81
    const v0, 0x27100

    sput v0, Lcom/flurry/sdk/l;->d:I

    .line 82
    const/16 v0, 0x32

    sput v0, Lcom/flurry/sdk/l;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/flurry/sdk/l;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 110
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/flurry/sdk/l;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 111
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/flurry/sdk/l;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/l;->r:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/l;->s:Ljava/util/Map;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/l;->t:Ljava/util/Map;

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/l;->u:Ljava/util/Map;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/l;->v:Ljava/util/List;

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/l;->w:Z

    .line 132
    iput v1, p0, Lcom/flurry/sdk/l;->x:I

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/l;->y:Ljava/util/List;

    .line 134
    iput v1, p0, Lcom/flurry/sdk/l;->z:I

    .line 135
    iput v1, p0, Lcom/flurry/sdk/l;->A:I

    .line 144
    new-instance v0, Lcom/flurry/sdk/b;

    invoke-direct {v0}, Lcom/flurry/sdk/b;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/l;->B:Lcom/flurry/sdk/b;

    .line 146
    new-instance v0, Lcom/flurry/sdk/l$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/l$1;-><init>(Lcom/flurry/sdk/l;)V

    iput-object v0, p0, Lcom/flurry/sdk/l;->C:Lcom/flurry/sdk/ah;

    .line 161
    return-void
.end method

.method private declared-synchronized a(J)V
    .locals 3

    .prologue
    .line 412
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/l;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/g;

    .line 413
    invoke-virtual {v0}, Lcom/flurry/sdk/g;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/flurry/sdk/g;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 414
    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/g;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 417
    :cond_1
    monitor-exit p0

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/l;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/flurry/sdk/l;->h()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/l;Z)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/flurry/sdk/l;->b(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 353
    if-eqz p1, :cond_0

    .line 355
    iget-object v0, p0, Lcom/flurry/sdk/l;->t:Ljava/util/Map;

    const-string v3, "boot.time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 359
    new-instance v3, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 360
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v4, v5, :cond_3

    .line 361
    iget-object v4, p0, Lcom/flurry/sdk/l;->t:Ljava/util/Map;

    const-string v5, "disk.size.total.internal"

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v4, p0, Lcom/flurry/sdk/l;->t:Ljava/util/Map;

    const-string v5, "disk.size.available.internal"

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v0, p0, Lcom/flurry/sdk/l;->t:Ljava/util/Map;

    const-string v4, "disk.size.total.external"

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v0, p0, Lcom/flurry/sdk/l;->t:Ljava/util/Map;

    const-string v4, "disk.size.available.external"

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/l;->t:Ljava/util/Map;

    const-string v3, "carrier.name"

    invoke-static {}, Lcom/flurry/sdk/t;->a()Lcom/flurry/sdk/t;

    invoke-static {}, Lcom/flurry/sdk/t;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    iget-object v0, p0, Lcom/flurry/sdk/l;->t:Ljava/util/Map;

    const-string v3, "carrier.details"

    invoke-static {}, Lcom/flurry/sdk/t;->a()Lcom/flurry/sdk/t;

    invoke-static {}, Lcom/flurry/sdk/t;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/y;->b()Landroid/content/Context;

    move-result-object v0

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 381
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 382
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 384
    iget-object v4, p0, Lcom/flurry/sdk/l;->t:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "memory.available"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    const-string v0, ".start"

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v6, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v0, v4, :cond_1

    .line 386
    iget-object v4, p0, Lcom/flurry/sdk/l;->t:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "memory.total"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    const-string v0, ".start"

    :goto_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v6, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 391
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/sdk/y;->b()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    .line 396
    if-eqz v4, :cond_9

    .line 397
    const-string v0, "status"

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 398
    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x5

    if-ne v0, v3, :cond_6

    :cond_2
    const/4 v0, 0x1

    .line 400
    :goto_3
    const-string v1, "level"

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 401
    const-string v1, "scale"

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    move v2, v3

    .line 404
    :goto_4
    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 406
    iget-object v3, p0, Lcom/flurry/sdk/l;->t:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "battery.charging"

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_7

    const-string v1, ".start"

    :goto_5
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    iget-object v1, p0, Lcom/flurry/sdk/l;->t:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "battery.remaining"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_8

    const-string v0, ".start"

    :goto_6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    return-void

    .line 367
    :cond_3
    iget-object v4, p0, Lcom/flurry/sdk/l;->t:Ljava/util/Map;

    const-string v5, "disk.size.total.internal"

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    iget-object v4, p0, Lcom/flurry/sdk/l;->t:Ljava/util/Map;

    const-string v5, "disk.size.available.internal"

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v0, p0, Lcom/flurry/sdk/l;->t:Ljava/util/Map;

    const-string v4, "disk.size.total.external"

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v6, v5

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    iget-object v0, p0, Lcom/flurry/sdk/l;->t:Ljava/util/Map;

    const-string v4, "disk.size.available.external"

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v6, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 384
    :cond_4
    const-string v0, ".end"

    goto/16 :goto_1

    .line 386
    :cond_5
    const-string v0, ".end"

    goto/16 :goto_2

    :cond_6
    move v0, v1

    .line 398
    goto/16 :goto_3

    .line 406
    :cond_7
    const-string v1, ".end"

    goto :goto_5

    .line 407
    :cond_8
    const-string v0, ".end"

    goto :goto_6

    :cond_9
    move v0, v1

    move v1, v2

    goto/16 :goto_4
.end method

.method private b(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v8, 0x3

    .line 328
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 329
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 331
    if-eqz v2, :cond_2

    .line 332
    sget-object v0, Lcom/flurry/sdk/l;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Launch Options Bundle is present "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v0, v1}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 335
    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 340
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 342
    :goto_1
    iget-object v4, p0, Lcom/flurry/sdk/l;->s:Ljava/util/Map;

    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object v4, Lcom/flurry/sdk/l;->f:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Launch options Key: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ". Its value: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v4, v0}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :cond_1
    const-string v1, "null"

    goto :goto_1

    .line 348
    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/l;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 9787
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/y;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "FLURRY_SHARED_PREFERENCES"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 9789
    const-string v1, "com.flurry.sdk.previous_successful_report"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/flurry/sdk/l;->l:Z

    .line 9790
    const-string v1, "com.flurry.sdk.initial_run_time"

    invoke-static {}, Lcom/flurry/sdk/n;->a()Lcom/flurry/sdk/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/n;->c()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/l;->m:J

    .line 75
    return-void
.end method

.method private declared-synchronized b(Z)V
    .locals 20

    .prologue
    .line 697
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flurry/sdk/l;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 728
    :goto_0
    monitor-exit p0

    return-void

    .line 701
    :cond_0
    const/4 v2, 0x3

    :try_start_1
    sget-object v3, Lcom/flurry/sdk/l;->f:Ljava/lang/String;

    const-string v4, "generating agent report"

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 703
    const/16 v19, 0x0

    .line 705
    :try_start_2
    new-instance v3, Lcom/flurry/sdk/h;

    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/y;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/flurry/sdk/v;->a()Lcom/flurry/sdk/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/v;->b()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/flurry/sdk/l;->l:Z

    invoke-static {}, Lcom/flurry/sdk/o;->a()Lcom/flurry/sdk/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/o;->c()Z

    move-result v7

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/flurry/sdk/l;->m:J

    invoke-static {}, Lcom/flurry/sdk/n;->a()Lcom/flurry/sdk/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/n;->c()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flurry/sdk/l;->r:Ljava/util/List;

    invoke-static {}, Lcom/flurry/sdk/o;->a()Lcom/flurry/sdk/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/o;->d()Ljava/util/Map;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flurry/sdk/l;->B:Lcom/flurry/sdk/b;

    invoke-virtual {v2}, Lcom/flurry/sdk/b;->a()Ljava/util/Map;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flurry/sdk/l;->s:Ljava/util/Map;

    invoke-static {}, Lcom/flurry/sdk/aa;->a()Lcom/flurry/sdk/aa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/aa;->b()Ljava/util/HashMap;

    move-result-object v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-direct/range {v3 .. v18}, Lcom/flurry/sdk/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZZJJLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;J)V

    .line 710
    invoke-virtual {v3}, Lcom/flurry/sdk/h;->a()[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 715
    :goto_1
    if-nez v2, :cond_1

    .line 716
    :try_start_3
    sget-object v2, Lcom/flurry/sdk/l;->f:Ljava/lang/String;

    const-string v3, "Error generating report"

    invoke-static {v2, v3}, Lcom/flurry/sdk/am;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9774
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flurry/sdk/l;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 9775
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flurry/sdk/l;->k:Lcom/flurry/sdk/af;

    invoke-virtual {v2}, Lcom/flurry/sdk/af;->b()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 697
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 711
    :catch_0
    move-exception v2

    .line 712
    :try_start_4
    sget-object v3, Lcom/flurry/sdk/l;->f:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception while generating report: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/flurry/sdk/am;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v19

    goto :goto_1

    .line 718
    :cond_1
    const/4 v3, 0x3

    sget-object v4, Lcom/flurry/sdk/l;->f:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "generated report of size "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/flurry/sdk/l;->r:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " reports."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 722
    invoke-static {}, Lcom/flurry/sdk/a;->a()Lcom/flurry/sdk/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/i;

    move-result-object v3

    .line 723
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/flurry/sdk/z;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 724
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v5

    invoke-virtual {v5}, Lcom/flurry/sdk/y;->c()Ljava/lang/String;

    move-result-object v5

    .line 9087
    invoke-virtual {v3, v2, v5, v4}, Lcom/flurry/sdk/at;->b([BLjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method static synthetic c(Lcom/flurry/sdk/l;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/flurry/sdk/l;->i()V

    return-void
.end method

.method static synthetic d(Lcom/flurry/sdk/l;)Ljava/util/List;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/flurry/sdk/l;->r:Ljava/util/List;

    return-object v0
.end method

.method private declared-synchronized h()V
    .locals 6

    .prologue
    .line 737
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/l;->f:Ljava/lang/String;

    const-string v2, "Loading persistent session report data."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Lcom/flurry/sdk/l;->k:Lcom/flurry/sdk/af;

    invoke-virtual {v0}, Lcom/flurry/sdk/af;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 740
    if-eqz v0, :cond_1

    .line 741
    iget-object v1, p0, Lcom/flurry/sdk/l;->r:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 744
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/l;->j:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/l;->f:Ljava/lang/String;

    const-string v2, "Legacy persistent agent data found, converting."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lcom/flurry/sdk/l;->j:Ljava/io/File;

    invoke-static {v0}, Lcom/flurry/sdk/d;->a(Ljava/io/File;)Lcom/flurry/sdk/m;

    move-result-object v2

    .line 748
    if-eqz v2, :cond_3

    .line 749
    invoke-virtual {v2}, Lcom/flurry/sdk/m;->a()Z

    move-result v3

    .line 752
    invoke-virtual {v2}, Lcom/flurry/sdk/m;->b()J

    move-result-wide v0

    .line 753
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_2

    .line 754
    invoke-static {}, Lcom/flurry/sdk/n;->a()Lcom/flurry/sdk/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/n;->c()J

    move-result-wide v0

    .line 757
    :cond_2
    iput-boolean v3, p0, Lcom/flurry/sdk/l;->l:Z

    .line 758
    iput-wide v0, p0, Lcom/flurry/sdk/l;->m:J

    .line 759
    invoke-direct {p0}, Lcom/flurry/sdk/l;->i()V

    .line 761
    invoke-virtual {v2}, Lcom/flurry/sdk/m;->c()Ljava/util/List;

    move-result-object v0

    .line 762
    if-eqz v0, :cond_3

    .line 763
    iget-object v1, p0, Lcom/flurry/sdk/l;->r:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 767
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/l;->j:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 768
    invoke-virtual {p0}, Lcom/flurry/sdk/l;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 737
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private i()V
    .locals 4

    .prologue
    .line 794
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/y;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "FLURRY_SHARED_PREFERENCES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 795
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 797
    const-string v1, "com.flurry.sdk.previous_successful_report"

    iget-boolean v2, p0, Lcom/flurry/sdk/l;->l:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 798
    const-string v1, "com.flurry.sdk.initial_run_time"

    iget-wide v2, p0, Lcom/flurry/sdk/l;->m:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 799
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 800
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/b;
    .locals 7
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
    .line 472
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/flurry/android/b;->b:Lcom/flurry/android/b;

    .line 474
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {}, Lcom/flurry/sdk/n;->a()Lcom/flurry/sdk/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/n;->d()J

    move-result-wide v4

    sub-long v4, v2, v4

    .line 476
    invoke-static {p1}, Lcom/flurry/sdk/bs;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 477
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 478
    sget-object v0, Lcom/flurry/android/b;->a:Lcom/flurry/android/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    :goto_0
    monitor-exit p0

    return-object v0

    .line 481
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/l;->u:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/f;

    .line 482
    if-nez v0, :cond_2

    .line 483
    iget-object v0, p0, Lcom/flurry/sdk/l;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    sget v3, Lcom/flurry/sdk/l;->a:I

    if-ge v0, v3, :cond_1

    .line 484
    new-instance v0, Lcom/flurry/sdk/f;

    invoke-direct {v0}, Lcom/flurry/sdk/f;-><init>()V

    .line 485
    const/4 v3, 0x1

    iput v3, v0, Lcom/flurry/sdk/f;->a:I

    .line 486
    iget-object v3, p0, Lcom/flurry/sdk/l;->u:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    sget-object v0, Lcom/flurry/sdk/l;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Event count started: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/flurry/sdk/am;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 499
    :goto_1
    iget-boolean v1, p0, Lcom/flurry/sdk/l;->n:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/flurry/sdk/l;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v3, Lcom/flurry/sdk/l;->c:I

    if-ge v1, v3, :cond_5

    iget v1, p0, Lcom/flurry/sdk/l;->x:I

    sget v3, Lcom/flurry/sdk/l;->d:I

    if-ge v1, v3, :cond_5

    .line 500
    if-nez p2, :cond_6

    .line 501
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    .line 503
    :goto_2
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    sget v1, Lcom/flurry/sdk/l;->b:I

    if-le v0, v1, :cond_3

    .line 504
    sget-object v0, Lcom/flurry/sdk/l;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MaxEventParams exceeded: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/am;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    sget-object v0, Lcom/flurry/android/b;->d:Lcom/flurry/android/b;

    goto :goto_0

    .line 489
    :cond_1
    sget-object v0, Lcom/flurry/sdk/l;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Too many different events. Event not counted: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/am;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    sget-object v0, Lcom/flurry/android/b;->c:Lcom/flurry/android/b;

    goto :goto_1

    .line 494
    :cond_2
    iget v1, v0, Lcom/flurry/sdk/f;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/flurry/sdk/f;->a:I

    .line 495
    sget-object v0, Lcom/flurry/sdk/l;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Event count incremented: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/am;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    sget-object v0, Lcom/flurry/android/b;->b:Lcom/flurry/android/b;

    goto :goto_1

    .line 508
    :cond_3
    new-instance v0, Lcom/flurry/sdk/g;

    .line 5803
    iget-object v1, p0, Lcom/flurry/sdk/l;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 508
    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/flurry/sdk/g;-><init>(ILjava/lang/String;Ljava/util/Map;JZ)V

    .line 6076
    invoke-virtual {v0}, Lcom/flurry/sdk/g;->c()[B

    move-result-object v1

    array-length v1, v1

    .line 511
    iget v2, p0, Lcom/flurry/sdk/l;->x:I

    add-int/2addr v1, v2

    sget v2, Lcom/flurry/sdk/l;->d:I

    if-gt v1, v2, :cond_4

    .line 512
    iget-object v1, p0, Lcom/flurry/sdk/l;->v:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    iget v1, p0, Lcom/flurry/sdk/l;->x:I

    .line 7076
    invoke-virtual {v0}, Lcom/flurry/sdk/g;->c()[B

    move-result-object v0

    array-length v0, v0

    .line 513
    add-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/sdk/l;->x:I

    .line 514
    sget-object v0, Lcom/flurry/android/b;->b:Lcom/flurry/android/b;

    goto/16 :goto_0

    .line 518
    :cond_4
    sget v0, Lcom/flurry/sdk/l;->d:I

    iput v0, p0, Lcom/flurry/sdk/l;->x:I

    .line 519
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/l;->w:Z

    .line 521
    sget-object v0, Lcom/flurry/sdk/l;->f:Ljava/lang/String;

    const-string v1, "Event Log size exceeded. No more event details logged."

    invoke-static {v0, v1}, Lcom/flurry/sdk/am;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    sget-object v0, Lcom/flurry/android/b;->e:Lcom/flurry/android/b;

    goto/16 :goto_0

    .line 528
    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/flurry/sdk/l;->w:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 472
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    move-object v3, p2

    goto/16 :goto_2
.end method

.method public final declared-synchronized a()V
    .locals 0

    .prologue
    .line 225
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x4

    .line 165
    invoke-static {}, Lcom/flurry/sdk/bj;->a()Lcom/flurry/sdk/bj;

    move-result-object v1

    .line 167
    const-string v0, "LogEvents"

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/bk;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/l;->n:Z

    .line 168
    const-string v0, "LogEvents"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/sdk/bk;->a(Ljava/lang/String;Lcom/flurry/sdk/bk$a;)V

    .line 169
    sget-object v0, Lcom/flurry/sdk/l;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initSettings, LogEvents = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/flurry/sdk/l;->n:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v0, "UserId"

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/bk;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/sdk/l;->o:Ljava/lang/String;

    .line 172
    const-string v0, "UserId"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/sdk/bk;->a(Ljava/lang/String;Lcom/flurry/sdk/bk$a;)V

    .line 173
    sget-object v0, Lcom/flurry/sdk/l;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initSettings, UserId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/l;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v0, "Gender"

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/bk;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lcom/flurry/sdk/l;->p:B

    .line 176
    const-string v0, "Gender"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/sdk/bk;->a(Ljava/lang/String;Lcom/flurry/sdk/bk$a;)V

    .line 177
    sget-object v0, Lcom/flurry/sdk/l;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initSettings, Gender = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v3, p0, Lcom/flurry/sdk/l;->p:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v0, "Age"

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/bk;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/flurry/sdk/l;->q:Ljava/lang/Long;

    .line 180
    const-string v0, "Age"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/sdk/bk;->a(Ljava/lang/String;Lcom/flurry/sdk/bk$a;)V

    .line 181
    sget-object v0, Lcom/flurry/sdk/l;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initSettings, BirthDate = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/sdk/l;->q:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1779
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ".flurryagent."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/y;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/l;->j:Ljava/io/File;

    .line 185
    new-instance v0, Lcom/flurry/sdk/af;

    .line 1783
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ".yflurryreport."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/y;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/flurry/sdk/bs;->f(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3, v5}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-virtual {p1, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, ".yflurryreport."

    new-instance v3, Lcom/flurry/sdk/l$2;

    invoke-direct {v3, p0}, Lcom/flurry/sdk/l$2;-><init>(Lcom/flurry/sdk/l;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/af;-><init>(Ljava/io/File;Ljava/lang/String;Lcom/flurry/sdk/bd;)V

    iput-object v0, p0, Lcom/flurry/sdk/l;->k:Lcom/flurry/sdk/af;

    .line 192
    invoke-direct {p0, p1}, Lcom/flurry/sdk/l;->b(Landroid/content/Context;)V

    .line 193
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/flurry/sdk/l;->a(Z)V

    .line 195
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/l$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/l$3;-><init>(Lcom/flurry/sdk/l;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/y;->b(Ljava/lang/Runnable;)V

    .line 201
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/l$4;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/l$4;-><init>(Lcom/flurry/sdk/l;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/y;->b(Ljava/lang/Runnable;)V

    .line 210
    invoke-static {}, Lcom/flurry/sdk/o;->a()Lcom/flurry/sdk/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/o;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/l$5;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/l$5;-><init>(Lcom/flurry/sdk/l;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/y;->b(Ljava/lang/Runnable;)V

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/ai;->a()Lcom/flurry/sdk/ai;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.IdProviderFinishedEvent"

    iget-object v2, p0, Lcom/flurry/sdk/l;->C:Lcom/flurry/sdk/ah;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ai;->a(Ljava/lang/String;Lcom/flurry/sdk/ah;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 282
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 300
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/sdk/l;->f:Ljava/lang/String;

    const-string v2, "onSettingUpdate internal error!"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 303
    :goto_1
    return-void

    .line 282
    :sswitch_0
    const-string v1, "LogEvents"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "UserId"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "Gender"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "Age"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 284
    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/l;->n:Z

    .line 285
    sget-object v0, Lcom/flurry/sdk/l;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSettingUpdate, LogEvents = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/flurry/sdk/l;->n:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 288
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/flurry/sdk/l;->o:Ljava/lang/String;

    .line 289
    sget-object v0, Lcom/flurry/sdk/l;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSettingUpdate, UserId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/sdk/l;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 292
    :pswitch_2
    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lcom/flurry/sdk/l;->p:B

    .line 293
    sget-object v0, Lcom/flurry/sdk/l;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSettingUpdate, Gender = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v2, p0, Lcom/flurry/sdk/l;->p:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 296
    :pswitch_3
    check-cast p2, Ljava/lang/Long;

    iput-object p2, p0, Lcom/flurry/sdk/l;->q:Ljava/lang/Long;

    .line 297
    sget-object v0, Lcom/flurry/sdk/l;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSettingUpdate, Birthdate = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/sdk/l;->q:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 282
    nop

    :sswitch_data_0
    .sparse-switch
        -0x686fe59a -> :sswitch_1
        -0x2bfdf2a3 -> :sswitch_0
        0x100df -> :sswitch_3
        0x7eeadee1 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 575
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    const-string v1, "uncaught"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 577
    :goto_0
    iget v2, p0, Lcom/flurry/sdk/l;->z:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/flurry/sdk/l;->z:I

    .line 578
    iget-object v2, p0, Lcom/flurry/sdk/l;->y:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sget v3, Lcom/flurry/sdk/l;->e:I

    if-ge v2, v3, :cond_2

    .line 579
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 580
    new-instance v0, Lcom/flurry/sdk/e;

    .line 7807
    iget-object v1, p0, Lcom/flurry/sdk/l;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 580
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/flurry/sdk/e;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 582
    iget-object v1, p0, Lcom/flurry/sdk/l;->y:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    sget-object v1, Lcom/flurry/sdk/l;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error logged: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/flurry/sdk/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/sdk/am;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    move v1, v0

    .line 575
    goto :goto_0

    .line 585
    :cond_2
    if-eqz v1, :cond_4

    move v8, v0

    .line 588
    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/l;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/flurry/sdk/l;->y:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/e;

    .line 590
    invoke-virtual {v0}, Lcom/flurry/sdk/e;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "uncaught"

    invoke-virtual {v0}, Lcom/flurry/sdk/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 592
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 593
    new-instance v0, Lcom/flurry/sdk/e;

    .line 8807
    iget-object v1, p0, Lcom/flurry/sdk/l;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 593
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/flurry/sdk/e;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 595
    iget-object v1, p0, Lcom/flurry/sdk/l;->y:Ljava/util/List;

    invoke-interface {v1, v8, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 575
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 588
    :cond_3
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2

    .line 600
    :cond_4
    :try_start_2
    sget-object v0, Lcom/flurry/sdk/l;->f:Ljava/lang/String;

    const-string v1, "Max errors logged. No more errors logged."

    invoke-static {v0, v1}, Lcom/flurry/sdk/am;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final declared-synchronized b()V
    .locals 2

    .prologue
    .line 229
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/flurry/sdk/l;->a(Z)V

    .line 231
    invoke-static {}, Lcom/flurry/sdk/n;->a()Lcom/flurry/sdk/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/n;->e()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/l;->a(J)V

    .line 234
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/l$6;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/l$6;-><init>(Lcom/flurry/sdk/l;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/y;->b(Ljava/lang/Runnable;)V

    .line 243
    invoke-static {}, Lcom/flurry/sdk/o;->a()Lcom/flurry/sdk/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/o;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/l$7;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/l$7;-><init>(Lcom/flurry/sdk/l;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/y;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :cond_0
    monitor-exit p0

    return-void

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 2

    .prologue
    .line 258
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/ai;->a()Lcom/flurry/sdk/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/l;->C:Lcom/flurry/sdk/ah;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ai;->a(Lcom/flurry/sdk/ah;)V

    .line 262
    invoke-static {}, Lcom/flurry/sdk/o;->a()Lcom/flurry/sdk/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/o;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/l$8;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/l$8;-><init>(Lcom/flurry/sdk/l;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/y;->b(Ljava/lang/Runnable;)V

    .line 271
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/bj;->a()Lcom/flurry/sdk/bj;

    move-result-object v0

    const-string v1, "Gender"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/bj;->b(Ljava/lang/String;Lcom/flurry/sdk/bk$a;)Z

    .line 273
    invoke-static {}, Lcom/flurry/sdk/bj;->a()Lcom/flurry/sdk/bj;

    move-result-object v0

    const-string v1, "UserId"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/bj;->b(Ljava/lang/String;Lcom/flurry/sdk/bk$a;)Z

    .line 275
    invoke-static {}, Lcom/flurry/sdk/bj;->a()Lcom/flurry/sdk/bj;

    move-result-object v0

    const-string v1, "Age"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/bj;->b(Ljava/lang/String;Lcom/flurry/sdk/bk$a;)Z

    .line 276
    invoke-static {}, Lcom/flurry/sdk/bj;->a()Lcom/flurry/sdk/bj;

    move-result-object v0

    const-string v1, "LogEvents"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/bj;->b(Ljava/lang/String;Lcom/flurry/sdk/bk$a;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    monitor-exit p0

    return-void

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/l;->l:Z

    .line 311
    return-void
.end method

.method final declared-synchronized e()Lcom/flurry/sdk/j;
    .locals 6

    .prologue
    .line 423
    monitor-enter p0

    :try_start_0
    new-instance v2, Lcom/flurry/sdk/k;

    invoke-direct {v2}, Lcom/flurry/sdk/k;-><init>()V

    .line 425
    invoke-static {}, Lcom/flurry/sdk/v;->a()Lcom/flurry/sdk/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/v;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/k;->a(Ljava/lang/String;)V

    .line 426
    invoke-static {}, Lcom/flurry/sdk/n;->a()Lcom/flurry/sdk/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/n;->c()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/flurry/sdk/k;->a(J)V

    .line 427
    invoke-static {}, Lcom/flurry/sdk/n;->a()Lcom/flurry/sdk/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/n;->e()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/flurry/sdk/k;->b(J)V

    .line 428
    invoke-static {}, Lcom/flurry/sdk/n;->a()Lcom/flurry/sdk/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/n;->f()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/flurry/sdk/k;->c(J)V

    .line 429
    iget-object v0, p0, Lcom/flurry/sdk/l;->t:Ljava/util/Map;

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/k;->a(Ljava/util/Map;)V

    .line 430
    invoke-static {}, Lcom/flurry/sdk/q;->a()Lcom/flurry/sdk/q;

    .line 2027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 430
    invoke-virtual {v2, v0}, Lcom/flurry/sdk/k;->b(Ljava/lang/String;)V

    .line 431
    invoke-static {}, Lcom/flurry/sdk/q;->a()Lcom/flurry/sdk/q;

    .line 2031
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 431
    invoke-virtual {v2, v0}, Lcom/flurry/sdk/k;->c(Ljava/lang/String;)V

    .line 432
    invoke-static {}, Lcom/flurry/sdk/n;->a()Lcom/flurry/sdk/n;

    invoke-static {}, Lcom/flurry/sdk/n;->g()Lcom/flurry/sdk/fj$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/fj$a;->a()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/k;->a(I)V

    .line 2152
    invoke-static {}, Lcom/flurry/sdk/bq;->a()Landroid/graphics/Point;

    move-result-object v0

    .line 2154
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    if-ne v1, v3, :cond_1

    .line 2155
    const/4 v0, 0x3

    .line 433
    :goto_0
    invoke-virtual {v2, v0}, Lcom/flurry/sdk/k;->b(I)V

    .line 2815
    iget-object v0, p0, Lcom/flurry/sdk/l;->o:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    .line 434
    :goto_1
    invoke-virtual {v2, v0}, Lcom/flurry/sdk/k;->d(Ljava/lang/String;)V

    .line 436
    invoke-static {}, Lcom/flurry/sdk/r;->a()Lcom/flurry/sdk/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/r;->d()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/k;->a(Landroid/location/Location;)V

    .line 2847
    iget v0, p0, Lcom/flurry/sdk/l;->A:I

    .line 438
    invoke-virtual {v2, v0}, Lcom/flurry/sdk/k;->c(I)V

    .line 439
    iget-byte v0, p0, Lcom/flurry/sdk/l;->p:B

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/k;->a(B)V

    .line 440
    iget-object v0, p0, Lcom/flurry/sdk/l;->q:Ljava/lang/Long;

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/k;->a(Ljava/lang/Long;)V

    .line 3843
    iget-object v0, p0, Lcom/flurry/sdk/l;->u:Ljava/util/Map;

    .line 442
    invoke-virtual {v2, v0}, Lcom/flurry/sdk/k;->b(Ljava/util/Map;)V

    .line 4831
    iget-object v0, p0, Lcom/flurry/sdk/l;->v:Ljava/util/List;

    .line 443
    invoke-virtual {v2, v0}, Lcom/flurry/sdk/k;->a(Ljava/util/List;)V

    .line 444
    iget-boolean v0, p0, Lcom/flurry/sdk/l;->w:Z

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/k;->a(Z)V

    .line 4839
    iget-object v0, p0, Lcom/flurry/sdk/l;->y:Ljava/util/List;

    .line 446
    invoke-virtual {v2, v0}, Lcom/flurry/sdk/k;->b(Ljava/util/List;)V

    .line 447
    iget v0, p0, Lcom/flurry/sdk/l;->z:I

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/k;->d(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    const/4 v1, 0x0

    .line 454
    :try_start_1
    new-instance v0, Lcom/flurry/sdk/j;

    invoke-direct {v0, v2}, Lcom/flurry/sdk/j;-><init>(Lcom/flurry/sdk/k;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 459
    :goto_2
    if-nez v0, :cond_0

    .line 460
    :try_start_2
    sget-object v1, Lcom/flurry/sdk/l;->f:Ljava/lang/String;

    const-string v2, "New session report wasn\'t created"

    invoke-static {v1, v2}, Lcom/flurry/sdk/am;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 463
    :cond_0
    monitor-exit p0

    return-object v0

    .line 2157
    :cond_1
    :try_start_3
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ge v1, v0, :cond_2

    .line 2158
    const/4 v0, 0x1

    goto :goto_0

    .line 2160
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 2815
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/l;->o:Ljava/lang/String;

    goto :goto_1

    .line 455
    :catch_0
    move-exception v0

    .line 456
    const/4 v2, 0x5

    sget-object v3, Lcom/flurry/sdk/l;->f:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error creating analytics session report: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    goto :goto_2

    .line 423
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()V
    .locals 1

    .prologue
    .line 467
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/flurry/sdk/l;->A:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/l;->A:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    monitor-exit p0

    return-void

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()V
    .locals 3

    .prologue
    .line 731
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/l;->f:Ljava/lang/String;

    const-string v2, "Saving persistent agent data."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 733
    iget-object v0, p0, Lcom/flurry/sdk/l;->k:Lcom/flurry/sdk/af;

    iget-object v1, p0, Lcom/flurry/sdk/l;->r:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/af;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 734
    monitor-exit p0

    return-void

    .line 731
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
