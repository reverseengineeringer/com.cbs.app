.class public final Lcom/comscore/a/b;
.super Ljava/lang/Object;


# instance fields
.field protected A:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected B:J

.field protected C:J

.field protected D:J

.field protected E:J

.field protected F:J

.field protected G:J

.field protected H:J

.field protected I:J

.field protected J:J

.field protected K:Lcom/comscore/a/d;

.field protected L:J

.field protected M:J

.field protected N:J

.field protected O:I

.field protected P:I

.field protected Q:I

.field protected R:J

.field protected S:J

.field protected T:J

.field protected U:I

.field protected V:J

.field protected W:J

.field protected X:Ljava/lang/Runnable;

.field protected Y:Ljava/lang/String;

.field Z:Ljava/lang/String;

.field a:Lcom/comscore/utils/i;

.field aa:Landroid/content/Context;

.field protected final ab:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final ac:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field ad:Z

.field protected ae:J

.field protected af:Z

.field protected ag:Ljava/lang/Thread$UncaughtExceptionHandler;

.field ah:Z

.field ai:Lcom/comscore/utils/m;

.field aj:Lcom/comscore/utils/m;

.field ak:[Ljava/lang/String;

.field private al:Lcom/comscore/utils/a/b;

.field private am:Z

.field private an:Z

.field b:Lcom/comscore/utils/l;

.field c:Lcom/comscore/b/e;

.field d:Lcom/comscore/utils/c;

.field e:Lcom/comscore/utils/g;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field f:Lcom/comscore/utils/b/a;

.field g:Lcom/comscore/c/c;

.field h:Lcom/comscore/utils/ConnectivityChangeReceiver;

.field protected i:Ljava/lang/Runnable;

.field protected j:Ljava/lang/Runnable;

.field protected k:J

.field protected l:Z

.field protected m:Z

.field n:Z

.field o:Ljava/util/concurrent/atomic/AtomicInteger;

.field p:J

.field q:Ljava/util/concurrent/atomic/AtomicInteger;

.field r:J

.field s:J

.field t:Ljava/lang/String;

.field u:Ljava/lang/String;

.field v:Z

.field w:Ljava/lang/String;

.field protected x:Lcom/comscore/a/a;

.field protected y:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected z:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/comscore/a/b;->l:Z

    iput-boolean v3, p0, Lcom/comscore/a/b;->m:Z

    iput-boolean v2, p0, Lcom/comscore/a/b;->n:Z

    iput-boolean v3, p0, Lcom/comscore/a/b;->v:Z

    sget-object v0, Lcom/comscore/a/a;->a:Lcom/comscore/a/a;

    iput-object v0, p0, Lcom/comscore/a/b;->x:Lcom/comscore/a/a;

    sget-object v0, Lcom/comscore/a/d;->a:Lcom/comscore/a/d;

    iput-object v0, p0, Lcom/comscore/a/b;->K:Lcom/comscore/a/d;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/comscore/a/b;->ae:J

    iput-boolean v2, p0, Lcom/comscore/a/b;->af:Z

    iput-boolean v3, p0, Lcom/comscore/a/b;->am:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/comscore/a/b;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/comscore/a/b;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/comscore/a/b;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/comscore/a/b;->y:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/comscore/a/b;->z:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/a/b;->ag:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-boolean v3, p0, Lcom/comscore/a/b;->ad:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/comscore/a/b;->ab:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/comscore/a/b;->ac:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/comscore/a/b;->a()V

    return-void
.end method

.method private W()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/comscore/a/b;->aa:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v0, "0"

    :try_start_0
    iget-object v2, p0, Lcom/comscore/a/b;->aa:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private X()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 0
    iget-boolean v1, p0, Lcom/comscore/a/b;->am:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    .line 26000
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 0
    iget-wide v4, p0, Lcom/comscore/a/b;->R:J

    sub-long v4, v2, v4

    const-wide/32 v6, 0x1b7740

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    iget-wide v0, p0, Lcom/comscore/a/b;->H:J

    iput-wide v0, p0, Lcom/comscore/a/b;->I:J

    iput-wide v2, p0, Lcom/comscore/a/b;->H:J

    iget v0, p0, Lcom/comscore/a/b;->O:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/comscore/a/b;->O:I

    const/4 v0, 0x1

    :cond_1
    iput-wide v2, p0, Lcom/comscore/a/b;->R:J

    goto :goto_0
.end method

.method private Y()V
    .locals 7

    iget-boolean v0, p0, Lcom/comscore/a/b;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/comscore/a/b;->Z()V

    iget-wide v0, p0, Lcom/comscore/a/b;->k:J

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    new-instance v0, Lcom/comscore/a/t;

    invoke-direct {v0, p0}, Lcom/comscore/a/t;-><init>(Lcom/comscore/a/b;)V

    iput-object v0, p0, Lcom/comscore/a/b;->i:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/comscore/a/b;->f:Lcom/comscore/utils/b/a;

    iget-object v1, p0, Lcom/comscore/a/b;->i:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/comscore/a/b;->k:J

    const/4 v4, 0x1

    iget-wide v5, p0, Lcom/comscore/a/b;->k:J

    invoke-virtual/range {v0 .. v6}, Lcom/comscore/utils/b/a;->a(Ljava/lang/Runnable;JZJ)Z

    goto :goto_0
.end method

.method private Z()V
    .locals 2

    iget-boolean v0, p0, Lcom/comscore/a/b;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/comscore/a/b;->i:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/a/b;->f:Lcom/comscore/utils/b/a;

    iget-object v1, p0, Lcom/comscore/a/b;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/comscore/utils/b/a;->b(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/a/b;->i:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    .locals 2

    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    invoke-virtual {v1, p1, v0}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    invoke-virtual {v0, p1}, Lcom/comscore/utils/l;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    invoke-virtual {v0, p1}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/comscore/a/b;Lcom/comscore/utils/m;)V
    .locals 1

    .prologue
    .line 0
    .line 34000
    iget-boolean v0, p0, Lcom/comscore/a/b;->am:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/comscore/a/b;->aj:Lcom/comscore/utils/m;

    .line 0
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/comscore/a/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/comscore/a/b;->e(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v0}, Lcom/comscore/a/b;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    invoke-virtual {v2, p1}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    invoke-virtual {v3, v0}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/comscore/utils/n;->f(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Lcom/comscore/utils/n;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    invoke-virtual {v3, v0, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    invoke-virtual {v0, p1}, Lcom/comscore/utils/l;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/comscore/a/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/comscore/a/b;->am:Z

    return v0
.end method

.method static synthetic a(Lcom/comscore/a/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/comscore/a/b;->am:Z

    return p1
.end method

.method static synthetic b(Lcom/comscore/a/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/comscore/a/b;->f(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/comscore/a/b;->am:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/comscore/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/comscore/a/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/comscore/a/b;->an:Z

    return v0
.end method

.method static synthetic b(Lcom/comscore/a/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/comscore/a/b;->an:Z

    return p1
.end method

.method static synthetic c(Lcom/comscore/a/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/comscore/a/b;->g(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/comscore/a/b;->am:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/comscore/a/b;->ab:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 9

    const/16 v3, 0x3f

    const/4 v8, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/comscore/a/b;->am:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_4

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_3

    aget-object v5, v3, v0

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    aget-object v6, v5, v1

    aget-object v5, v5, v8

    invoke-direct {p0, v6, v5}, Lcom/comscore/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    array-length v6, v5

    if-ne v6, v8, :cond_1

    const-string v6, "name"

    aget-object v5, v5, v1

    invoke-direct {p0, v6, v5}, Lcom/comscore/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_4
    :goto_3
    iput-object p1, p0, Lcom/comscore/a/b;->Y:Ljava/lang/String;

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3
.end method

.method private e(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/comscore/a/b;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/comscore/a/b;->al:Lcom/comscore/utils/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/a/b;->al:Lcom/comscore/utils/a/b;

    invoke-virtual {v0, p1}, Lcom/comscore/utils/a/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/a/b;->al:Lcom/comscore/utils/a/b;

    invoke-virtual {v0}, Lcom/comscore/utils/a/b;->f()V

    goto :goto_0
.end method

.method private f(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/comscore/a/b;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/comscore/a/b;->Z:Ljava/lang/String;

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "appName"

    iget-object v2, p0, Lcom/comscore/a/b;->Z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private g(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 0
    iget-boolean v0, p0, Lcom/comscore/a/b;->am:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    .line 30000
    :cond_0
    iget-boolean v0, p0, Lcom/comscore/a/b;->ah:Z

    .line 0
    if-eqz v0, :cond_1

    const-string v0, "https://sb.scorecardresearch.com/p2?"

    :goto_1
    invoke-direct {p0, v0}, Lcom/comscore/a/b;->d(Ljava/lang/String;)V

    const-string v0, "c2"

    invoke-direct {p0, v0, p1}, Lcom/comscore/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "http://b.scorecardresearch.com/p2?"

    goto :goto_1
.end method

.method private r(Z)V
    .locals 6

    .prologue
    .line 0
    iget-boolean v0, p0, Lcom/comscore/a/b;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    .line 27000
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 0
    iget-wide v2, p0, Lcom/comscore/a/b;->J:J

    sub-long v2, v0, v2

    sget-object v4, Lcom/comscore/a/f;->a:[I

    iget-object v5, p0, Lcom/comscore/a/b;->x:Lcom/comscore/a/a;

    invoke-virtual {v5}, Lcom/comscore/a/a;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :goto_1
    iput-wide v0, p0, Lcom/comscore/a/b;->J:J

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "lastApplicationAccumulationTimestamp"

    iget-wide v2, p0, Lcom/comscore/a/b;->J:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "foregroundTransitionsCount"

    iget-object v2, p0, Lcom/comscore/a/b;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "accumulatedForegroundTime"

    iget-wide v2, p0, Lcom/comscore/a/b;->F:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "accumulatedBackgroundTime"

    iget-wide v2, p0, Lcom/comscore/a/b;->E:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "accumulatedInactiveTime"

    iget-wide v2, p0, Lcom/comscore/a/b;->G:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "totalForegroundTime"

    iget-wide v2, p0, Lcom/comscore/a/b;->B:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "totalBackgroundTime"

    iget-wide v2, p0, Lcom/comscore/a/b;->C:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "totalInactiveTime"

    iget-wide v2, p0, Lcom/comscore/a/b;->D:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_0
    iget-wide v4, p0, Lcom/comscore/a/b;->F:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/comscore/a/b;->F:J

    iget-wide v4, p0, Lcom/comscore/a/b;->B:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/comscore/a/b;->B:J

    goto :goto_1

    :pswitch_1
    iget-wide v4, p0, Lcom/comscore/a/b;->E:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/comscore/a/b;->E:J

    iget-wide v4, p0, Lcom/comscore/a/b;->C:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/comscore/a/b;->C:J

    goto/16 :goto_1

    :pswitch_2
    iget-wide v4, p0, Lcom/comscore/a/b;->G:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/comscore/a/b;->G:J

    iget-wide v4, p0, Lcom/comscore/a/b;->D:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/comscore/a/b;->D:J

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private s(Z)V
    .locals 6

    .prologue
    .line 0
    iget-boolean v0, p0, Lcom/comscore/a/b;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    .line 28000
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 0
    iget-wide v2, p0, Lcom/comscore/a/b;->W:J

    sub-long v2, v0, v2

    sget-object v4, Lcom/comscore/a/f;->b:[I

    iget-object v5, p0, Lcom/comscore/a/b;->K:Lcom/comscore/a/d;

    invoke-virtual {v5}, Lcom/comscore/a/d;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :goto_1
    iput-wide v0, p0, Lcom/comscore/a/b;->W:J

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "lastSessionAccumulationTimestamp"

    iget-wide v2, p0, Lcom/comscore/a/b;->W:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "lastApplicationSessionTimestamp"

    iget-wide v2, p0, Lcom/comscore/a/b;->R:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "lastUserSessionTimestamp"

    iget-wide v2, p0, Lcom/comscore/a/b;->S:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "lastActiveUserSessionTimestamp"

    iget-wide v2, p0, Lcom/comscore/a/b;->T:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "accumulatedApplicationSessionTime"

    iget-wide v2, p0, Lcom/comscore/a/b;->L:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "accumulatedActiveUserSessionTime"

    iget-wide v2, p0, Lcom/comscore/a/b;->N:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "accumulatedUserSessionTime"

    iget-wide v2, p0, Lcom/comscore/a/b;->M:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "activeUserSessionCount"

    iget v2, p0, Lcom/comscore/a/b;->Q:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "userSessionCount"

    iget v2, p0, Lcom/comscore/a/b;->P:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "lastUserInteractionTimestamp"

    iget-wide v2, p0, Lcom/comscore/a/b;->V:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "userInteractionCount"

    iget v2, p0, Lcom/comscore/a/b;->U:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "previousGenesis"

    iget-wide v2, p0, Lcom/comscore/a/b;->I:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "genesis"

    iget-wide v2, p0, Lcom/comscore/a/b;->H:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "applicationSessionCountKey"

    iget v2, p0, Lcom/comscore/a/b;->O:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_0
    iget-wide v4, p0, Lcom/comscore/a/b;->N:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/comscore/a/b;->N:J

    iput-wide v0, p0, Lcom/comscore/a/b;->T:J

    :pswitch_1
    iget-wide v4, p0, Lcom/comscore/a/b;->M:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/comscore/a/b;->M:J

    iput-wide v0, p0, Lcom/comscore/a/b;->S:J

    :pswitch_2
    iget-wide v4, p0, Lcom/comscore/a/b;->L:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/comscore/a/b;->L:J

    iput-wide v0, p0, Lcom/comscore/a/b;->R:J

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final A()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/comscore/a/b;->aa:Landroid/content/Context;

    return-object v0
.end method

.method public final B()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comscore/a/b;->w:Ljava/lang/String;

    return-object v0
.end method

.method public final C()Z
    .locals 1

    iget-boolean v0, p0, Lcom/comscore/a/b;->ad:Z

    return v0
.end method

.method public final D()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comscore/a/b;->Y:Ljava/lang/String;

    return-object v0
.end method

.method public final E()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comscore/a/b;->al:Lcom/comscore/utils/a/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/comscore/a/b;->al:Lcom/comscore/utils/a/b;

    invoke-virtual {v0}, Lcom/comscore/utils/a/b;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final F()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comscore/a/b;->al:Lcom/comscore/utils/a/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/comscore/a/b;->al:Lcom/comscore/utils/a/b;

    invoke-virtual {v0}, Lcom/comscore/utils/a/b;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final G()Lcom/comscore/utils/a/b;
    .locals 1

    iget-object v0, p0, Lcom/comscore/a/b;->al:Lcom/comscore/utils/a/b;

    return-object v0
.end method

.method public final H()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comscore/a/b;->al:Lcom/comscore/utils/a/b;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/comscore/a/b;->al:Lcom/comscore/utils/a/b;

    invoke-virtual {v0}, Lcom/comscore/utils/a/b;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final I()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/comscore/a/b;->Z:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/a/b;->Z:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/comscore/a/b;->aa:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/comscore/a/b;->aa:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/a/b;->aa:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/comscore/a/b;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/comscore/a/b;->Z:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "appName"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/a/b;->Z:Ljava/lang/String;

    goto :goto_0
.end method

.method public final J()J
    .locals 2

    iget-wide v0, p0, Lcom/comscore/a/b;->H:J

    return-wide v0
.end method

.method public final K()J
    .locals 2

    iget-wide v0, p0, Lcom/comscore/a/b;->I:J

    return-wide v0
.end method

.method public final L()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/comscore/a/b;->ab:Ljava/util/HashMap;

    return-object v0
.end method

.method public final M()Ljava/lang/String;
    .locals 2

    .prologue
    .line 0
    .line 29000
    iget-object v0, p0, Lcom/comscore/a/b;->ab:Ljava/util/HashMap;

    .line 0
    const-string v1, "c2"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final N()Lcom/comscore/utils/m;
    .locals 1

    iget-object v0, p0, Lcom/comscore/a/b;->ai:Lcom/comscore/utils/m;

    return-object v0
.end method

.method public final O()Lcom/comscore/utils/m;
    .locals 1

    iget-object v0, p0, Lcom/comscore/a/b;->aj:Lcom/comscore/utils/m;

    return-object v0
.end method

.method public final P()Z
    .locals 1

    iget-boolean v0, p0, Lcom/comscore/a/b;->ah:Z

    return v0
.end method

.method public final Q()J
    .locals 2

    iget-wide v0, p0, Lcom/comscore/a/b;->ae:J

    return-wide v0
.end method

.method public final R()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comscore/a/b;->ak:[Ljava/lang/String;

    return-object v0
.end method

.method public final S()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/comscore/a/b;->q(Z)V

    return-void
.end method

.method final T()Z
    .locals 1

    iget-object v0, p0, Lcom/comscore/a/b;->aa:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/a/b;->al:Lcom/comscore/utils/a/b;

    invoke-virtual {v0}, Lcom/comscore/utils/a/b;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/comscore/a/b;->Y:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/a/b;->Y:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final U()Z
    .locals 1

    iget-boolean v0, p0, Lcom/comscore/a/b;->am:Z

    return v0
.end method

.method public final V()V
    .locals 3

    iget-object v0, p0, Lcom/comscore/a/b;->f:Lcom/comscore/utils/b/a;

    new-instance v1, Lcom/comscore/a/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/comscore/a/e;-><init>(Lcom/comscore/a/b;Z)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/b/a;->a(Ljava/lang/Runnable;Z)Z

    return-void
.end method

.method public final a(Z)I
    .locals 6

    iget-object v0, p0, Lcom/comscore/a/b;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/comscore/a/b;->am:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/comscore/a/b;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v2, "foregroundTransitionsCount"

    iget-object v3, p0, Lcom/comscore/a/b;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public final a()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v2, -0x1

    .line 0
    sget-object v0, Lcom/comscore/utils/m;->a:Lcom/comscore/utils/m;

    iput-object v0, p0, Lcom/comscore/a/b;->ai:Lcom/comscore/utils/m;

    sget-object v0, Lcom/comscore/utils/m;->a:Lcom/comscore/utils/m;

    iput-object v0, p0, Lcom/comscore/a/b;->aj:Lcom/comscore/utils/m;

    iput-boolean v1, p0, Lcom/comscore/a/b;->ah:Z

    sget-object v0, Lcom/comscore/utils/e;->c:[Ljava/lang/String;

    iput-object v0, p0, Lcom/comscore/a/b;->ak:[Ljava/lang/String;

    sget-object v0, Lcom/comscore/a/a;->a:Lcom/comscore/a/a;

    iput-object v0, p0, Lcom/comscore/a/b;->x:Lcom/comscore/a/a;

    sget-object v0, Lcom/comscore/a/d;->a:Lcom/comscore/a/d;

    iput-object v0, p0, Lcom/comscore/a/b;->K:Lcom/comscore/a/d;

    iput-boolean v1, p0, Lcom/comscore/a/b;->n:Z

    iget-object v0, p0, Lcom/comscore/a/b;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iput-wide v2, p0, Lcom/comscore/a/b;->p:J

    iget-object v0, p0, Lcom/comscore/a/b;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iput-wide v2, p0, Lcom/comscore/a/b;->s:J

    iput-wide v2, p0, Lcom/comscore/a/b;->r:J

    iput-object v6, p0, Lcom/comscore/a/b;->t:Ljava/lang/String;

    iput-object v6, p0, Lcom/comscore/a/b;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/comscore/a/b;->y:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/comscore/a/b;->z:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iput-wide v4, p0, Lcom/comscore/a/b;->B:J

    iput-wide v4, p0, Lcom/comscore/a/b;->C:J

    iput-wide v4, p0, Lcom/comscore/a/b;->D:J

    iput-wide v4, p0, Lcom/comscore/a/b;->E:J

    iput-wide v4, p0, Lcom/comscore/a/b;->F:J

    iput-wide v4, p0, Lcom/comscore/a/b;->G:J

    iput-wide v4, p0, Lcom/comscore/a/b;->L:J

    iput-wide v4, p0, Lcom/comscore/a/b;->N:J

    iput-wide v4, p0, Lcom/comscore/a/b;->M:J

    iput-wide v2, p0, Lcom/comscore/a/b;->H:J

    iput-wide v4, p0, Lcom/comscore/a/b;->I:J

    iput v7, p0, Lcom/comscore/a/b;->Q:I

    iput v7, p0, Lcom/comscore/a/b;->P:I

    iput v1, p0, Lcom/comscore/a/b;->U:I

    iput-wide v2, p0, Lcom/comscore/a/b;->V:J

    iput-wide v2, p0, Lcom/comscore/a/b;->J:J

    iput-wide v2, p0, Lcom/comscore/a/b;->W:J

    iput-wide v2, p0, Lcom/comscore/a/b;->R:J

    iput-wide v2, p0, Lcom/comscore/a/b;->S:J

    iput-wide v2, p0, Lcom/comscore/a/b;->T:J

    iput-wide v2, p0, Lcom/comscore/a/b;->r:J

    iput-wide v2, p0, Lcom/comscore/a/b;->s:J

    .line 1000
    iget-boolean v0, p0, Lcom/comscore/a/b;->am:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/comscore/a/b;->Z()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/comscore/a/b;->l:Z

    iput-wide v2, p0, Lcom/comscore/a/b;->k:J

    .line 0
    :cond_0
    iget-object v0, p0, Lcom/comscore/a/b;->j:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/comscore/a/b;->f:Lcom/comscore/utils/b/a;

    iget-object v1, p0, Lcom/comscore/a/b;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/comscore/utils/b/a;->b(Ljava/lang/Runnable;)V

    iput-object v6, p0, Lcom/comscore/a/b;->j:Ljava/lang/Runnable;

    :cond_1
    iget-object v0, p0, Lcom/comscore/a/b;->X:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/comscore/a/b;->f:Lcom/comscore/utils/b/a;

    iget-object v1, p0, Lcom/comscore/a/b;->X:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/comscore/utils/b/a;->b(Ljava/lang/Runnable;)V

    iput-object v6, p0, Lcom/comscore/a/b;->X:Ljava/lang/Runnable;

    :cond_2
    iget-object v0, p0, Lcom/comscore/a/b;->c:Lcom/comscore/b/e;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/comscore/a/b;->c:Lcom/comscore/b/e;

    invoke-virtual {v0}, Lcom/comscore/b/e;->c()V

    :cond_3
    iget-object v0, p0, Lcom/comscore/a/b;->d:Lcom/comscore/utils/c;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/a/b;->d:Lcom/comscore/utils/c;

    invoke-virtual {v0}, Lcom/comscore/utils/c;->c()V

    :cond_4
    iget-object v0, p0, Lcom/comscore/a/b;->f:Lcom/comscore/utils/b/a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/comscore/a/b;->f:Lcom/comscore/utils/b/a;

    invoke-virtual {v0}, Lcom/comscore/utils/b/a;->c()V

    :cond_5
    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    invoke-virtual {v0}, Lcom/comscore/utils/l;->c()V

    :cond_6
    return-void
.end method

.method public final a(IZ)V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/comscore/a/b;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/comscore/a/b;->f:Lcom/comscore/utils/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/a/b;->f:Lcom/comscore/utils/b/a;

    new-instance v1, Lcom/comscore/a/s;

    const/16 v2, 0x3c

    invoke-direct {v1, p0, v2, v3}, Lcom/comscore/a/s;-><init>(Lcom/comscore/a/b;IZ)V

    invoke-virtual {v0, v1, v3}, Lcom/comscore/utils/b/a;->a(Ljava/lang/Runnable;Z)Z

    goto :goto_0
.end method

.method protected final a(Lcom/comscore/a/a;)V
    .locals 3

    .prologue
    .line 0
    iget-boolean v0, p0, Lcom/comscore/a/b;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/comscore/a/a;->a:Lcom/comscore/a/a;

    if-eq p1, v0, :cond_0

    .line 18000
    iget-boolean v0, p0, Lcom/comscore/a/b;->v:Z

    .line 0
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/comscore/a/b;->n:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/comscore/b/d;->a:Lcom/comscore/b/d;

    iget-object v1, p0, Lcom/comscore/a/b;->ac:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/comscore/a/b;->a(Lcom/comscore/b/d;Ljava/util/HashMap;Z)V

    goto :goto_0
.end method

.method protected final a(Lcom/comscore/a/d;)V
    .locals 6

    .prologue
    .line 0
    iget-boolean v0, p0, Lcom/comscore/a/b;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Leaving session state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 0
    sget-object v2, Lcom/comscore/a/f;->b:[I

    invoke-virtual {p1}, Lcom/comscore/a/d;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/comscore/a/b;->X:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/comscore/a/b;->f:Lcom/comscore/utils/b/a;

    iget-object v3, p0, Lcom/comscore/a/b;->X:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/comscore/utils/b/a;->b(Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/comscore/a/b;->X:Ljava/lang/Runnable;

    :cond_2
    iput-wide v0, p0, Lcom/comscore/a/b;->T:J

    :pswitch_1
    iput-wide v0, p0, Lcom/comscore/a/b;->S:J

    :pswitch_2
    iput-wide v0, p0, Lcom/comscore/a/b;->R:J

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/comscore/a/b;->X()Z

    move-result v2

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/comscore/a/b;->L:J

    iget-wide v4, p0, Lcom/comscore/a/b;->W:J

    sub-long/2addr v0, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/comscore/a/b;->L:J

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method final a(Lcom/comscore/b/d;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/comscore/b/d;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 0
    iget-boolean v0, p0, Lcom/comscore/a/b;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/comscore/a/b;->T()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/comscore/a/b;->n:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/comscore/b/d;->a:Lcom/comscore/b/d;

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/comscore/a/b;->g:Lcom/comscore/c/c;

    sget-object v1, Lcom/comscore/b/d;->a:Lcom/comscore/b/d;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/comscore/a/b;->Y:Ljava/lang/String;

    .line 32000
    invoke-static {p0, v1, v2, v3}, Lcom/comscore/b/c;->a(Lcom/comscore/a/b;Lcom/comscore/b/d;Ljava/util/HashMap;Ljava/lang/String;)Lcom/comscore/b/c;

    move-result-object v1

    .line 0
    invoke-virtual {v0, v1}, Lcom/comscore/c/c;->a(Lcom/comscore/c/b;)Z

    :cond_2
    sget-object v0, Lcom/comscore/b/d;->c:Lcom/comscore/b/d;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/comscore/a/b;->g:Lcom/comscore/c/c;

    invoke-static {p2}, Lcom/comscore/utils/n;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/comscore/a/b;->Y:Ljava/lang/String;

    .line 33000
    invoke-static {p0, p1, v1, v2}, Lcom/comscore/b/c;->a(Lcom/comscore/a/b;Lcom/comscore/b/d;Ljava/util/HashMap;Ljava/lang/String;)Lcom/comscore/b/c;

    move-result-object v1

    .line 0
    invoke-virtual {v0, v1}, Lcom/comscore/c/c;->a(Lcom/comscore/c/b;)Z

    goto :goto_0
.end method

.method public final a(Lcom/comscore/b/d;Ljava/util/HashMap;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/comscore/b/d;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/comscore/a/b;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p3, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/comscore/a/b;->a(Lcom/comscore/b/d;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/comscore/a/b;->f:Lcom/comscore/utils/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/a/b;->f:Lcom/comscore/utils/b/a;

    new-instance v1, Lcom/comscore/a/u;

    invoke-direct {v1, p0, p1, p2}, Lcom/comscore/a/u;-><init>(Lcom/comscore/a/b;Lcom/comscore/b/d;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1, p3}, Lcom/comscore/utils/b/a;->a(Ljava/lang/Runnable;Z)Z

    goto :goto_0
.end method

.method public final a(Lcom/comscore/utils/m;)V
    .locals 3

    .prologue
    .line 0
    iget-boolean v0, p0, Lcom/comscore/a/b;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/comscore/a/b;->f:Lcom/comscore/utils/b/a;

    if-eqz v0, :cond_0

    .line 31000
    iget-object v0, p0, Lcom/comscore/a/b;->aj:Lcom/comscore/utils/m;

    .line 0
    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/comscore/a/b;->f:Lcom/comscore/utils/b/a;

    new-instance v1, Lcom/comscore/a/o;

    invoke-direct {v1, p0, p1}, Lcom/comscore/a/o;-><init>(Lcom/comscore/a/b;Lcom/comscore/utils/m;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/b/a;->a(Ljava/lang/Runnable;Z)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comscore/a/b;->w:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/comscore/a/b;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    invoke-direct {p0, p1}, Lcom/comscore/a/b;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/comscore/a/b;->f:Lcom/comscore/utils/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/a/b;->f:Lcom/comscore/utils/b/a;

    new-instance v1, Lcom/comscore/a/m;

    invoke-direct {v1, p0, p1}, Lcom/comscore/a/m;-><init>(Lcom/comscore/a/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2}, Lcom/comscore/utils/b/a;->a(Ljava/lang/Runnable;Z)Z

    goto :goto_0
.end method

.method public final b(Z)J
    .locals 6

    iget-wide v0, p0, Lcom/comscore/a/b;->B:J

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/comscore/a/b;->am:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/comscore/a/b;->B:J

    iget-object v2, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v3, "totalForegroundTime"

    iget-wide v4, p0, Lcom/comscore/a/b;->B:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-wide v0
.end method

.method protected final b()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const-wide/16 v8, 0x0

    const-wide/16 v6, -0x1

    .line 0
    .line 2000
    new-instance v0, Lcom/comscore/utils/l;

    iget-object v1, p0, Lcom/comscore/a/b;->aa:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/comscore/utils/l;-><init>(Landroid/content/Context;)V

    .line 0
    iput-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    .line 3000
    new-instance v0, Lcom/comscore/c/c;

    invoke-direct {v0, p0}, Lcom/comscore/c/c;-><init>(Lcom/comscore/a/b;)V

    .line 0
    iput-object v0, p0, Lcom/comscore/a/b;->g:Lcom/comscore/c/c;

    .line 5000
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "lastApplicationAccumulationTimestamp"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "lastSessionAccumulationTimestamp"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "lastActivityTime"

    invoke-direct {p0, v1, v0}, Lcom/comscore/a/b;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "ns_ap_fg"

    const-string v1, "foregroundTransitionsCount"

    invoke-direct {p0, v0, v1}, Lcom/comscore/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "installTime"

    const-string v1, "installId"

    invoke-direct {p0, v0, v1}, Lcom/comscore/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ns_ap_ver"

    const-string v1, "previousVersion"

    invoke-direct {p0, v0, v1}, Lcom/comscore/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4000
    iget-object v0, p0, Lcom/comscore/a/b;->g:Lcom/comscore/c/c;

    invoke-virtual {v0}, Lcom/comscore/c/c;->a()V

    .line 6000
    new-instance v0, Lcom/comscore/utils/g;

    invoke-direct {v0, p0}, Lcom/comscore/utils/g;-><init>(Lcom/comscore/a/b;)V

    .line 0
    iput-object v0, p0, Lcom/comscore/a/b;->e:Lcom/comscore/utils/g;

    .line 7000
    new-instance v0, Lcom/comscore/b/e;

    invoke-direct {v0, p0}, Lcom/comscore/b/e;-><init>(Lcom/comscore/a/b;)V

    .line 0
    iput-object v0, p0, Lcom/comscore/a/b;->c:Lcom/comscore/b/e;

    .line 8000
    new-instance v0, Lcom/comscore/utils/i;

    invoke-direct {v0, p0}, Lcom/comscore/utils/i;-><init>(Lcom/comscore/a/b;)V

    .line 0
    iput-object v0, p0, Lcom/comscore/a/b;->a:Lcom/comscore/utils/i;

    .line 9000
    new-instance v0, Lcom/comscore/utils/c;

    invoke-direct {v0, p0}, Lcom/comscore/utils/c;-><init>(Lcom/comscore/a/b;)V

    .line 0
    iput-object v0, p0, Lcom/comscore/a/b;->d:Lcom/comscore/utils/c;

    .line 10000
    new-instance v0, Lcom/comscore/utils/ConnectivityChangeReceiver;

    invoke-direct {v0, p0}, Lcom/comscore/utils/ConnectivityChangeReceiver;-><init>(Lcom/comscore/a/b;)V

    .line 0
    iput-object v0, p0, Lcom/comscore/a/b;->h:Lcom/comscore/utils/ConnectivityChangeReceiver;

    .line 11000
    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "lastApplicationAccumulationTimestamp"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/comscore/utils/n;->a(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/a/b;->J:J

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "lastSessionAccumulationTimestamp"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/comscore/utils/n;->a(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/a/b;->W:J

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "lastApplicationSessionTimestamp"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/comscore/utils/n;->a(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/a/b;->R:J

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "lastUserSessionTimestamp"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/comscore/utils/n;->a(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/a/b;->S:J

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "lastActiveUserSessionTimestamp"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/comscore/utils/n;->a(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/a/b;->T:J

    iget-object v0, p0, Lcom/comscore/a/b;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v2, "foregroundTransitionsCount"

    invoke-virtual {v1, v2}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/comscore/utils/n;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "accumulatedForegroundTime"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/n;->c(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/a/b;->F:J

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "accumulatedBackgroundTime"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/n;->c(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/a/b;->E:J

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "accumulatedInactiveTime"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/n;->c(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/a/b;->G:J

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "totalForegroundTime"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/n;->c(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/a/b;->B:J

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "totalBackgroundTime"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/n;->c(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/a/b;->C:J

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "totalInactiveTime"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/n;->c(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/a/b;->D:J

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "accumulatedApplicationSessionTime"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/n;->c(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/a/b;->L:J

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "accumulatedActiveUserSessionTime"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/n;->c(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/a/b;->N:J

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "accumulatedUserSessionTime"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/n;->c(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/a/b;->M:J

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "activeUserSessionCount"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/comscore/utils/n;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/comscore/a/b;->Q:I

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "userSessionCount"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/comscore/utils/n;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/comscore/a/b;->P:I

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "lastUserInteractionTimestamp"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/comscore/utils/n;->a(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/a/b;->V:J

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "userInteractionCount"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/comscore/utils/n;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/comscore/a/b;->U:I

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "applicationSessionCountKey"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/comscore/utils/n;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/comscore/a/b;->O:I

    invoke-direct {p0}, Lcom/comscore/a/b;->W()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/a/b;->t:Ljava/lang/String;

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "previousGenesis"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8, v9}, Lcom/comscore/utils/n;->a(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/a/b;->I:J

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "genesis"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/comscore/utils/n;->a(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/a/b;->H:J

    iget-wide v0, p0, Lcom/comscore/a/b;->H:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_2

    .line 12000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 11000
    iput-wide v0, p0, Lcom/comscore/a/b;->H:J

    iput-wide v8, p0, Lcom/comscore/a/b;->I:J

    iget-wide v0, p0, Lcom/comscore/a/b;->H:J

    iput-wide v0, p0, Lcom/comscore/a/b;->R:J

    iget v0, p0, Lcom/comscore/a/b;->O:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/comscore/a/b;->O:I

    :goto_0
    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "firstInstallId"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/comscore/utils/n;->a(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/a/b;->s:J

    iget-wide v0, p0, Lcom/comscore/a/b;->s:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_4

    iget-wide v0, p0, Lcom/comscore/a/b;->H:J

    iput-wide v0, p0, Lcom/comscore/a/b;->s:J

    iget-wide v0, p0, Lcom/comscore/a/b;->H:J

    iput-wide v0, p0, Lcom/comscore/a/b;->r:J

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "currentVersion"

    iget-object v2, p0, Lcom/comscore/a/b;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "firstInstallId"

    iget-wide v2, p0, Lcom/comscore/a/b;->s:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "installId"

    iget-wide v2, p0, Lcom/comscore/a/b;->r:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "genesis"

    iget-wide v2, p0, Lcom/comscore/a/b;->H:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "previousGenesis"

    iget-wide v2, p0, Lcom/comscore/a/b;->I:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 11000
    iget-wide v2, p0, Lcom/comscore/a/b;->J:J

    cmp-long v2, v2, v8

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/comscore/a/b;->J:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/comscore/a/b;->G:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/comscore/a/b;->G:J

    iget-object v4, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v5, "accumulatedInactiveTime"

    iget-wide v6, p0, Lcom/comscore/a/b;->G:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/comscore/a/b;->D:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/comscore/a/b;->D:J

    iget-object v2, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v3, "totalInactiveTime"

    iget-wide v4, p0, Lcom/comscore/a/b;->D:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-wide v0, p0, Lcom/comscore/a/b;->J:J

    iput-wide v0, p0, Lcom/comscore/a/b;->W:J

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "lastApplicationAccumulationTimestamp"

    iget-wide v2, p0, Lcom/comscore/a/b;->J:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "lastSessionAccumulationTimestamp"

    iget-wide v2, p0, Lcom/comscore/a/b;->W:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "lastApplicationSessionTimestamp"

    iget-wide v2, p0, Lcom/comscore/a/b;->R:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "runs"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/l;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "runs"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/comscore/a/b;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v2, "runs"

    invoke-virtual {v1, v2}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/comscore/utils/n;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/comscore/a/b;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v2, "coldStartCount"

    invoke-virtual {v1, v2}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/comscore/utils/n;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 0
    iget-object v0, p0, Lcom/comscore/a/b;->aa:Landroid/content/Context;

    iget-object v1, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    .line 15000
    new-instance v2, Lcom/comscore/utils/a/b;

    invoke-direct {v2, v0, v1, p0}, Lcom/comscore/utils/a/b;-><init>(Landroid/content/Context;Lcom/comscore/utils/l;Lcom/comscore/a/b;)V

    .line 0
    iput-object v2, p0, Lcom/comscore/a/b;->al:Lcom/comscore/utils/a/b;

    return-void

    .line 11000
    :cond_2
    invoke-direct {p0}, Lcom/comscore/a/b;->X()Z

    move-result v0

    if-nez v0, :cond_3

    iget-wide v0, p0, Lcom/comscore/a/b;->L:J

    .line 13000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 11000
    iget-wide v4, p0, Lcom/comscore/a/b;->W:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/comscore/a/b;->L:J

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "accumulatedApplicationSessionTime"

    iget-wide v2, p0, Lcom/comscore/a/b;->L:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-wide v0, p0, Lcom/comscore/a/b;->H:J

    iput-wide v0, p0, Lcom/comscore/a/b;->R:J

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "previousVersion"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/l;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "previousVersion"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/a/b;->u:Ljava/lang/String;

    :cond_5
    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "currentVersion"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/a/b;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iput-object v0, p0, Lcom/comscore/a/b;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "previousVersion"

    iget-object v2, p0, Lcom/comscore/a/b;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/comscore/a/b;->H:J

    iput-wide v0, p0, Lcom/comscore/a/b;->r:J

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "installId"

    iget-wide v2, p0, Lcom/comscore/a/b;->r:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "currentVersion"

    iget-object v2, p0, Lcom/comscore/a/b;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "installId"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/comscore/utils/n;->a(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/a/b;->r:J

    goto :goto_2
.end method

.method final b(IZ)V
    .locals 2

    const/16 v0, 0x3c

    iget-boolean v1, p0, Lcom/comscore/a/b;->am:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/comscore/a/b;->Z()V

    if-ge p1, v0, :cond_2

    move p1, v0

    :cond_2
    iput-boolean p2, p0, Lcom/comscore/a/b;->l:Z

    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/comscore/a/b;->k:J

    iget-object v0, p0, Lcom/comscore/a/b;->x:Lcom/comscore/a/a;

    sget-object v1, Lcom/comscore/a/a;->c:Lcom/comscore/a/a;

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/comscore/a/b;->Y()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/comscore/a/b;->x:Lcom/comscore/a/a;

    sget-object v1, Lcom/comscore/a/a;->b:Lcom/comscore/a/a;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/comscore/a/b;->l:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/comscore/a/b;->Y()V

    goto :goto_0
.end method

.method protected final b(Lcom/comscore/a/a;)V
    .locals 4

    .prologue
    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Leaving application state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/comscore/a/f;->a:[I

    invoke-virtual {p1}, Lcom/comscore/a/a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/comscore/a/b;->h:Lcom/comscore/utils/ConnectivityChangeReceiver;

    invoke-virtual {v0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->a()V

    iget-object v0, p0, Lcom/comscore/a/b;->c:Lcom/comscore/b/e;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/comscore/b/e;->a(I)V

    iget-object v0, p0, Lcom/comscore/a/b;->aa:Landroid/content/Context;

    iget-object v1, p0, Lcom/comscore/a/b;->h:Lcom/comscore/utils/ConnectivityChangeReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/comscore/a/b;->d:Lcom/comscore/utils/c;

    invoke-virtual {v0}, Lcom/comscore/utils/c;->a()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/comscore/a/b;->Z()V

    goto :goto_0

    .line 19000
    :pswitch_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/a/b;->w:Ljava/lang/String;

    .line 0
    invoke-direct {p0}, Lcom/comscore/a/b;->Z()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final b(Lcom/comscore/a/d;)V
    .locals 6

    .prologue
    const-wide/32 v4, 0x493e0

    .line 0
    iget-boolean v0, p0, Lcom/comscore/a/b;->am:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Entering session state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/comscore/a/f;->b:[I

    invoke-virtual {p1}, Lcom/comscore/a/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 21000
    :pswitch_0
    iget-boolean v0, p0, Lcom/comscore/a/b;->am:Z

    if-eqz v0, :cond_2

    .line 22000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 21000
    iget-wide v2, p0, Lcom/comscore/a/b;->T:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/comscore/a/b;->Q:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/comscore/a/b;->Q:I

    :cond_1
    iput-wide v0, p0, Lcom/comscore/a/b;->T:J

    .line 23000
    :cond_2
    iget-boolean v0, p0, Lcom/comscore/a/b;->am:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/a/b;->X:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/comscore/a/b;->f:Lcom/comscore/utils/b/a;

    iget-object v1, p0, Lcom/comscore/a/b;->X:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/comscore/utils/b/a;->b(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/a/b;->X:Ljava/lang/Runnable;

    :cond_3
    new-instance v0, Lcom/comscore/a/c;

    invoke-direct {v0, p0}, Lcom/comscore/a/c;-><init>(Lcom/comscore/a/b;)V

    iput-object v0, p0, Lcom/comscore/a/b;->X:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/comscore/a/b;->f:Lcom/comscore/utils/b/a;

    iget-object v1, p0, Lcom/comscore/a/b;->X:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Lcom/comscore/utils/b/a;->a(Ljava/lang/Runnable;J)Z

    .line 24000
    :cond_4
    :pswitch_1
    iget-boolean v0, p0, Lcom/comscore/a/b;->am:Z

    if-eqz v0, :cond_6

    .line 25000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 24000
    iget-wide v2, p0, Lcom/comscore/a/b;->S:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    iget v2, p0, Lcom/comscore/a/b;->P:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/comscore/a/b;->P:I

    :cond_5
    iput-wide v0, p0, Lcom/comscore/a/b;->S:J

    .line 0
    :cond_6
    :pswitch_2
    invoke-direct {p0}, Lcom/comscore/a/b;->X()Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/comscore/a/b;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/a/b;->f:Lcom/comscore/utils/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/a/b;->f:Lcom/comscore/utils/b/a;

    new-instance v1, Lcom/comscore/a/l;

    invoke-direct {v1, p0, p1}, Lcom/comscore/a/l;-><init>(Lcom/comscore/a/b;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/b/a;->a(Ljava/lang/Runnable;Z)Z

    goto :goto_0
.end method

.method public final c(Z)J
    .locals 6

    iget-wide v0, p0, Lcom/comscore/a/b;->F:J

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/comscore/a/b;->am:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/comscore/a/b;->F:J

    iget-object v2, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v3, "accumulatedForegroundTime"

    iget-wide v4, p0, Lcom/comscore/a/b;->F:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-wide v0
.end method

.method public final c()V
    .locals 4

    iget-boolean v0, p0, Lcom/comscore/a/b;->am:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/comscore/a/b;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v1, "runs"

    iget-object v2, p0, Lcom/comscore/a/b;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final c(Lcom/comscore/a/a;)V
    .locals 2

    iget-boolean v0, p0, Lcom/comscore/a/b;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Entering application state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/comscore/a/f;->a:[I

    invoke-virtual {p1}, Lcom/comscore/a/a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/comscore/a/b;->h:Lcom/comscore/utils/ConnectivityChangeReceiver;

    invoke-virtual {v0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->b()V

    iget-object v0, p0, Lcom/comscore/a/b;->c:Lcom/comscore/b/e;

    invoke-virtual {v0}, Lcom/comscore/b/e;->b()V

    iget-object v0, p0, Lcom/comscore/a/b;->d:Lcom/comscore/utils/c;

    invoke-virtual {v0}, Lcom/comscore/utils/c;->c()V

    :try_start_0
    iget-object v0, p0, Lcom/comscore/a/b;->aa:Landroid/content/Context;

    iget-object v1, p0, Lcom/comscore/a/b;->h:Lcom/comscore/utils/ConnectivityChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct {p0}, Lcom/comscore/a/b;->Z()V

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/comscore/a/b;->l:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/comscore/a/b;->Y()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/comscore/a/b;->Y()V

    iget-object v0, p0, Lcom/comscore/a/b;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/comscore/a/b;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/a/b;->f:Lcom/comscore/utils/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/a/b;->f:Lcom/comscore/utils/b/a;

    new-instance v1, Lcom/comscore/a/n;

    invoke-direct {v1, p0, p1}, Lcom/comscore/a/n;-><init>(Lcom/comscore/a/b;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/b/a;->a(Ljava/lang/Runnable;Z)Z

    goto :goto_0
.end method

.method public final d(Z)J
    .locals 6

    iget-wide v0, p0, Lcom/comscore/a/b;->C:J

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/comscore/a/b;->am:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/comscore/a/b;->C:J

    iget-object v2, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v3, "totalBackgroundTime"

    iget-wide v4, p0, Lcom/comscore/a/b;->C:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-wide v0
.end method

.method public final d()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 0
    iget-boolean v2, p0, Lcom/comscore/a/b;->am:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/comscore/a/b;->n:Z

    if-nez v2, :cond_0

    iput-boolean v1, p0, Lcom/comscore/a/b;->n:Z

    iget-object v0, p0, Lcom/comscore/a/b;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v2, "coldStartCount"

    iget-object v3, p0, Lcom/comscore/a/b;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 0
    iput-wide v2, p0, Lcom/comscore/a/b;->p:J

    move v0, v1

    goto :goto_0
.end method

.method public final e(Z)J
    .locals 6

    iget-wide v0, p0, Lcom/comscore/a/b;->E:J

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/comscore/a/b;->am:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/comscore/a/b;->E:J

    iget-object v2, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v3, "accumulatedBackgroundTime"

    iget-wide v4, p0, Lcom/comscore/a/b;->E:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-wide v0
.end method

.method protected final e()V
    .locals 6

    iget-object v0, p0, Lcom/comscore/a/b;->aa:Landroid/content/Context;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/comscore/a/b;->aa:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :try_start_0
    const-string v1, "comScore.properties"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v0, "Debug"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/a/b;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/n;->e(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/comscore/utils/e;->a:Z

    const-string v0, "Secure"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/a/b;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/n;->e(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/comscore/a/b;->ah:Z

    const-string v0, "PublisherSecret"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/a/b;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/comscore/a/b;->e(Ljava/lang/String;)V

    :cond_0
    const-string v0, "AppName"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/a/b;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/comscore/a/b;->f(Ljava/lang/String;)V

    :cond_1
    const-string v0, "CustomerC2"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/a/b;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/comscore/a/b;->g(Ljava/lang/String;)V

    :cond_2
    const-string v0, "PixelURL"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/a/b;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/comscore/a/b;->d(Ljava/lang/String;)V

    :cond_3
    const-string v0, "OfflineURL"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/a/b;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/comscore/a/b;->a:Lcom/comscore/utils/i;

    invoke-virtual {v2, v0}, Lcom/comscore/utils/i;->b(Ljava/lang/String;)V

    :cond_4
    const-string v0, "LiveTransmissionMode"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/a/b;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_5

    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/m;->valueOf(Ljava/lang/String;)Lcom/comscore/utils/m;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/a/b;->ai:Lcom/comscore/utils/m;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_0
    :try_start_2
    const-string v0, "OfflineTransmissionMode"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/a/b;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    if-eqz v0, :cond_6

    :try_start_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/m;->valueOf(Ljava/lang/String;)Lcom/comscore/utils/m;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/a/b;->aj:Lcom/comscore/utils/m;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_6
    :goto_1
    :try_start_4
    const-string v0, "KeepAliveEnabled"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/a/b;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/comscore/utils/n;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/comscore/a/b;->ad:Z

    const-string v0, "CacheMaxSize"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/a/b;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/comscore/utils/n;->a(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_7

    iget-object v2, p0, Lcom/comscore/a/b;->a:Lcom/comscore/utils/i;

    invoke-virtual {v2, v0}, Lcom/comscore/utils/i;->a(I)V

    :cond_7
    const-string v0, "CacheMaxBatchSize"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/a/b;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/comscore/utils/n;->a(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_8

    iget-object v2, p0, Lcom/comscore/a/b;->a:Lcom/comscore/utils/i;

    invoke-virtual {v2, v0}, Lcom/comscore/utils/i;->b(I)V

    :cond_8
    const-string v0, "CacheMaxFlushesInARow"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/a/b;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/comscore/utils/n;->a(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_9

    iget-object v2, p0, Lcom/comscore/a/b;->a:Lcom/comscore/utils/i;

    invoke-virtual {v2, v0}, Lcom/comscore/utils/i;->c(I)V

    :cond_9
    const-string v0, "CacheMinutesToRetry"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/a/b;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/comscore/utils/n;->a(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_a

    iget-object v2, p0, Lcom/comscore/a/b;->a:Lcom/comscore/utils/i;

    invoke-virtual {v2, v0}, Lcom/comscore/utils/i;->d(I)V

    :cond_a
    const-string v0, "CacheExpiryInDays"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/a/b;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/comscore/utils/n;->a(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_b

    iget-object v2, p0, Lcom/comscore/a/b;->a:Lcom/comscore/utils/i;

    invoke-virtual {v2, v0}, Lcom/comscore/utils/i;->e(I)V

    :cond_b
    const-string v0, "CacheFlushingInterval"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/a/b;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/comscore/utils/n;->a(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_c

    iput-wide v2, p0, Lcom/comscore/a/b;->ae:J

    iget-object v0, p0, Lcom/comscore/a/b;->d:Lcom/comscore/utils/c;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/comscore/a/b;->d:Lcom/comscore/utils/c;

    invoke-virtual {v0}, Lcom/comscore/utils/c;->b()V

    :cond_c
    const-string v0, "ErrorHandlingEnabled"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/a/b;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/n;->e(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/comscore/a/b;->o(Z)V

    const-string v0, "AutoStartEnabled"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/a/b;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/comscore/utils/n;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/comscore/a/b;->v:Z

    const-string v0, "AutoUpdateInForegroundOnly"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/a/b;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/comscore/utils/n;->a(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "AutoUpdateInterval"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, Lcom/comscore/a/b;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/comscore/utils/n;->a(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x3c

    if-lt v1, v2, :cond_d

    invoke-virtual {p0, v1, v0}, Lcom/comscore/a/b;->b(IZ)V

    :cond_d
    :goto_2
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/comscore/utils/m;->a:Lcom/comscore/utils/m;

    iput-object v0, p0, Lcom/comscore/a/b;->ai:Lcom/comscore/utils/m;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/comscore/utils/e;->a:Z

    if-eqz v1, :cond_d

    invoke-static {v0}, Lcom/comscore/utils/b;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_5
    sget-object v0, Lcom/comscore/utils/m;->a:Lcom/comscore/utils/m;

    iput-object v0, p0, Lcom/comscore/a/b;->aj:Lcom/comscore/utils/m;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1
.end method

.method public final f(Z)J
    .locals 6

    iget-wide v0, p0, Lcom/comscore/a/b;->D:J

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/comscore/a/b;->am:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/comscore/a/b;->D:J

    iget-object v2, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v3, "totalInactiveTime"

    iget-wide v4, p0, Lcom/comscore/a/b;->D:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-wide v0
.end method

.method public final f()Lcom/comscore/utils/i;
    .locals 1

    iget-object v0, p0, Lcom/comscore/a/b;->a:Lcom/comscore/utils/i;

    return-object v0
.end method

.method public final g(Z)J
    .locals 6

    iget-wide v0, p0, Lcom/comscore/a/b;->G:J

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/comscore/a/b;->am:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/comscore/a/b;->G:J

    iget-object v2, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v3, "accumulatedInactiveTime"

    iget-wide v4, p0, Lcom/comscore/a/b;->G:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-wide v0
.end method

.method public final g()Lcom/comscore/utils/l;
    .locals 1

    iget-object v0, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    return-object v0
.end method

.method public final h(Z)J
    .locals 6

    iget-wide v0, p0, Lcom/comscore/a/b;->L:J

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/comscore/a/b;->am:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/comscore/a/b;->L:J

    iget-object v2, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v3, "accumulatedApplicationSessionTime"

    iget-wide v4, p0, Lcom/comscore/a/b;->L:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-wide v0
.end method

.method public final h()Lcom/comscore/utils/b/a;
    .locals 1

    iget-object v0, p0, Lcom/comscore/a/b;->f:Lcom/comscore/utils/b/a;

    return-object v0
.end method

.method public final i(Z)J
    .locals 6

    iget-wide v0, p0, Lcom/comscore/a/b;->N:J

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/comscore/a/b;->am:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/comscore/a/b;->N:J

    iget-object v2, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v3, "accumulatedActiveUserSessionTime"

    iget-wide v4, p0, Lcom/comscore/a/b;->N:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-wide v0
.end method

.method public final i()Lcom/comscore/c/c;
    .locals 1

    iget-object v0, p0, Lcom/comscore/a/b;->g:Lcom/comscore/c/c;

    return-object v0
.end method

.method public final j(Z)J
    .locals 6

    iget-wide v0, p0, Lcom/comscore/a/b;->M:J

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/comscore/a/b;->am:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/comscore/a/b;->M:J

    iget-object v2, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v3, "accumulatedUserSessionTime"

    iget-wide v4, p0, Lcom/comscore/a/b;->M:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-wide v0
.end method

.method public final j()Lcom/comscore/b/e;
    .locals 1

    iget-object v0, p0, Lcom/comscore/a/b;->c:Lcom/comscore/b/e;

    return-object v0
.end method

.method public final k(Z)I
    .locals 4

    iget v0, p0, Lcom/comscore/a/b;->O:I

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/comscore/a/b;->am:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/comscore/a/b;->O:I

    iget-object v1, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v2, "applicationSessionCountKey"

    iget v3, p0, Lcom/comscore/a/b;->O:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public final k()V
    .locals 3

    iget-boolean v0, p0, Lcom/comscore/a/b;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/comscore/a/b;->f:Lcom/comscore/utils/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/a/b;->f:Lcom/comscore/utils/b/a;

    new-instance v1, Lcom/comscore/a/p;

    invoke-direct {v1, p0}, Lcom/comscore/a/p;-><init>(Lcom/comscore/a/b;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/b/a;->a(Ljava/lang/Runnable;Z)Z

    goto :goto_0
.end method

.method public final l(Z)I
    .locals 4

    const/4 v0, -0x1

    iget v1, p0, Lcom/comscore/a/b;->Q:I

    if-ltz v1, :cond_0

    iget v0, p0, Lcom/comscore/a/b;->Q:I

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/comscore/a/b;->am:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/comscore/a/b;->Q:I

    iget-object v1, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v2, "activeUserSessionCount"

    iget v3, p0, Lcom/comscore/a/b;->Q:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public final l()V
    .locals 3

    iget-boolean v0, p0, Lcom/comscore/a/b;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/comscore/a/b;->f:Lcom/comscore/utils/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/a/b;->f:Lcom/comscore/utils/b/a;

    new-instance v1, Lcom/comscore/a/r;

    invoke-direct {v1, p0}, Lcom/comscore/a/r;-><init>(Lcom/comscore/a/b;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/b/a;->a(Ljava/lang/Runnable;Z)Z

    goto :goto_0
.end method

.method public final m(Z)I
    .locals 4

    const/4 v0, -0x1

    iget v1, p0, Lcom/comscore/a/b;->P:I

    if-ltz v1, :cond_0

    iget v0, p0, Lcom/comscore/a/b;->P:I

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/comscore/a/b;->am:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/comscore/a/b;->P:I

    iget-object v1, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v2, "userSessionCount"

    iget v3, p0, Lcom/comscore/a/b;->P:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public final m()V
    .locals 3

    iget-boolean v0, p0, Lcom/comscore/a/b;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/comscore/a/b;->f:Lcom/comscore/utils/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/a/b;->f:Lcom/comscore/utils/b/a;

    new-instance v1, Lcom/comscore/a/g;

    invoke-direct {v1, p0}, Lcom/comscore/a/g;-><init>(Lcom/comscore/a/b;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/b/a;->a(Ljava/lang/Runnable;Z)Z

    goto :goto_0
.end method

.method public final n(Z)I
    .locals 4

    iget v0, p0, Lcom/comscore/a/b;->U:I

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/comscore/a/b;->am:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/comscore/a/b;->U:I

    iget-object v1, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v2, "userInteractionCount"

    iget v3, p0, Lcom/comscore/a/b;->U:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public final n()V
    .locals 3

    iget-boolean v0, p0, Lcom/comscore/a/b;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/comscore/a/b;->f:Lcom/comscore/utils/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/a/b;->f:Lcom/comscore/utils/b/a;

    new-instance v1, Lcom/comscore/a/h;

    invoke-direct {v1, p0}, Lcom/comscore/a/h;-><init>(Lcom/comscore/a/b;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/b/a;->a(Ljava/lang/Runnable;Z)Z

    goto :goto_0
.end method

.method protected final o()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 0
    iget-boolean v0, p0, Lcom/comscore/a/b;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/comscore/a/b;->f:Lcom/comscore/utils/b/a;

    iget-object v1, p0, Lcom/comscore/a/b;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/comscore/utils/b/a;->a(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/comscore/a/b;->f:Lcom/comscore/utils/b/a;

    iget-object v1, p0, Lcom/comscore/a/b;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/comscore/utils/b/a;->b(Ljava/lang/Runnable;)V

    iput-object v6, p0, Lcom/comscore/a/b;->j:Ljava/lang/Runnable;

    .line 17000
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 0
    iget-object v2, p0, Lcom/comscore/a/b;->y:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lez v2, :cond_4

    sget-object v3, Lcom/comscore/a/a;->c:Lcom/comscore/a/a;

    :goto_1
    iget-wide v4, p0, Lcom/comscore/a/b;->V:J

    sub-long/2addr v0, v4

    const-wide/32 v4, 0x493e0

    cmp-long v0, v0, v4

    if-gez v0, :cond_6

    sget-object v5, Lcom/comscore/a/d;->d:Lcom/comscore/a/d;

    :goto_2
    iget-object v2, p0, Lcom/comscore/a/b;->x:Lcom/comscore/a/a;

    iget-object v4, p0, Lcom/comscore/a/b;->K:Lcom/comscore/a/d;

    if-ne v3, v2, :cond_3

    if-eq v5, v4, :cond_0

    :cond_3
    new-instance v0, Lcom/comscore/a/i;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/comscore/a/i;-><init>(Lcom/comscore/a/b;Lcom/comscore/a/a;Lcom/comscore/a/a;Lcom/comscore/a/d;Lcom/comscore/a/d;)V

    iput-object v0, p0, Lcom/comscore/a/b;->j:Ljava/lang/Runnable;

    iget-boolean v0, p0, Lcom/comscore/a/b;->m:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/comscore/a/a;->c:Lcom/comscore/a/a;

    if-eq v3, v0, :cond_9

    iget-object v0, p0, Lcom/comscore/a/b;->f:Lcom/comscore/utils/b/a;

    iget-object v1, p0, Lcom/comscore/a/b;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/comscore/utils/b/a;->a(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/comscore/a/b;->z:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lez v2, :cond_5

    sget-object v3, Lcom/comscore/a/a;->b:Lcom/comscore/a/a;

    goto :goto_1

    :cond_5
    sget-object v3, Lcom/comscore/a/a;->a:Lcom/comscore/a/a;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/comscore/a/b;->z:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_7

    sget-object v5, Lcom/comscore/a/d;->c:Lcom/comscore/a/d;

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/comscore/a/b;->y:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_8

    sget-object v5, Lcom/comscore/a/d;->b:Lcom/comscore/a/d;

    goto :goto_2

    :cond_8
    sget-object v5, Lcom/comscore/a/d;->a:Lcom/comscore/a/d;

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/comscore/a/b;->j:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v6, p0, Lcom/comscore/a/b;->j:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public final o(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/comscore/a/b;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/comscore/a/b;->af:Z

    if-eqz p1, :cond_2

    new-instance v0, Lcom/comscore/utils/f;

    invoke-direct {v0, p0}, Lcom/comscore/utils/f;-><init>(Lcom/comscore/a/b;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/a/b;->ag:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/comscore/a/b;->ag:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_0
.end method

.method protected final p()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/comscore/a/b;->r(Z)V

    return-void
.end method

.method public final p(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/comscore/a/b;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/comscore/a/b;->f:Lcom/comscore/utils/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/a/b;->f:Lcom/comscore/utils/b/a;

    new-instance v1, Lcom/comscore/a/q;

    invoke-direct {v1, p0}, Lcom/comscore/a/q;-><init>(Lcom/comscore/a/b;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/b/a;->a(Ljava/lang/Runnable;Z)Z

    goto :goto_0
.end method

.method protected final q()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/comscore/a/b;->s(Z)V

    return-void
.end method

.method public final q(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/comscore/a/b;->am:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/comscore/a/b;->f:Lcom/comscore/utils/b/a;

    iget-object v1, p0, Lcom/comscore/a/b;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/comscore/utils/b/a;->a(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/comscore/a/b;->f:Lcom/comscore/utils/b/a;

    iget-object v1, p0, Lcom/comscore/a/b;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/comscore/utils/b/a;->b(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/comscore/a/b;->j:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/a/b;->j:Ljava/lang/Runnable;

    :cond_1
    invoke-direct {p0, p1}, Lcom/comscore/a/b;->r(Z)V

    invoke-direct {p0, p1}, Lcom/comscore/a/b;->s(Z)V

    goto :goto_0
.end method

.method public final r()Lcom/comscore/a/a;
    .locals 1

    iget-object v0, p0, Lcom/comscore/a/b;->x:Lcom/comscore/a/a;

    return-object v0
.end method

.method public final s()I
    .locals 1

    iget-object v0, p0, Lcom/comscore/a/b;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final t()J
    .locals 2

    iget-wide v0, p0, Lcom/comscore/a/b;->r:J

    return-wide v0
.end method

.method public final u()J
    .locals 2

    iget-wide v0, p0, Lcom/comscore/a/b;->s:J

    return-wide v0
.end method

.method public final v()J
    .locals 2

    iget-wide v0, p0, Lcom/comscore/a/b;->p:J

    return-wide v0
.end method

.method public final w()I
    .locals 1

    iget-object v0, p0, Lcom/comscore/a/b;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comscore/a/b;->t:Ljava/lang/String;

    return-object v0
.end method

.method public final y()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/comscore/a/b;->u:Ljava/lang/String;

    iget-object v1, p0, Lcom/comscore/a/b;->u:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/comscore/a/b;->u:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/comscore/a/b;->b:Lcom/comscore/utils/l;

    const-string v2, "previousVersion"

    invoke-virtual {v1, v2}, Lcom/comscore/utils/l;->d(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/comscore/a/b;->u:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public final z()J
    .locals 2

    iget-wide v0, p0, Lcom/comscore/a/b;->k:J

    return-wide v0
.end method
