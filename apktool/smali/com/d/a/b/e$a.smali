.class public final Lcom/d/a/b/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/d/a/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/d/a/b/a/g;


# instance fields
.field private b:Landroid/content/Context;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Lcom/d/a/b/g/a;

.field private h:Ljava/util/concurrent/Executor;

.field private i:Ljava/util/concurrent/Executor;

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:Z

.field private o:Lcom/d/a/b/a/g;

.field private p:I

.field private q:J

.field private r:I

.field private s:Lcom/d/a/a/b/a;

.field private t:Lcom/d/a/a/a/b;

.field private u:Lcom/d/a/a/a/b/a;

.field private v:Lcom/d/a/b/d/b;

.field private w:Lcom/d/a/b/b/b;

.field private x:Lcom/d/a/b/c;

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/d/a/b/a/g;->a:Lcom/d/a/b/a/g;

    sput-object v0, Lcom/d/a/b/e$a;->a:Lcom/d/a/b/a/g;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput v2, p0, Lcom/d/a/b/e$a;->c:I

    .line 167
    iput v2, p0, Lcom/d/a/b/e$a;->d:I

    .line 168
    iput v2, p0, Lcom/d/a/b/e$a;->e:I

    .line 169
    iput v2, p0, Lcom/d/a/b/e$a;->f:I

    .line 170
    iput-object v3, p0, Lcom/d/a/b/e$a;->g:Lcom/d/a/b/g/a;

    .line 172
    iput-object v3, p0, Lcom/d/a/b/e$a;->h:Ljava/util/concurrent/Executor;

    .line 173
    iput-object v3, p0, Lcom/d/a/b/e$a;->i:Ljava/util/concurrent/Executor;

    .line 174
    iput-boolean v2, p0, Lcom/d/a/b/e$a;->j:Z

    .line 175
    iput-boolean v2, p0, Lcom/d/a/b/e$a;->k:Z

    .line 177
    const/4 v0, 0x3

    iput v0, p0, Lcom/d/a/b/e$a;->l:I

    .line 178
    const/4 v0, 0x4

    iput v0, p0, Lcom/d/a/b/e$a;->m:I

    .line 179
    iput-boolean v2, p0, Lcom/d/a/b/e$a;->n:Z

    .line 180
    sget-object v0, Lcom/d/a/b/e$a;->a:Lcom/d/a/b/a/g;

    iput-object v0, p0, Lcom/d/a/b/e$a;->o:Lcom/d/a/b/a/g;

    .line 182
    iput v2, p0, Lcom/d/a/b/e$a;->p:I

    .line 183
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/d/a/b/e$a;->q:J

    .line 184
    iput v2, p0, Lcom/d/a/b/e$a;->r:I

    .line 186
    iput-object v3, p0, Lcom/d/a/b/e$a;->s:Lcom/d/a/a/b/a;

    .line 187
    iput-object v3, p0, Lcom/d/a/b/e$a;->t:Lcom/d/a/a/a/b;

    .line 188
    iput-object v3, p0, Lcom/d/a/b/e$a;->u:Lcom/d/a/a/a/b/a;

    .line 189
    iput-object v3, p0, Lcom/d/a/b/e$a;->v:Lcom/d/a/b/d/b;

    .line 191
    iput-object v3, p0, Lcom/d/a/b/e$a;->x:Lcom/d/a/b/c;

    .line 193
    iput-boolean v2, p0, Lcom/d/a/b/e$a;->y:Z

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/b/e$a;->b:Landroid/content/Context;

    .line 197
    return-void
.end method

.method static synthetic a(Lcom/d/a/b/e$a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/d/a/b/e$a;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/d/a/b/e$a;)I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/d/a/b/e$a;->c:I

    return v0
.end method

.method static synthetic c(Lcom/d/a/b/e$a;)I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/d/a/b/e$a;->d:I

    return v0
.end method

.method static synthetic d(Lcom/d/a/b/e$a;)I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/d/a/b/e$a;->e:I

    return v0
.end method

.method static synthetic e(Lcom/d/a/b/e$a;)I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/d/a/b/e$a;->f:I

    return v0
.end method

.method static synthetic f(Lcom/d/a/b/e$a;)Lcom/d/a/b/g/a;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/d/a/b/e$a;->g:Lcom/d/a/b/g/a;

    return-object v0
.end method

.method static synthetic g(Lcom/d/a/b/e$a;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/d/a/b/e$a;->h:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic h(Lcom/d/a/b/e$a;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/d/a/b/e$a;->i:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic i(Lcom/d/a/b/e$a;)I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/d/a/b/e$a;->l:I

    return v0
.end method

.method static synthetic j(Lcom/d/a/b/e$a;)I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/d/a/b/e$a;->m:I

    return v0
.end method

.method static synthetic k(Lcom/d/a/b/e$a;)Lcom/d/a/b/a/g;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/d/a/b/e$a;->o:Lcom/d/a/b/a/g;

    return-object v0
.end method

.method static synthetic l(Lcom/d/a/b/e$a;)Lcom/d/a/a/a/b;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/d/a/b/e$a;->t:Lcom/d/a/a/a/b;

    return-object v0
.end method

.method static synthetic m(Lcom/d/a/b/e$a;)Lcom/d/a/a/b/a;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/d/a/b/e$a;->s:Lcom/d/a/a/b/a;

    return-object v0
.end method

.method static synthetic n(Lcom/d/a/b/e$a;)Lcom/d/a/b/c;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/d/a/b/e$a;->x:Lcom/d/a/b/c;

    return-object v0
.end method

.method static synthetic o(Lcom/d/a/b/e$a;)Lcom/d/a/b/d/b;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/d/a/b/e$a;->v:Lcom/d/a/b/d/b;

    return-object v0
.end method

.method static synthetic p(Lcom/d/a/b/e$a;)Lcom/d/a/b/b/b;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/d/a/b/e$a;->w:Lcom/d/a/b/b/b;

    return-object v0
.end method

.method static synthetic q(Lcom/d/a/b/e$a;)Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/d/a/b/e$a;->j:Z

    return v0
.end method

.method static synthetic r(Lcom/d/a/b/e$a;)Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/d/a/b/e$a;->k:Z

    return v0
.end method

.method static synthetic s(Lcom/d/a/b/e$a;)Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/d/a/b/e$a;->y:Z

    return v0
.end method


# virtual methods
.method public final a()Lcom/d/a/b/e$a;
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/d/a/b/e$a;->h:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/d/a/b/e$a;->i:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    .line 295
    :cond_0
    const-string v0, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/d/a/c/c;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    :cond_1
    const/4 v0, 0x5

    iput v0, p0, Lcom/d/a/b/e$a;->l:I

    .line 299
    return-object p0
.end method

.method public final a(Lcom/d/a/a/a/b;)Lcom/d/a/b/e$a;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 503
    iget-wide v0, p0, Lcom/d/a/b/e$a;->q:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/d/a/b/e$a;->r:I

    if-lez v0, :cond_1

    .line 504
    :cond_0
    const-string v0, "diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/d/a/c/c;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/d/a/b/e$a;->u:Lcom/d/a/a/a/b/a;

    if-eqz v0, :cond_2

    .line 507
    const-string v0, "diskCache() and diskCacheFileNameGenerator() calls overlap each other"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/d/a/c/c;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 510
    :cond_2
    iput-object p1, p0, Lcom/d/a/b/e$a;->t:Lcom/d/a/a/a/b;

    .line 511
    return-object p0
.end method

.method public final b()Lcom/d/a/b/e$a;
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/d/a/b/e$a;->h:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/d/a/b/e$a;->i:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    .line 309
    :cond_0
    const-string v0, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/d/a/c/c;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    :cond_1
    const/4 v0, 0x5

    iput v0, p0, Lcom/d/a/b/e$a;->m:I

    .line 321
    return-object p0
.end method

.method public final c()Lcom/d/a/b/e$a;
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/d/a/b/e$a;->s:Lcom/d/a/a/b/a;

    if-eqz v0, :cond_0

    .line 384
    const-string v0, "memoryCache() and memoryCacheSize() calls overlap each other"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/d/a/c/c;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    .line 388
    long-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/d/a/b/e$a;->p:I

    .line 389
    return-object p0
.end method

.method public final d()Lcom/d/a/b/e;
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 559
    .line 1564
    iget-object v0, p0, Lcom/d/a/b/e$a;->h:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_8

    .line 1565
    iget v0, p0, Lcom/d/a/b/e$a;->l:I

    iget v1, p0, Lcom/d/a/b/e$a;->m:I

    iget-object v2, p0, Lcom/d/a/b/e$a;->o:Lcom/d/a/b/a/g;

    invoke-static {v0, v1, v2}, Lcom/d/a/b/a;->a(IILcom/d/a/b/a/g;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/b/e$a;->h:Ljava/util/concurrent/Executor;

    .line 1570
    :goto_0
    iget-object v0, p0, Lcom/d/a/b/e$a;->i:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_9

    .line 1571
    iget v0, p0, Lcom/d/a/b/e$a;->l:I

    iget v1, p0, Lcom/d/a/b/e$a;->m:I

    iget-object v2, p0, Lcom/d/a/b/e$a;->o:Lcom/d/a/b/a/g;

    invoke-static {v0, v1, v2}, Lcom/d/a/b/a;->a(IILcom/d/a/b/a/g;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/b/e$a;->i:Ljava/util/concurrent/Executor;

    .line 1576
    :goto_1
    iget-object v0, p0, Lcom/d/a/b/e$a;->t:Lcom/d/a/a/a/b;

    if-nez v0, :cond_1

    .line 1577
    iget-object v0, p0, Lcom/d/a/b/e$a;->u:Lcom/d/a/a/a/b/a;

    if-nez v0, :cond_0

    .line 2073
    new-instance v0, Lcom/d/a/a/a/b/b;

    invoke-direct {v0}, Lcom/d/a/a/a/b/b;-><init>()V

    .line 1578
    iput-object v0, p0, Lcom/d/a/b/e$a;->u:Lcom/d/a/a/a/b/a;

    .line 1580
    :cond_0
    iget-object v0, p0, Lcom/d/a/b/e$a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/d/a/b/e$a;->u:Lcom/d/a/a/a/b/a;

    iget-wide v2, p0, Lcom/d/a/b/e$a;->q:J

    iget v4, p0, Lcom/d/a/b/e$a;->r:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/d/a/b/a;->a(Landroid/content/Context;Lcom/d/a/a/a/b/a;JI)Lcom/d/a/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/b/e$a;->t:Lcom/d/a/a/a/b;

    .line 1583
    :cond_1
    iget-object v0, p0, Lcom/d/a/b/e$a;->s:Lcom/d/a/a/b/a;

    if-nez v0, :cond_3

    .line 1584
    iget v0, p0, Lcom/d/a/b/e$a;->p:I

    .line 2111
    if-nez v0, :cond_2

    .line 2112
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 2114
    :cond_2
    new-instance v1, Lcom/d/a/a/b/a/b;

    invoke-direct {v1, v0}, Lcom/d/a/a/b/a/b;-><init>(I)V

    .line 1584
    iput-object v1, p0, Lcom/d/a/b/e$a;->s:Lcom/d/a/a/b/a;

    .line 1586
    :cond_3
    iget-boolean v0, p0, Lcom/d/a/b/e$a;->n:Z

    if-eqz v0, :cond_4

    .line 1587
    new-instance v0, Lcom/d/a/a/b/a/a;

    iget-object v1, p0, Lcom/d/a/b/e$a;->s:Lcom/d/a/a/b/a;

    invoke-static {}, Lcom/d/a/c/d;->a()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/d/a/a/b/a/a;-><init>(Lcom/d/a/a/b/a;Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/d/a/b/e$a;->s:Lcom/d/a/a/b/a;

    .line 1589
    :cond_4
    iget-object v0, p0, Lcom/d/a/b/e$a;->v:Lcom/d/a/b/d/b;

    if-nez v0, :cond_5

    .line 1590
    iget-object v0, p0, Lcom/d/a/b/e$a;->b:Landroid/content/Context;

    .line 2119
    new-instance v1, Lcom/d/a/b/d/a;

    invoke-direct {v1, v0}, Lcom/d/a/b/d/a;-><init>(Landroid/content/Context;)V

    .line 1590
    iput-object v1, p0, Lcom/d/a/b/e$a;->v:Lcom/d/a/b/d/b;

    .line 1592
    :cond_5
    iget-object v0, p0, Lcom/d/a/b/e$a;->w:Lcom/d/a/b/b/b;

    if-nez v0, :cond_6

    .line 1593
    iget-boolean v0, p0, Lcom/d/a/b/e$a;->y:Z

    .line 2124
    new-instance v1, Lcom/d/a/b/b/a;

    invoke-direct {v1, v0}, Lcom/d/a/b/b/a;-><init>(Z)V

    .line 1593
    iput-object v1, p0, Lcom/d/a/b/e$a;->w:Lcom/d/a/b/b/b;

    .line 1595
    :cond_6
    iget-object v0, p0, Lcom/d/a/b/e$a;->x:Lcom/d/a/b/c;

    if-nez v0, :cond_7

    .line 2507
    new-instance v0, Lcom/d/a/b/c$a;

    invoke-direct {v0}, Lcom/d/a/b/c$a;-><init>()V

    invoke-virtual {v0}, Lcom/d/a/b/c$a;->d()Lcom/d/a/b/c;

    move-result-object v0

    .line 1596
    iput-object v0, p0, Lcom/d/a/b/e$a;->x:Lcom/d/a/b/c;

    .line 560
    :cond_7
    new-instance v0, Lcom/d/a/b/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/d/a/b/e;-><init>(Lcom/d/a/b/e$a;B)V

    return-object v0

    .line 1568
    :cond_8
    iput-boolean v3, p0, Lcom/d/a/b/e$a;->j:Z

    goto/16 :goto_0

    .line 1574
    :cond_9
    iput-boolean v3, p0, Lcom/d/a/b/e$a;->k:Z

    goto :goto_1
.end method
