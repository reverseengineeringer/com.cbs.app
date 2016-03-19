.class final Lcom/google/c/b/y;
.super Lcom/google/c/b/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/c/b/r",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/c/b/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/c/b/u",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/c/b/u;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/c/b/u",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/c/b/r;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/c/b/y;->a:Lcom/google/c/b/u;

    .line 39
    return-void
.end method


# virtual methods
.method public final b()Lcom/google/c/b/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/g",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/c/b/y;->a:Lcom/google/c/b/u;

    invoke-virtual {v0}, Lcom/google/c/b/u;->d()Lcom/google/c/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/b/z;->b()Lcom/google/c/b/g;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/b/ab;->a(Lcom/google/c/b/g;)Lcom/google/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method final c()Lcom/google/c/b/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/t",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/c/b/y;->a:Lcom/google/c/b/u;

    invoke-virtual {v0}, Lcom/google/c/b/u;->d()Lcom/google/c/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/b/z;->d()Lcom/google/c/b/t;

    move-result-object v0

    .line 64
    new-instance v1, Lcom/google/c/b/y$1;

    invoke-direct {v1, p0, v0}, Lcom/google/c/b/y$1;-><init>(Lcom/google/c/b/y;Lcom/google/c/b/t;)V

    return-object v1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 53
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/c/b/y;->b()Lcom/google/c/b/g;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/c/b/aa;->a(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/c/b/y;->b()Lcom/google/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/c/b/y;->a:Lcom/google/c/b/u;

    invoke-virtual {v0}, Lcom/google/c/b/u;->size()I

    move-result v0

    return v0
.end method
