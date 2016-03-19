.class public abstract Lcom/google/ads/interactivemedia/v3/impl/c/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/c/k$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/b/k;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/b/n;Lcom/google/ads/interactivemedia/v3/impl/l$b;)Lcom/google/ads/interactivemedia/v3/impl/c/k;
    .locals 14

    .prologue
    .line 26
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/b/k;->a()Ljava/lang/String;

    move-result-object v3

    .line 27
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/b/k;->g()Ljava/lang/String;

    move-result-object v4

    .line 28
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/b/k;->f()Ljava/lang/String;

    move-result-object v5

    .line 29
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/b/k;->b()Ljava/util/Map;

    move-result-object v6

    move-object v1, p0

    .line 30
    check-cast v1, Lcom/google/ads/interactivemedia/v3/impl/r;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/r;->h()Lcom/google/ads/interactivemedia/v3/impl/r$a;

    move-result-object v7

    .line 32
    const/4 v2, 0x0

    .line 34
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/b/k;->d()Lcom/google/ads/interactivemedia/v3/b/b;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/impl/g;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/g;->d()Ljava/util/Map;

    move-result-object v8

    .line 35
    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 36
    new-instance v9, Lcom/google/c/b/u$a;

    invoke-direct {v9}, Lcom/google/c/b/u$a;-><init>()V

    .line 37
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 38
    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/b/l;

    .line 39
    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/b/l;->a()I

    move-result v11

    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/b/l;->b()I

    move-result v2

    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v13, 0x17

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Lcom/google/c/b/u$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/b/u$a;

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v9}, Lcom/google/c/b/u$a;->a()Lcom/google/c/b/u;

    move-result-object v1

    .line 1052
    :goto_1
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/c/h$a;

    invoke-direct {v2}, Lcom/google/ads/interactivemedia/v3/impl/c/h$a;-><init>()V

    .line 44
    invoke-interface {v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/c/k$a;->b(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/c/k$a;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/google/ads/interactivemedia/v3/impl/c/k$a;->c(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/c/k$a;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/google/ads/interactivemedia/v3/impl/c/k$a;->a(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/c/k$a;

    move-result-object v2

    .line 45
    invoke-interface {v2, p1}, Lcom/google/ads/interactivemedia/v3/impl/c/k$a;->d(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/c/k$a;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Lcom/google/ads/interactivemedia/v3/impl/c/k$a;->e(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/c/k$a;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/google/ads/interactivemedia/v3/impl/c/k$a;->b(Ljava/util/Map;)Lcom/google/ads/interactivemedia/v3/impl/c/k$a;

    move-result-object v2

    .line 46
    move-object/from16 v0, p3

    invoke-interface {v2, v0}, Lcom/google/ads/interactivemedia/v3/impl/c/k$a;->a(Lcom/google/ads/interactivemedia/v3/b/n;)Lcom/google/ads/interactivemedia/v3/impl/c/k$a;

    move-result-object v2

    invoke-interface {v2, v7}, Lcom/google/ads/interactivemedia/v3/impl/c/k$a;->a(Lcom/google/ads/interactivemedia/v3/impl/r$a;)Lcom/google/ads/interactivemedia/v3/impl/c/k$a;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/c/k$a;->a(Ljava/util/Map;)Lcom/google/ads/interactivemedia/v3/impl/c/k$a;

    move-result-object v1

    .line 47
    move-object/from16 v0, p4

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/c/k$a;->a(Lcom/google/ads/interactivemedia/v3/impl/l$b;)Lcom/google/ads/interactivemedia/v3/impl/c/k$a;

    move-result-object v1

    .line 48
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/impl/c/k$a;->a()Lcom/google/ads/interactivemedia/v3/impl/c/k;

    move-result-object v1

    return-object v1

    :cond_1
    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()Lcom/google/ads/interactivemedia/v3/impl/r$a;
.end method

.method public abstract g()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract h()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract i()Lcom/google/ads/interactivemedia/v3/b/n;
.end method

.method public abstract j()Lcom/google/ads/interactivemedia/v3/impl/l$b;
.end method
