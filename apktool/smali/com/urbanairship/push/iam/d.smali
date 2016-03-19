.class public final Lcom/urbanairship/push/iam/d;
.super Lcom/urbanairship/d;
.source "SourceFile"


# static fields
.field private static a:Lcom/urbanairship/i;

.field private static b:Lcom/urbanairship/e;

.field private static c:I

.field private static d:Z


# instance fields
.field private final e:Lcom/urbanairship/l;

.field private final f:Landroid/os/Handler;

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/urbanairship/push/iam/b;

.field private i:Z

.field private j:Z

.field private k:Lcom/urbanairship/push/iam/InAppMessage;

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/lang/Object;

.field private n:Lcom/urbanairship/push/iam/c;

.field private o:J

.field private final p:Ljava/lang/Runnable;

.field private final q:Lcom/urbanairship/push/iam/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 108
    sput v0, Lcom/urbanairship/push/iam/d;->c:I

    .line 109
    sput-boolean v0, Lcom/urbanairship/push/iam/d;->d:Z

    return-void
.end method

.method public constructor <init>(Lcom/urbanairship/l;)V
    .locals 2

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/urbanairship/d;-><init>()V

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/iam/d;->l:Ljava/util/List;

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/iam/d;->m:Ljava/lang/Object;

    .line 126
    new-instance v0, Lcom/urbanairship/push/iam/d$1;

    invoke-direct {v0, p0}, Lcom/urbanairship/push/iam/d$1;-><init>(Lcom/urbanairship/push/iam/d;)V

    iput-object v0, p0, Lcom/urbanairship/push/iam/d;->p:Ljava/lang/Runnable;

    .line 583
    new-instance v0, Lcom/urbanairship/push/iam/d$4;

    invoke-direct {v0, p0}, Lcom/urbanairship/push/iam/d$4;-><init>(Lcom/urbanairship/push/iam/d;)V

    iput-object v0, p0, Lcom/urbanairship/push/iam/d;->q:Lcom/urbanairship/push/iam/b$a;

    .line 147
    iput-object p1, p0, Lcom/urbanairship/push/iam/d;->e:Lcom/urbanairship/l;

    .line 148
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/urbanairship/push/iam/d;->o:J

    .line 149
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/urbanairship/push/iam/d;->f:Landroid/os/Handler;

    .line 1215
    iget-boolean v0, p0, Lcom/urbanairship/push/iam/d;->j:Z

    .line 150
    iput-boolean v0, p0, Lcom/urbanairship/push/iam/d;->i:Z

    .line 152
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 153
    new-instance v0, Lcom/urbanairship/push/iam/d$2;

    invoke-direct {v0, p0}, Lcom/urbanairship/push/iam/d$2;-><init>(Lcom/urbanairship/push/iam/d;)V

    iput-object v0, p0, Lcom/urbanairship/push/iam/d;->n:Lcom/urbanairship/push/iam/c;

    .line 160
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/urbanairship/e;)Lcom/urbanairship/e;
    .locals 0

    .prologue
    .line 60
    sput-object p0, Lcom/urbanairship/push/iam/d;->b:Lcom/urbanairship/e;

    return-object p0
.end method

.method static synthetic a(Lcom/urbanairship/push/iam/d;Lcom/urbanairship/push/iam/b;)Lcom/urbanairship/push/iam/b;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/urbanairship/push/iam/d;->h:Lcom/urbanairship/push/iam/b;

    return-object p1
.end method

.method public static a(Landroid/app/Application;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 655
    sget-object v0, Lcom/urbanairship/push/iam/d;->a:Lcom/urbanairship/i;

    if-nez v0, :cond_0

    .line 656
    new-instance v0, Lcom/urbanairship/push/iam/d$5;

    invoke-direct {v0, p0}, Lcom/urbanairship/push/iam/d$5;-><init>(Landroid/app/Application;)V

    .line 718
    sput-object v0, Lcom/urbanairship/push/iam/d;->a:Lcom/urbanairship/i;

    invoke-virtual {v0}, Lcom/urbanairship/i;->a()V

    .line 720
    :cond_0
    return-void
.end method

.method private a(Landroid/app/Activity;III)Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 378
    iget-object v1, p0, Lcom/urbanairship/push/iam/d;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 379
    :try_start_0
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/d;->d()Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v2

    .line 381
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/urbanairship/push/iam/InAppMessage;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 383
    invoke-static {v2}, Lcom/urbanairship/push/iam/e;->b(Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/push/iam/e;

    move-result-object v2

    .line 384
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/p;->q()Lcom/urbanairship/analytics/c;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/urbanairship/analytics/c;->a(Lcom/urbanairship/analytics/h;)V

    .line 385
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/urbanairship/push/iam/d;->a(Lcom/urbanairship/push/iam/InAppMessage;)V

    .line 386
    monitor-exit v1

    .line 469
    :cond_0
    :goto_0
    return v0

    .line 388
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    if-eqz p1, :cond_0

    if-eqz v2, :cond_0

    .line 395
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v1, v3, :cond_2

    .line 396
    const-string v1, "InAppMessageManager - Unable to show in-app messages on Android versions older than API 14 (Ice Cream Sandwich)."

    invoke-static {v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 388
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 400
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 401
    const-string v1, "InAppMessageManager - Unable to display in-app messages for an activity that is finishing."

    invoke-static {v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 405
    :cond_3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v1, v3, :cond_4

    .line 406
    const-string v1, "InAppMessageManager - Show message must be called on the main thread."

    invoke-static {v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 410
    :cond_4
    iget-object v1, p0, Lcom/urbanairship/push/iam/d;->h:Lcom/urbanairship/push/iam/b;

    if-nez v1, :cond_0

    .line 416
    invoke-virtual {v2}, Lcom/urbanairship/push/iam/InAppMessage;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/urbanairship/push/iam/d;->e:Lcom/urbanairship/l;

    const-string v4, "com.urbanairship.push.iam.LAST_DISPLAYED_ID"

    invoke-virtual {v3, v4}, Lcom/urbanairship/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "InAppMessageManager - Displaying pending message: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " for first time."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    new-instance v1, Lcom/urbanairship/push/iam/a;

    invoke-direct {v1, v2}, Lcom/urbanairship/push/iam/a;-><init>(Lcom/urbanairship/push/iam/InAppMessage;)V

    .line 419
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/p;->q()Lcom/urbanairship/analytics/c;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/urbanairship/analytics/c;->a(Lcom/urbanairship/analytics/h;)V

    .line 420
    iget-object v1, p0, Lcom/urbanairship/push/iam/d;->e:Lcom/urbanairship/l;

    const-string v3, "com.urbanairship.push.iam.LAST_DISPLAYED_ID"

    invoke-virtual {v2}, Lcom/urbanairship/push/iam/InAppMessage;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/urbanairship/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :cond_5
    iget-object v1, p0, Lcom/urbanairship/push/iam/d;->k:Lcom/urbanairship/push/iam/InAppMessage;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/urbanairship/push/iam/d;->k:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-virtual {v1, v2}, Lcom/urbanairship/push/iam/InAppMessage;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 425
    iget-object v1, p0, Lcom/urbanairship/push/iam/d;->k:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-static {v1, v2}, Lcom/urbanairship/push/iam/e;->a(Lcom/urbanairship/push/iam/InAppMessage;Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/push/iam/e;

    move-result-object v1

    .line 426
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/p;->q()Lcom/urbanairship/analytics/c;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/urbanairship/analytics/c;->a(Lcom/urbanairship/analytics/h;)V

    .line 2514
    :cond_6
    :try_start_2
    iget-object v1, p0, Lcom/urbanairship/push/iam/d;->n:Lcom/urbanairship/push/iam/c;

    .line 433
    if-nez v1, :cond_7

    .line 434
    const-string v1, "InAppMessageManager - InAppMessageFragmentFactory is null, unable to display an in-app message."

    invoke-static {v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 469
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 438
    :cond_7
    invoke-virtual {v1}, Lcom/urbanairship/push/iam/c;->a()Lcom/urbanairship/push/iam/b;

    move-result-object v1

    iput-object v1, p0, Lcom/urbanairship/push/iam/d;->h:Lcom/urbanairship/push/iam/b;

    .line 439
    iget-object v1, p0, Lcom/urbanairship/push/iam/d;->h:Lcom/urbanairship/push/iam/b;

    if-nez v1, :cond_8

    .line 440
    const-string v1, "InAppMessageManager - InAppMessageFragmentFactory returned a null fragment, unable to display an in-app message."

    invoke-static {v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 444
    :cond_8
    invoke-static {v2, p4}, Lcom/urbanairship/push/iam/b;->a(Lcom/urbanairship/push/iam/InAppMessage;I)Landroid/os/Bundle;

    move-result-object v1

    .line 445
    iget-object v3, p0, Lcom/urbanairship/push/iam/d;->h:Lcom/urbanairship/push/iam/b;

    invoke-virtual {v3}, Lcom/urbanairship/push/iam/b;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 446
    iget-object v3, p0, Lcom/urbanairship/push/iam/d;->h:Lcom/urbanairship/push/iam/b;

    invoke-virtual {v3}, Lcom/urbanairship/push/iam/b;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 449
    :cond_9
    iget-object v3, p0, Lcom/urbanairship/push/iam/d;->h:Lcom/urbanairship/push/iam/b;

    invoke-virtual {v3, v1}, Lcom/urbanairship/push/iam/b;->setArguments(Landroid/os/Bundle;)V

    .line 451
    iget-object v1, p0, Lcom/urbanairship/push/iam/d;->h:Lcom/urbanairship/push/iam/b;

    iget-object v3, p0, Lcom/urbanairship/push/iam/d;->q:Lcom/urbanairship/push/iam/b$a;

    invoke-virtual {v1, v3}, Lcom/urbanairship/push/iam/b;->a(Lcom/urbanairship/push/iam/b$a;)V

    .line 452
    iget-object v1, p0, Lcom/urbanairship/push/iam/d;->h:Lcom/urbanairship/push/iam/b;

    invoke-virtual {v1}, Lcom/urbanairship/push/iam/b;->c()V

    .line 453
    iput-object v2, p0, Lcom/urbanairship/push/iam/d;->k:Lcom/urbanairship/push/iam/InAppMessage;

    .line 455
    iget-object v2, p0, Lcom/urbanairship/push/iam/d;->l:Ljava/util/List;

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 456
    :try_start_3
    iget-object v1, p0, Lcom/urbanairship/push/iam/d;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    .line 459
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_a
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 461
    :try_start_6
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x1020002

    iget-object v3, p0, Lcom/urbanairship/push/iam/d;->h:Lcom/urbanairship/push/iam/b;

    const-string v4, "com.urbanairship.in_app_fragment"

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0

    .line 466
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/urbanairship/push/iam/d;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/urbanairship/push/iam/d;->i:Z

    return v0
.end method

.method static synthetic a(Lcom/urbanairship/push/iam/d;Z)Z
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/urbanairship/push/iam/d;->i:Z

    return p1
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 60
    sput-boolean p0, Lcom/urbanairship/push/iam/d;->d:Z

    return p0
.end method

.method static synthetic b(Lcom/urbanairship/push/iam/d;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/urbanairship/push/iam/d;->l()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/urbanairship/push/iam/d;)Ljava/util/List;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/urbanairship/push/iam/d;->l:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/urbanairship/push/iam/d;)Lcom/urbanairship/push/iam/b;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/urbanairship/push/iam/d;->h:Lcom/urbanairship/push/iam/b;

    return-object v0
.end method

.method static synthetic e(Lcom/urbanairship/push/iam/d;)Lcom/urbanairship/push/iam/InAppMessage;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/urbanairship/push/iam/d;->k:Lcom/urbanairship/push/iam/InAppMessage;

    return-object v0
.end method

.method static synthetic f(Lcom/urbanairship/push/iam/d;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/urbanairship/push/iam/d;->m:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic g()I
    .locals 2

    .prologue
    .line 60
    sget v0, Lcom/urbanairship/push/iam/d;->c:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/urbanairship/push/iam/d;->c:I

    return v0
.end method

.method static synthetic g(Lcom/urbanairship/push/iam/d;)Lcom/urbanairship/push/iam/InAppMessage;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/urbanairship/push/iam/d;->k:Lcom/urbanairship/push/iam/InAppMessage;

    return-object v0
.end method

.method static synthetic h(Lcom/urbanairship/push/iam/d;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/urbanairship/push/iam/d;->p:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic h()Z
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/urbanairship/push/iam/d;->d:Z

    return v0
.end method

.method static synthetic i()I
    .locals 2

    .prologue
    .line 60
    sget v0, Lcom/urbanairship/push/iam/d;->c:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/urbanairship/push/iam/d;->c:I

    return v0
.end method

.method static synthetic i(Lcom/urbanairship/push/iam/d;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/urbanairship/push/iam/d;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic j()I
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/urbanairship/push/iam/d;->c:I

    return v0
.end method

.method static synthetic j(Lcom/urbanairship/push/iam/d;)J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/urbanairship/push/iam/d;->o:J

    return-wide v0
.end method

.method static synthetic k()Lcom/urbanairship/e;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/urbanairship/push/iam/d;->b:Lcom/urbanairship/e;

    return-object v0
.end method

.method private l()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/urbanairship/push/iam/d;->g:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/iam/d;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/d;->d()Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/urbanairship/push/iam/InAppMessage;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    invoke-static {v0}, Lcom/urbanairship/push/iam/e;->b(Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/push/iam/e;

    move-result-object v0

    .line 168
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/p;->q()Lcom/urbanairship/analytics/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/analytics/c;->a(Lcom/urbanairship/analytics/h;)V

    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/iam/d;->a(Lcom/urbanairship/push/iam/InAppMessage;)V

    .line 171
    :cond_0
    return-void
.end method

.method public final a(Lcom/urbanairship/push/iam/InAppMessage;)V
    .locals 4

    .prologue
    .line 243
    iget-object v1, p0, Lcom/urbanairship/push/iam/d;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 244
    if-nez p1, :cond_1

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/push/iam/d;->e:Lcom/urbanairship/l;

    const-string v2, "com.urbanairship.push.iam.PENDING_IN_APP_MESSAGE"

    invoke-virtual {v0, v2}, Lcom/urbanairship/l;->c(Ljava/lang/String;)V

    .line 278
    :cond_0
    :goto_0
    monitor-exit v1

    :goto_1
    return-void

    .line 247
    :cond_1
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/d;->d()Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v0

    .line 248
    invoke-virtual {p1, v0}, Lcom/urbanairship/push/iam/InAppMessage;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 249
    monitor-exit v1

    goto :goto_1

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 253
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/urbanairship/push/iam/d;->f:Landroid/os/Handler;

    new-instance v3, Lcom/urbanairship/push/iam/d$3;

    invoke-direct {v3, p0, p1}, Lcom/urbanairship/push/iam/d$3;-><init>(Lcom/urbanairship/push/iam/d;Lcom/urbanairship/push/iam/InAppMessage;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 264
    iget-object v2, p0, Lcom/urbanairship/push/iam/d;->e:Lcom/urbanairship/l;

    const-string v3, "com.urbanairship.push.iam.PENDING_IN_APP_MESSAGE"

    invoke-virtual {v2, v3, p1}, Lcom/urbanairship/l;->a(Ljava/lang/String;Lcom/urbanairship/json/d;)V

    .line 266
    iget-object v2, p0, Lcom/urbanairship/push/iam/d;->k:Lcom/urbanairship/push/iam/InAppMessage;

    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    .line 268
    invoke-static {v0, p1}, Lcom/urbanairship/push/iam/e;->a(Lcom/urbanairship/push/iam/InAppMessage;Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/push/iam/e;

    move-result-object v0

    .line 269
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/p;->q()Lcom/urbanairship/analytics/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/urbanairship/analytics/c;->a(Lcom/urbanairship/analytics/h;)V

    .line 2215
    :cond_3
    iget-boolean v0, p0, Lcom/urbanairship/push/iam/d;->j:Z

    .line 272
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/urbanairship/push/iam/d;->l()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/push/iam/d;->i:Z

    .line 274
    iget-object v0, p0, Lcom/urbanairship/push/iam/d;->f:Landroid/os/Handler;

    iget-object v2, p0, Lcom/urbanairship/push/iam/d;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 275
    iget-object v0, p0, Lcom/urbanairship/push/iam/d;->f:Landroid/os/Handler;

    iget-object v2, p0, Lcom/urbanairship/push/iam/d;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;)Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 337
    iget-object v2, p0, Lcom/urbanairship/push/iam/d;->m:Ljava/lang/Object;

    monitor-enter v2

    .line 338
    :try_start_0
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/d;->d()Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v0

    .line 341
    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 342
    :cond_0
    const/4 v0, 0x0

    monitor-exit v2

    .line 354
    :goto_0
    return v0

    .line 346
    :cond_1
    invoke-virtual {v0}, Lcom/urbanairship/push/iam/InAppMessage;->i()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 347
    sget v1, Lcom/urbanairship/R$animator;->ua_iam_slide_in_top:I

    .line 348
    sget v0, Lcom/urbanairship/R$animator;->ua_iam_slide_out_top:I

    .line 354
    :goto_1
    const v3, 0x1020002

    invoke-direct {p0, p1, v3, v1, v0}, Lcom/urbanairship/push/iam/d;->a(Landroid/app/Activity;III)Z

    move-result v0

    monitor-exit v2

    goto :goto_0

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 350
    :cond_2
    :try_start_1
    sget v1, Lcom/urbanairship/R$animator;->ua_iam_slide_in_bottom:I

    .line 351
    sget v0, Lcom/urbanairship/R$animator;->ua_iam_slide_out_bottom:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method final b(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InAppMessageManager - Activity paused: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 557
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/urbanairship/push/iam/d;->g:Ljava/lang/ref/WeakReference;

    .line 558
    iget-object v0, p0, Lcom/urbanairship/push/iam/d;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/urbanairship/push/iam/d;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 559
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/urbanairship/push/iam/d;->j:Z

    return v0
.end method

.method final c(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InAppMessageManager - Activity resumed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 569
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/d/d;->b(Ljava/lang/Class;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 570
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.urbanairship.push.iam.EXCLUDE_FROM_AUTO_SHOW"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/urbanairship/push/iam/d;->g:Ljava/lang/ref/WeakReference;

    .line 576
    iget-object v0, p0, Lcom/urbanairship/push/iam/d;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/urbanairship/push/iam/d;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 578
    iget-boolean v0, p0, Lcom/urbanairship/push/iam/d;->i:Z

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/urbanairship/push/iam/d;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/urbanairship/push/iam/d;->p:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/urbanairship/push/iam/d;->o:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final c()Z
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/urbanairship/push/iam/d;->e:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.push.iam.AUTO_DISPLAY_ENABLED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/l;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final d()Lcom/urbanairship/push/iam/InAppMessage;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 288
    iget-object v1, p0, Lcom/urbanairship/push/iam/d;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 289
    :try_start_0
    iget-object v2, p0, Lcom/urbanairship/push/iam/d;->e:Lcom/urbanairship/l;

    const-string v3, "com.urbanairship.push.iam.PENDING_IN_APP_MESSAGE"

    invoke-virtual {v2, v3}, Lcom/urbanairship/l;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 290
    if-eqz v2, :cond_0

    .line 292
    :try_start_1
    invoke-static {v2}, Lcom/urbanairship/push/iam/InAppMessage;->b(Ljava/lang/String;)Lcom/urbanairship/push/iam/InAppMessage;
    :try_end_1
    .catch Lcom/urbanairship/json/a; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    monitor-exit v1

    .line 299
    :goto_0
    return-object v0

    .line 293
    :catch_0
    move-exception v3

    .line 294
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "InAppMessageManager - Failed to read pending in-app message: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 295
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/urbanairship/push/iam/d;->a(Lcom/urbanairship/push/iam/InAppMessage;)V

    .line 299
    :cond_0
    monitor-exit v1

    goto :goto_0

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final e()Lcom/urbanairship/push/iam/InAppMessage;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/urbanairship/push/iam/d;->k:Lcom/urbanairship/push/iam/InAppMessage;

    return-object v0
.end method

.method final f()V
    .locals 4

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/d;->d()Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v0

    .line 535
    iget-object v1, p0, Lcom/urbanairship/push/iam/d;->k:Lcom/urbanairship/push/iam/InAppMessage;

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/urbanairship/push/iam/d;->k:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/iam/InAppMessage;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 537
    :cond_1
    iget-object v1, p0, Lcom/urbanairship/push/iam/d;->k:Lcom/urbanairship/push/iam/InAppMessage;

    if-eqz v1, :cond_2

    .line 539
    iget-object v1, p0, Lcom/urbanairship/push/iam/d;->k:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-static {v1, v0}, Lcom/urbanairship/push/iam/e;->a(Lcom/urbanairship/push/iam/InAppMessage;Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/push/iam/e;

    move-result-object v0

    .line 540
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/p;->q()Lcom/urbanairship/analytics/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/analytics/c;->a(Lcom/urbanairship/analytics/h;)V

    .line 543
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/urbanairship/push/iam/d;->k:Lcom/urbanairship/push/iam/InAppMessage;

    .line 544
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/push/iam/d;->i:Z

    .line 545
    iget-object v0, p0, Lcom/urbanairship/push/iam/d;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/urbanairship/push/iam/d;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 546
    iget-object v0, p0, Lcom/urbanairship/push/iam/d;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/urbanairship/push/iam/d;->p:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/urbanairship/push/iam/d;->o:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 548
    :cond_3
    return-void
.end method
