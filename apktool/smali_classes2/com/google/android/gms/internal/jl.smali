.class public Lcom/google/android/gms/internal/jl;
.super Lcom/google/android/gms/internal/jp;

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/jp",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field a:Lcom/google/android/gms/internal/jo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/jo",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/jp;-><init>()V

    return-void
.end method

.method private b()Lcom/google/android/gms/internal/jo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/jo",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/jl;->a:Lcom/google/android/gms/internal/jo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/jl$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/jl$1;-><init>(Lcom/google/android/gms/internal/jl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/jl;->a:Lcom/google/android/gms/internal/jo;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jl;->a:Lcom/google/android/gms/internal/jo;

    return-object v0
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/jl;->b()Lcom/google/android/gms/internal/jo;

    move-result-object v0

    .line 1000
    iget-object v1, v0, Lcom/google/android/gms/internal/jo;->b:Lcom/google/android/gms/internal/jo$b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/jo$b;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/jo$b;-><init>(Lcom/google/android/gms/internal/jo;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/jo;->b:Lcom/google/android/gms/internal/jo$b;

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/jo;->b:Lcom/google/android/gms/internal/jo$b;

    .line 0
    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/jl;->b()Lcom/google/android/gms/internal/jo;

    move-result-object v0

    .line 2000
    iget-object v1, v0, Lcom/google/android/gms/internal/jo;->c:Lcom/google/android/gms/internal/jo$c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/jo$c;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/jo$c;-><init>(Lcom/google/android/gms/internal/jo;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/jo;->c:Lcom/google/android/gms/internal/jo$c;

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/jo;->c:Lcom/google/android/gms/internal/jo$c;

    .line 0
    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/jl;->h:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jl;->a(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/jl;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/jl;->b()Lcom/google/android/gms/internal/jo;

    move-result-object v0

    .line 3000
    iget-object v1, v0, Lcom/google/android/gms/internal/jo;->d:Lcom/google/android/gms/internal/jo$e;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/jo$e;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/jo$e;-><init>(Lcom/google/android/gms/internal/jo;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/jo;->d:Lcom/google/android/gms/internal/jo$e;

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/jo;->d:Lcom/google/android/gms/internal/jo$e;

    .line 0
    return-object v0
.end method
