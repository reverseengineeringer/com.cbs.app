.class public final Lcom/google/android/gms/internal/jb;
.super Lcom/google/android/gms/common/api/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/jb$b;,
        Lcom/google/android/gms/internal/jb$a;,
        Lcom/google/android/gms/internal/jb$d;,
        Lcom/google/android/gms/internal/jb$c;,
        Lcom/google/android/gms/internal/jb$f;,
        Lcom/google/android/gms/internal/jb$e;
    }
.end annotation


# instance fields
.field private final A:Lcom/google/android/gms/common/internal/o$a;

.field final a:Lcom/google/android/gms/common/internal/o;

.field final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/internal/jb$f",
            "<*>;>;"
        }
    .end annotation
.end field

.field c:Lcom/google/android/gms/internal/jb$d;

.field final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/a$d",
            "<*>;",
            "Lcom/google/android/gms/common/api/a$c;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/a$d",
            "<*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field final g:Lcom/google/android/gms/common/internal/j;

.field final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/a",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final i:Lcom/google/android/gms/common/api/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$b",
            "<+",
            "Lcom/google/android/gms/internal/kz;",
            "Lcom/google/android/gms/internal/la;",
            ">;"
        }
    .end annotation
.end field

.field final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/jb$f",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/concurrent/locks/Lock;

.field private final l:Ljava/util/concurrent/locks/Condition;

.field private final m:I

.field private final n:Landroid/content/Context;

.field private final o:Landroid/os/Looper;

.field private volatile p:Z

.field private q:J

.field private r:J

.field private final s:Lcom/google/android/gms/internal/jb$a;

.field private final t:Lcom/google/android/gms/common/b;

.field private volatile u:Lcom/google/android/gms/internal/jc;

.field private v:Lcom/google/android/gms/common/ConnectionResult;

.field private final w:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/jf",
            "<*>;>;"
        }
    .end annotation
.end field

.field private x:Lcom/google/android/gms/common/api/h;

.field private final y:Lcom/google/android/gms/internal/jb$e;

.field private final z:Lcom/google/android/gms/common/api/b$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/j;Lcom/google/android/gms/common/b;Lcom/google/android/gms/common/api/a$b;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/internal/j;",
            "Lcom/google/android/gms/common/b;",
            "Lcom/google/android/gms/common/api/a$b",
            "<+",
            "Lcom/google/android/gms/internal/kz;",
            "Lcom/google/android/gms/internal/la;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/a",
            "<*>;",
            "Lcom/google/android/gms/common/api/a$a;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/b$b;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/b$c;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/common/api/b;-><init>()V

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/jb;->k:Ljava/util/concurrent/locks/Lock;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/jb;->b:Ljava/util/Queue;

    const-wide/32 v2, 0x1d4c0

    iput-wide v2, p0, Lcom/google/android/gms/internal/jb;->q:J

    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Lcom/google/android/gms/internal/jb;->r:J

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/jb;->d:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/jb;->e:Ljava/util/Map;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/jb;->f:Ljava/util/Set;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/jb;->v:Lcom/google/android/gms/common/ConnectionResult;

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/jb;->w:Ljava/util/Set;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x10

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x2

    invoke-direct {v2, v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/jb;->j:Ljava/util/Set;

    new-instance v2, Lcom/google/android/gms/internal/jb$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/jb$1;-><init>(Lcom/google/android/gms/internal/jb;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/jb;->y:Lcom/google/android/gms/internal/jb$e;

    new-instance v2, Lcom/google/android/gms/internal/jb$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/jb$2;-><init>(Lcom/google/android/gms/internal/jb;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/jb;->z:Lcom/google/android/gms/common/api/b$b;

    new-instance v2, Lcom/google/android/gms/internal/jb$3;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/jb$3;-><init>(Lcom/google/android/gms/internal/jb;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/jb;->A:Lcom/google/android/gms/common/internal/o$a;

    iput-object p1, p0, Lcom/google/android/gms/internal/jb;->n:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/common/internal/o;

    iget-object v3, p0, Lcom/google/android/gms/internal/jb;->A:Lcom/google/android/gms/common/internal/o$a;

    invoke-direct {v2, p2, v3}, Lcom/google/android/gms/common/internal/o;-><init>(Landroid/os/Looper;Lcom/google/android/gms/common/internal/o$a;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/jb;->a:Lcom/google/android/gms/common/internal/o;

    iput-object p2, p0, Lcom/google/android/gms/internal/jb;->o:Landroid/os/Looper;

    new-instance v2, Lcom/google/android/gms/internal/jb$a;

    invoke-direct {v2, p0, p2}, Lcom/google/android/gms/internal/jb$a;-><init>(Lcom/google/android/gms/internal/jb;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/jb;->s:Lcom/google/android/gms/internal/jb$a;

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/google/android/gms/internal/jb;->t:Lcom/google/android/gms/common/b;

    move/from16 v0, p9

    iput v0, p0, Lcom/google/android/gms/internal/jb;->m:I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/jb;->h:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/internal/jb;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/jb;->l:Ljava/util/concurrent/locks/Condition;

    new-instance v2, Lcom/google/android/gms/internal/ja;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ja;-><init>(Lcom/google/android/gms/internal/jb;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/jb;->u:Lcom/google/android/gms/internal/jc;

    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/b$b;

    iget-object v4, p0, Lcom/google/android/gms/internal/jb;->a:Lcom/google/android/gms/common/internal/o;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/internal/o;->a(Lcom/google/android/gms/common/api/b$b;)V

    goto :goto_0

    :cond_0
    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/b$c;

    iget-object v4, p0, Lcom/google/android/gms/internal/jb;->a:Lcom/google/android/gms/common/internal/o;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/internal/o;->a(Lcom/google/android/gms/common/api/b$c;)V

    goto :goto_1

    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/common/internal/j;->e()Ljava/util/Map;

    move-result-object v11

    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/google/android/gms/common/api/a;

    move-object/from16 v0, p6

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v2, 0x0

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/internal/j$a;

    iget-boolean v2, v2, Lcom/google/android/gms/common/internal/j$a;->b:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_3
    move v3, v2

    :goto_4
    iget-object v2, p0, Lcom/google/android/gms/internal/jb;->h:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10}, Lcom/google/android/gms/common/api/a;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v10}, Lcom/google/android/gms/common/api/a;->b()Lcom/google/android/gms/common/api/a$f;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/gms/internal/jb;->z:Lcom/google/android/gms/common/api/b$b;

    invoke-direct {p0, v10, v3}, Lcom/google/android/gms/internal/jb;->a(Lcom/google/android/gms/common/api/a;I)Lcom/google/android/gms/common/api/b$c;

    move-result-object v7

    .line 1000
    new-instance v2, Lcom/google/android/gms/common/internal/c;

    invoke-interface {v4}, Lcom/google/android/gms/common/api/a$f;->b()I

    move-result v5

    invoke-interface {v4}, Lcom/google/android/gms/common/api/a$f;->a()Lcom/google/android/gms/common/api/a$e;

    move-result-object v9

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/common/internal/c;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/api/b$b;Lcom/google/android/gms/common/api/b$c;Lcom/google/android/gms/common/internal/j;Lcom/google/android/gms/common/api/a$e;)V

    .line 0
    :goto_5
    iget-object v3, p0, Lcom/google/android/gms/internal/jb;->d:Ljava/util/Map;

    invoke-virtual {v10}, Lcom/google/android/gms/common/api/a;->c()Lcom/google/android/gms/common/api/a$d;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const/4 v2, 0x2

    goto :goto_3

    :cond_3
    invoke-virtual {v10}, Lcom/google/android/gms/common/api/a;->a()Lcom/google/android/gms/common/api/a$b;

    move-result-object v2

    iget-object v7, p0, Lcom/google/android/gms/internal/jb;->z:Lcom/google/android/gms/common/api/b$b;

    invoke-direct {p0, v10, v3}, Lcom/google/android/gms/internal/jb;->a(Lcom/google/android/gms/common/api/a;I)Lcom/google/android/gms/common/api/b$c;

    move-result-object v8

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    .line 2000
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/common/api/a$b;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/j;Ljava/lang/Object;Lcom/google/android/gms/common/api/b$b;Lcom/google/android/gms/common/api/b$c;)Lcom/google/android/gms/common/api/a$c;

    move-result-object v2

    goto :goto_5

    .line 0
    :cond_4
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/google/android/gms/internal/jb;->g:Lcom/google/android/gms/common/internal/j;

    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/google/android/gms/internal/jb;->i:Lcom/google/android/gms/common/api/a$b;

    return-void

    :cond_5
    move v3, v2

    goto :goto_4
.end method

.method private a(Lcom/google/android/gms/common/api/a;I)Lcom/google/android/gms/common/api/b$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a",
            "<*>;I)",
            "Lcom/google/android/gms/common/api/b$c;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/jb$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/jb$4;-><init>(Lcom/google/android/gms/internal/jb;Lcom/google/android/gms/common/api/a;I)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/jb;)Lcom/google/android/gms/common/api/h;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->x:Lcom/google/android/gms/common/api/h;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/jb;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->k:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/jb;)Lcom/google/android/gms/internal/jc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->u:Lcom/google/android/gms/internal/jc;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/jb;)V
    .locals 2

    .prologue
    .line 0
    .line 7000
    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 8000
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/jb;->p:Z

    .line 7000
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jb;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/jb;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/jb;)V
    .locals 2

    .prologue
    .line 0
    .line 9000
    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jb;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jb;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/jb;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->n:Landroid/content/Context;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/api/a$d;)Lcom/google/android/gms/common/api/a$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/a$c;",
            ">(",
            "Lcom/google/android/gms/common/api/a$d",
            "<TC;>;)TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$c;

    const-string v1, "Appropriate Api was not requested."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/z;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/iw$a;)Lcom/google/android/gms/internal/iw$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$c;",
            "R::",
            "Lcom/google/android/gms/common/api/e;",
            "T:",
            "Lcom/google/android/gms/internal/iw$a",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/iw$a;->c()Lcom/google/android/gms/common/api/a$d;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This task can not be enqueued (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/z;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/iw$a;->c()Lcom/google/android/gms/common/api/a$d;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "GoogleApiClient is not configured to use the API required for this call."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/z;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->u:Lcom/google/android/gms/internal/jc;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/jc;->a(Lcom/google/android/gms/internal/iw$a;)Lcom/google/android/gms/internal/iw$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/jb;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/jb;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/jb;->v:Lcom/google/android/gms/common/ConnectionResult;

    new-instance v0, Lcom/google/android/gms/internal/ja;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ja;-><init>(Lcom/google/android/gms/internal/jb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/jb;->u:Lcom/google/android/gms/internal/jc;

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->u:Lcom/google/android/gms/internal/jc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/jc;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->l:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/jb;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/common/api/b$c;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->a:Lcom/google/android/gms/common/internal/o;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/o;->a(Lcom/google/android/gms/common/api/b$c;)V

    return-void
.end method

.method final a(Lcom/google/android/gms/internal/jb$b;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->s:Lcom/google/android/gms/internal/jb$a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/jb$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/jb;->s:Lcom/google/android/gms/internal/jb$a;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/jb$a;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method final a(Lcom/google/android/gms/internal/jb$f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$c;",
            ">(",
            "Lcom/google/android/gms/internal/jb$f",
            "<TA;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->y:Lcom/google/android/gms/internal/jb$e;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/jb$f;->a(Lcom/google/android/gms/internal/jb$e;)V

    return-void
.end method

.method final a(Ljava/lang/RuntimeException;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->s:Lcom/google/android/gms/internal/jb$a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/jb$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/jb;->s:Lcom/google/android/gms/internal/jb$a;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/jb$a;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mState="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/jb;->u:Lcom/google/android/gms/internal/jc;

    invoke-interface {v1}, Lcom/google/android/gms/internal/jc;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, " mResuming="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/jb;->p:Z

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mWorkQueue.size()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/jb;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mUnconsumedRunners.size()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/jb;->j:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/jb;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->c()Lcom/google/android/gms/common/api/a$d;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$c;

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/common/api/a$c;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/a;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a",
            "<*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/a;->c()Lcom/google/android/gms/common/api/a$d;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->o:Landroid/os/Looper;

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/internal/iw$a;)Lcom/google/android/gms/internal/iw$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$c;",
            "T:",
            "Lcom/google/android/gms/internal/iw$a",
            "<+",
            "Lcom/google/android/gms/common/api/e;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/iw$a;->c()Lcom/google/android/gms/common/api/a$d;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This task can not be executed (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/z;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3000
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/jb;->p:Z

    .line 0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jb$f;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jb;->a(Lcom/google/android/gms/internal/jb$f;)V

    sget-object v1, Lcom/google/android/gms/common/api/Status;->c:Lcom/google/android/gms/common/api/Status;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/jb$f;->c(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/jb;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_2
    return-object p1

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->u:Lcom/google/android/gms/internal/jc;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/jc;->b(Lcom/google/android/gms/internal/iw$a;)Lcom/google/android/gms/internal/iw$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2
.end method

.method public final b(Lcom/google/android/gms/common/api/b$c;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->a:Lcom/google/android/gms/common/internal/o;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/o;->b(Lcom/google/android/gms/common/api/b$c;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/api/a;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a",
            "<*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/a;->c()Lcom/google/android/gms/common/api/a$d;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$c;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->u:Lcom/google/android/gms/internal/jc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/jc;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/jb;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jb;->l()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->u:Lcom/google/android/gms/internal/jc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/jc;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/jb;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->u:Lcom/google/android/gms/internal/jc;

    instance-of v0, v0, Lcom/google/android/gms/internal/iy;

    return v0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->u:Lcom/google/android/gms/internal/jc;

    instance-of v0, v0, Lcom/google/android/gms/internal/iz;

    return v0
.end method

.method final g()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jb$f;

    invoke-interface {v0, v7}, Lcom/google/android/gms/internal/jb$f;->a(Lcom/google/android/gms/internal/jb$e;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/jb$f;->b()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/jb$f;->g()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/jb$f;->d()V

    invoke-interface {v0}, Lcom/google/android/gms/internal/jb$f;->c()Lcom/google/android/gms/common/api/a$d;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/jb;->a(Lcom/google/android/gms/common/api/a$d;)Lcom/google/android/gms/common/api/a$c;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/api/a$c;->n()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/jb;->x:Lcom/google/android/gms/common/api/h;

    .line 4000
    invoke-interface {v0}, Lcom/google/android/gms/internal/jb$f;->f()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Lcom/google/android/gms/internal/jb$c;

    invoke-direct {v4, v0, v3, v2, v6}, Lcom/google/android/gms/internal/jb$c;-><init>(Lcom/google/android/gms/internal/jb$f;Lcom/google/android/gms/common/api/h;Landroid/os/IBinder;B)V

    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/jb$f;->a(Lcom/google/android/gms/internal/jb$e;)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lcom/google/android/gms/internal/jb$c;

    invoke-direct {v4, v0, v3, v2, v6}, Lcom/google/android/gms/internal/jb$c;-><init>(Lcom/google/android/gms/internal/jb$f;Lcom/google/android/gms/common/api/h;Landroid/os/IBinder;B)V

    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/jb$f;->a(Lcom/google/android/gms/internal/jb$e;)V

    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v2, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-interface {v0}, Lcom/google/android/gms/internal/jb$f;->g()V

    invoke-interface {v0}, Lcom/google/android/gms/internal/jb$f;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/h;->a()V

    goto :goto_0

    :cond_2
    invoke-interface {v0, v7}, Lcom/google/android/gms/internal/jb$f;->a(Lcom/google/android/gms/internal/jb$e;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/jb$f;->g()V

    invoke-interface {v0}, Lcom/google/android/gms/internal/jb$f;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/h;->a()V

    goto :goto_0

    .line 0
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->w:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jf;->a()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->w:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method final h()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/iz;

    iget-object v2, p0, Lcom/google/android/gms/internal/jb;->g:Lcom/google/android/gms/common/internal/j;

    iget-object v3, p0, Lcom/google/android/gms/internal/jb;->h:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/gms/internal/jb;->t:Lcom/google/android/gms/common/b;

    iget-object v5, p0, Lcom/google/android/gms/internal/jb;->i:Lcom/google/android/gms/common/api/a$b;

    iget-object v6, p0, Lcom/google/android/gms/internal/jb;->k:Ljava/util/concurrent/locks/Lock;

    iget-object v7, p0, Lcom/google/android/gms/internal/jb;->n:Landroid/content/Context;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/iz;-><init>(Lcom/google/android/gms/internal/jb;Lcom/google/android/gms/common/internal/j;Ljava/util/Map;Lcom/google/android/gms/common/b;Lcom/google/android/gms/common/api/a$b;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/jb;->u:Lcom/google/android/gms/internal/jc;

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->u:Lcom/google/android/gms/internal/jc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/jc;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->l:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/jb;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method final i()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jb;->l()Z

    new-instance v0, Lcom/google/android/gms/internal/iy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/iy;-><init>(Lcom/google/android/gms/internal/jb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/jb;->u:Lcom/google/android/gms/internal/jc;

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->u:Lcom/google/android/gms/internal/jc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/jc;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->l:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/jb;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method final j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/jb;->p:Z

    return v0
.end method

.method final k()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 0
    .line 5000
    iget-boolean v0, p0, Lcom/google/android/gms/internal/jb;->p:Z

    .line 0
    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/google/android/gms/internal/jb;->p:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->c:Lcom/google/android/gms/internal/jb$d;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/jb$d;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/jb$d;-><init>(Lcom/google/android/gms/internal/jb;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/je;->b(Landroid/content/Context;Lcom/google/android/gms/internal/je;)Lcom/google/android/gms/internal/je;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jb$d;

    iput-object v0, p0, Lcom/google/android/gms/internal/jb;->c:Lcom/google/android/gms/internal/jb$d;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->s:Lcom/google/android/gms/internal/jb$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/jb;->s:Lcom/google/android/gms/internal/jb$a;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/jb$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/jb;->q:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/jb$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->s:Lcom/google/android/gms/internal/jb$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/jb;->s:Lcom/google/android/gms/internal/jb$a;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/jb$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/jb;->r:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/jb$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method final l()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 0
    .line 6000
    iget-boolean v2, p0, Lcom/google/android/gms/internal/jb;->p:Z

    .line 0
    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/jb;->p:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->s:Lcom/google/android/gms/internal/jb$a;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/jb$a;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->s:Lcom/google/android/gms/internal/jb$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jb$a;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->c:Lcom/google/android/gms/internal/jb$d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->c:Lcom/google/android/gms/internal/jb$d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jb$d;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/jb;->c:Lcom/google/android/gms/internal/jb$d;

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method final m()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    const-string v1, ""

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/jb;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
