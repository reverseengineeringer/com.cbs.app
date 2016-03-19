.class abstract Lcom/google/c/b/p;
.super Lcom/google/c/b/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/c/b/t",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/c/b/t;-><init>()V

    .line 62
    return-void
.end method


# virtual methods
.method abstract a()Lcom/google/c/b/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/r",
            "<TE;>;"
        }
    .end annotation
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/google/c/b/p;->a()Lcom/google/c/b/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/c/b/r;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/google/c/b/p;->a()Lcom/google/c/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/b/r;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/c/b/p;->a()Lcom/google/c/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/b/r;->size()I

    move-result v0

    return v0
.end method
