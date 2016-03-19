.class public final Lcom/google/android/gms/b/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/b/d;

.field private final b:Lcom/google/android/gms/internal/ju;

.field private c:Z

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:Z

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/b/c;",
            ">;",
            "Lcom/google/android/gms/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/b/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/b/b;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/b/b;->a:Lcom/google/android/gms/b/d;

    iput-object v0, p0, Lcom/google/android/gms/b/b;->a:Lcom/google/android/gms/b/d;

    iget-object v0, p1, Lcom/google/android/gms/b/b;->b:Lcom/google/android/gms/internal/ju;

    iput-object v0, p0, Lcom/google/android/gms/b/b;->b:Lcom/google/android/gms/internal/ju;

    iget-wide v0, p1, Lcom/google/android/gms/b/b;->d:J

    iput-wide v0, p0, Lcom/google/android/gms/b/b;->d:J

    iget-wide v0, p1, Lcom/google/android/gms/b/b;->e:J

    iput-wide v0, p0, Lcom/google/android/gms/b/b;->e:J

    iget-wide v0, p1, Lcom/google/android/gms/b/b;->f:J

    iput-wide v0, p0, Lcom/google/android/gms/b/b;->f:J

    iget-wide v0, p1, Lcom/google/android/gms/b/b;->g:J

    iput-wide v0, p0, Lcom/google/android/gms/b/b;->g:J

    iget-wide v0, p1, Lcom/google/android/gms/b/b;->h:J

    iput-wide v0, p0, Lcom/google/android/gms/b/b;->h:J

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/google/android/gms/b/b;->k:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/b/b;->k:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/android/gms/b/b;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/b/b;->j:Ljava/util/Map;

    iget-object v0, p1, Lcom/google/android/gms/b/b;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/android/gms/b/b;->c(Ljava/lang/Class;)Lcom/google/android/gms/b/c;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/b/c;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/b/c;->a(Lcom/google/android/gms/b/c;)V

    iget-object v1, p0, Lcom/google/android/gms/b/b;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/b/d;Lcom/google/android/gms/internal/ju;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/z;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/z;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/b/b;->a:Lcom/google/android/gms/b/d;

    iput-object p2, p0, Lcom/google/android/gms/b/b;->b:Lcom/google/android/gms/internal/ju;

    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/google/android/gms/b/b;->g:J

    const-wide v0, 0xb43e9400L

    iput-wide v0, p0, Lcom/google/android/gms/b/b;->h:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/b/b;->j:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/b/b;->k:Ljava/util/List;

    return-void
.end method

.method private static c(Ljava/lang/Class;)Lcom/google/android/gms/b/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/b/c;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/c;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "dataType doesn\'t have default constructor"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "dataType default constructor is not accessible"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/b/b;
    .locals 1

    new-instance v0, Lcom/google/android/gms/b/b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/b/b;-><init>(Lcom/google/android/gms/b/b;)V

    return-object v0
.end method

.method public final a(Ljava/lang/Class;)Lcom/google/android/gms/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/b/c;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/b/b;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/c;

    return-object v0
.end method

.method public final a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/google/android/gms/b/b;->e:J

    return-void
.end method

.method public final a(Lcom/google/android/gms/b/c;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/z;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/b/c;

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/b/b;->b(Ljava/lang/Class;)Lcom/google/android/gms/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/b/c;->a(Lcom/google/android/gms/b/c;)V

    return-void
.end method

.method public final b(Ljava/lang/Class;)Lcom/google/android/gms/b/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/b/c;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/b/b;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/c;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/b/b;->c(Ljava/lang/Class;)Lcom/google/android/gms/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/b/b;->j:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final b()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/b/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/b/b;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/b/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/b/b;->k:Ljava/util/List;

    return-object v0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/b/b;->d:J

    return-wide v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/b/b;->a:Lcom/google/android/gms/b/d;

    invoke-virtual {v0}, Lcom/google/android/gms/b/d;->k()Lcom/google/android/gms/b/e;

    move-result-object v0

    .line 0
    invoke-virtual {v0, p0}, Lcom/google/android/gms/b/e;->a(Lcom/google/android/gms/b/b;)V

    return-void
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/b/b;->c:Z

    return v0
.end method

.method final g()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/b/b;->b:Lcom/google/android/gms/internal/ju;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ju;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/b/b;->f:J

    iget-wide v0, p0, Lcom/google/android/gms/b/b;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/b/b;->e:J

    iput-wide v0, p0, Lcom/google/android/gms/b/b;->d:J

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/b/b;->c:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/b/b;->b:Lcom/google/android/gms/internal/ju;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ju;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/b/b;->d:J

    goto :goto_0
.end method

.method final h()Lcom/google/android/gms/b/d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/b;->a:Lcom/google/android/gms/b/d;

    return-object v0
.end method

.method final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/b/b;->i:Z

    return v0
.end method

.method final j()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/b/b;->i:Z

    return-void
.end method
