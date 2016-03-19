.class public final Lb/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/ExecutorService;

.field public static final b:Ljava/util/concurrent/Executor;

.field private static final c:Ljava/util/concurrent/Executor;


# instance fields
.field private final d:Ljava/lang/Object;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/Exception;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lb/f",
            "<TTResult;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lb/d;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lb/g;->a:Ljava/util/concurrent/ExecutorService;

    .line 42
    invoke-static {}, Lb/d;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lb/g;->c:Ljava/util/concurrent/Executor;

    .line 47
    invoke-static {}, Lb/a;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lb/g;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lb/g;->d:Ljava/lang/Object;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/g;->i:Ljava/util/List;

    .line 58
    return-void
.end method

.method public static a()Lb/g$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "Lb/g",
            "<TTResult;>.a;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Lb/g;

    invoke-direct {v0}, Lb/g;-><init>()V

    .line 68
    new-instance v1, Lb/g$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lb/g$a;-><init>(Lb/g;B)V

    return-object v1
.end method

.method private a(Lb/f;Ljava/util/concurrent/Executor;)Lb/g;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lb/f",
            "<TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lb/g",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 531
    invoke-static {}, Lb/g;->a()Lb/g$a;

    move-result-object v2

    .line 532
    iget-object v6, p0, Lb/g;->d:Ljava/lang/Object;

    monitor-enter v6

    .line 533
    :try_start_0
    invoke-direct {p0}, Lb/g;->g()Z

    move-result v7

    .line 534
    if-nez v7, :cond_0

    .line 535
    iget-object v8, p0, Lb/g;->i:Ljava/util/List;

    new-instance v0, Lb/g$5;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lb/g$5;-><init>(Lb/g;Lb/g$a;Lb/f;Ljava/util/concurrent/Executor;Lb/e;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    if-eqz v7, :cond_1

    .line 545
    invoke-static {v2, p1, p0, p2, v9}, Lb/g;->c(Lb/g$a;Lb/f;Lb/g;Ljava/util/concurrent/Executor;Lb/e;)V

    .line 4857
    :cond_1
    iget-object v0, v2, Lb/g$a;->a:Lb/g;

    .line 547
    return-object v0

    .line 543
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Ljava/lang/Exception;)Lb/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Lb/g",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 141
    invoke-static {}, Lb/g;->a()Lb/g$a;

    move-result-object v0

    .line 142
    invoke-virtual {v0, p0}, Lb/g$a;->a(Ljava/lang/Exception;)V

    .line 2857
    iget-object v0, v0, Lb/g$a;->a:Lb/g;

    .line 143
    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lb/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(TTResult;)",
            "Lb/g",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 132
    invoke-static {}, Lb/g;->a()Lb/g$a;

    move-result-object v0

    .line 133
    invoke-virtual {v0, p0}, Lb/g$a;->a(Ljava/lang/Object;)V

    .line 1857
    iget-object v0, v0, Lb/g$a;->a:Lb/g;

    .line 134
    return-object v0
.end method

.method static synthetic a(Lb/g;Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lb/g;->h:Ljava/lang/Exception;

    return-object p1
.end method

.method static synthetic a(Lb/g;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lb/g;->d:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lb/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lb/g;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lb/g$a;Lb/f;Lb/g;Ljava/util/concurrent/Executor;Lb/e;)V
    .locals 0

    .prologue
    .line 31
    invoke-static {p0, p1, p2, p3, p4}, Lb/g;->c(Lb/g$a;Lb/f;Lb/g;Ljava/util/concurrent/Executor;Lb/e;)V

    return-void
.end method

.method private b(Lb/f;Ljava/util/concurrent/Executor;)Lb/g;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lb/f",
            "<TTResult;",
            "Lb/g",
            "<TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lb/g",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 585
    invoke-static {}, Lb/g;->a()Lb/g$a;

    move-result-object v2

    .line 586
    iget-object v6, p0, Lb/g;->d:Ljava/lang/Object;

    monitor-enter v6

    .line 587
    :try_start_0
    invoke-direct {p0}, Lb/g;->g()Z

    move-result v7

    .line 588
    if-nez v7, :cond_0

    .line 589
    iget-object v8, p0, Lb/g;->i:Ljava/util/List;

    new-instance v0, Lb/g$1;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lb/g$1;-><init>(Lb/g;Lb/g$a;Lb/f;Ljava/util/concurrent/Executor;Lb/e;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    if-eqz v7, :cond_1

    .line 599
    invoke-static {v2, p1, p0, p2, v9}, Lb/g;->d(Lb/g$a;Lb/f;Lb/g;Ljava/util/concurrent/Executor;Lb/e;)V

    .line 5857
    :cond_1
    iget-object v0, v2, Lb/g$a;->a:Lb/g;

    .line 601
    return-object v0

    .line 597
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Lb/g$a;Lb/f;Lb/g;Ljava/util/concurrent/Executor;Lb/e;)V
    .locals 0

    .prologue
    .line 31
    invoke-static {p0, p1, p2, p3, p4}, Lb/g;->d(Lb/g$a;Lb/f;Lb/g;Ljava/util/concurrent/Executor;Lb/e;)V

    return-void
.end method

.method static synthetic b(Lb/g;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lb/g;->e:Z

    return v0
.end method

.method private static c(Lb/g$a;Lb/f;Lb/g;Ljava/util/concurrent/Executor;Lb/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lb/g",
            "<TTContinuationResult;>.a;",
            "Lb/f",
            "<TTResult;TTContinuationResult;>;",
            "Lb/g",
            "<TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lb/e;",
            ")V"
        }
    .end annotation

    .prologue
    .line 746
    new-instance v0, Lb/g$3;

    invoke-direct {v0, p4, p0, p1, p2}, Lb/g$3;-><init>(Lb/e;Lb/g$a;Lb/f;Lb/g;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 764
    return-void
.end method

.method static synthetic c(Lb/g;)Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/g;->e:Z

    return v0
.end method

.method private static d(Lb/g$a;Lb/f;Lb/g;Ljava/util/concurrent/Executor;Lb/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lb/g",
            "<TTContinuationResult;>.a;",
            "Lb/f",
            "<TTResult;",
            "Lb/g",
            "<TTContinuationResult;>;>;",
            "Lb/g",
            "<TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lb/e;",
            ")V"
        }
    .end annotation

    .prologue
    .line 787
    new-instance v0, Lb/g$4;

    invoke-direct {v0, p4, p0, p1, p2}, Lb/g$4;-><init>(Lb/e;Lb/g$a;Lb/f;Lb/g;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 826
    return-void
.end method

.method static synthetic d(Lb/g;)Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/g;->f:Z

    return v0
.end method

.method static synthetic e(Lb/g;)V
    .locals 3

    .prologue
    .line 31
    .line 7829
    iget-object v1, p0, Lb/g;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 7830
    :try_start_0
    iget-object v0, p0, Lb/g;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7832
    :try_start_1
    invoke-interface {v0, p0}, Lb/f;->then(Lb/g;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7834
    :catch_0
    move-exception v0

    :try_start_2
    throw v0

    .line 7840
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 7835
    :catch_1
    move-exception v0

    .line 7836
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 7839
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lb/g;->i:Ljava/util/List;

    .line 7840
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public static f()Lb/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "Lb/g",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 150
    invoke-static {}, Lb/g;->a()Lb/g$a;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lb/g$a;->b()V

    .line 3857
    iget-object v0, v0, Lb/g$a;->a:Lb/g;

    .line 152
    return-object v0
.end method

.method private g()Z
    .locals 2

    .prologue
    .line 76
    iget-object v1, p0, Lb/g;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    :try_start_0
    iget-boolean v0, p0, Lb/g;->e:Z

    monitor-exit v1

    return v0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Lb/f;)Lb/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lb/f",
            "<TTResult;TTContinuationResult;>;)",
            "Lb/g",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 556
    sget-object v0, Lb/g;->c:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1, v0}, Lb/g;->a(Lb/f;Ljava/util/concurrent/Executor;)Lb/g;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lb/f;)Lb/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lb/f",
            "<TTResult;TTContinuationResult;>;)",
            "Lb/g",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 662
    sget-object v0, Lb/g;->c:Ljava/util/concurrent/Executor;

    .line 6638
    new-instance v1, Lb/g$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1}, Lb/g$2;-><init>(Lb/g;Lb/e;Lb/f;)V

    .line 7574
    invoke-direct {p0, v1, v0}, Lb/g;->b(Lb/f;Ljava/util/concurrent/Executor;)Lb/g;

    move-result-object v0

    .line 662
    return-object v0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 85
    iget-object v1, p0, Lb/g;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    :try_start_0
    iget-boolean v0, p0, Lb/g;->f:Z

    monitor-exit v1

    return v0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 94
    iget-object v1, p0, Lb/g;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_0
    iget-object v0, p0, Lb/g;->h:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v1, p0, Lb/g;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_0
    iget-object v0, p0, Lb/g;->g:Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final e()Ljava/lang/Exception;
    .locals 2

    .prologue
    .line 112
    iget-object v1, p0, Lb/g;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 113
    :try_start_0
    iget-object v0, p0, Lb/g;->h:Ljava/lang/Exception;

    monitor-exit v1

    return-object v0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
