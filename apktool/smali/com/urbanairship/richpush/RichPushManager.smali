.class public final Lcom/urbanairship/richpush/RichPushManager;
.super Lcom/urbanairship/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/richpush/RichPushManager$UpdateResultReceiver;,
        Lcom/urbanairship/richpush/RichPushManager$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/urbanairship/richpush/e;

.field private final b:Lcom/urbanairship/richpush/b;

.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/urbanairship/l;)V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lcom/urbanairship/richpush/e;

    invoke-direct {v0, p2}, Lcom/urbanairship/richpush/e;-><init>(Lcom/urbanairship/l;)V

    new-instance v1, Lcom/urbanairship/richpush/b;

    invoke-direct {v1, p1}, Lcom/urbanairship/richpush/b;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Lcom/urbanairship/richpush/RichPushManager;-><init>(Lcom/urbanairship/richpush/e;Lcom/urbanairship/richpush/b;)V

    .line 82
    return-void
.end method

.method private constructor <init>(Lcom/urbanairship/richpush/e;Lcom/urbanairship/richpush/b;)V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/urbanairship/d;-><init>()V

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->d:Ljava/util/List;

    .line 91
    iput-object p1, p0, Lcom/urbanairship/richpush/RichPushManager;->a:Lcom/urbanairship/richpush/e;

    .line 92
    iput-object p2, p0, Lcom/urbanairship/richpush/RichPushManager;->b:Lcom/urbanairship/richpush/b;

    .line 93
    return-void
.end method

.method static synthetic a(Lcom/urbanairship/richpush/RichPushManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic a(Lcom/urbanairship/richpush/RichPushManager;Z)V
    .locals 2

    .prologue
    .line 54
    .line 2362
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushManager;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method

.method private a(ZLcom/urbanairship/richpush/RichPushManager$a;)V
    .locals 4

    .prologue
    .line 253
    .line 2138
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 253
    :goto_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 283
    :goto_1
    return-void

    .line 2138
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 260
    new-instance v1, Lcom/urbanairship/richpush/RichPushManager$2;

    invoke-direct {v1, p0, v0, p2}, Lcom/urbanairship/richpush/RichPushManager$2;-><init>(Lcom/urbanairship/richpush/RichPushManager;ILcom/urbanairship/richpush/RichPushManager$a;)V

    .line 277
    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v0

    .line 278
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/urbanairship/richpush/RichPushUpdateService;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.urbanairship.richpush.MESSAGES_UPDATE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.urbanairship.richpush.RESULT_RECEIVER"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    .line 282
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1
.end method

.method static synthetic b(Lcom/urbanairship/richpush/RichPushManager;Z)V
    .locals 2

    .prologue
    .line 54
    .line 3347
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushManager;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method

.method private e()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushManager;->d:Ljava/util/List;

    monitor-enter v1

    .line 337
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/urbanairship/richpush/RichPushManager;->d:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->b:Lcom/urbanairship/richpush/b;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/b;->a()V

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/urbanairship/richpush/RichPushManager;->a(Z)V

    .line 101
    new-instance v0, Lcom/urbanairship/richpush/RichPushManager$1;

    invoke-direct {v0, p0}, Lcom/urbanairship/richpush/RichPushManager$1;-><init>(Lcom/urbanairship/richpush/RichPushManager;)V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->e:Landroid/content/BroadcastReceiver;

    .line 114
    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 116
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 117
    const-string v2, "com.urbanairship.analytics.APP_FOREGROUND"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string v2, "com.urbanairship.analytics.APP_BACKGROUND"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lcom/urbanairship/richpush/RichPushManager;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 121
    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/urbanairship/richpush/RichPushManager;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    return-void
.end method

.method public final a(Lcom/urbanairship/richpush/RichPushManager$a;)V
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/urbanairship/richpush/RichPushManager;->a(ZLcom/urbanairship/richpush/RichPushManager$a;)V

    .line 236
    return-void
.end method

.method public final a(Z)V
    .locals 4

    .prologue
    .line 312
    new-instance v0, Lcom/urbanairship/richpush/RichPushManager$3;

    invoke-direct {v0, p0}, Lcom/urbanairship/richpush/RichPushManager$3;-><init>(Lcom/urbanairship/richpush/RichPushManager;)V

    .line 320
    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v1

    .line 321
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/urbanairship/richpush/RichPushUpdateService;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.urbanairship.richpush.USER_UPDATE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.urbanairship.richpush.RESULT_RECEIVER"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.urbanairship.richpush.EXTRA_FORCEFULLY"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 326
    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 327
    return-void
.end method

.method public final declared-synchronized b()Lcom/urbanairship/richpush/e;
    .locals 1

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->a:Lcom/urbanairship/richpush/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Lcom/urbanairship/richpush/b;
    .locals 1

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->b:Lcom/urbanairship/richpush/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 207
    .line 1219
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/urbanairship/richpush/RichPushManager;->a(ZLcom/urbanairship/richpush/RichPushManager$a;)V

    .line 208
    return-void
.end method
