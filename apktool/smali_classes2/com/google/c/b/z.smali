.class public abstract Lcom/google/c/b/z;
.super Lcom/google/c/b/r;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/c/b/r",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/google/c/b/r;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/c/b/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/c/b/z",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Lcom/google/c/b/f;

    invoke-direct {v0, p0}, Lcom/google/c/b/f;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static e()Lcom/google/c/b/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/c/b/z",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 84
    sget-object v0, Lcom/google/c/b/n;->a:Lcom/google/c/b/n;

    return-object v0
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x0

    return v0
.end method

.method public abstract b()Lcom/google/c/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/g",
            "<TE;>;"
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 391
    if-ne p1, p0, :cond_0

    .line 392
    const/4 v0, 0x1

    .line 399
    :goto_0
    return v0

    .line 393
    :cond_0
    instance-of v0, p1, Lcom/google/c/b/z;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/c/b/z;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/c/b/z;

    invoke-virtual {v0}, Lcom/google/c/b/z;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/c/b/z;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 397
    const/4 v0, 0x0

    goto :goto_0

    .line 399
    :cond_1
    invoke-static {p0, p1}, Lcom/google/c/b/c;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 403
    .line 2341
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v0, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2342
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    .line 2344
    xor-int/lit8 v0, v0, -0x1

    xor-int/lit8 v0, v0, -0x1

    .line 2346
    goto :goto_0

    :cond_0
    move v2, v1

    .line 2342
    goto :goto_1

    .line 403
    :cond_1
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/google/c/b/z;->b()Lcom/google/c/b/g;

    move-result-object v0

    return-object v0
.end method
