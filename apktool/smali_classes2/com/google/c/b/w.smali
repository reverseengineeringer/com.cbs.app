.class abstract Lcom/google/c/b/w;
.super Lcom/google/c/b/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/c/b/z",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/c/b/z;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 46
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 47
    check-cast p1, Ljava/util/Map$Entry;

    .line 48
    invoke-virtual {p0}, Lcom/google/c/b/w;->h_()Lcom/google/c/b/u;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/c/b/u;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 51
    :cond_0
    return v0
.end method

.method abstract h_()Lcom/google/c/b/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/u",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public size()I
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/google/c/b/w;->h_()Lcom/google/c/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/b/u;->size()I

    move-result v0

    return v0
.end method
