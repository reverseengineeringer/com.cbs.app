.class final Lcom/google/c/b/x;
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
        "<TK;>;"
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
    invoke-direct {p0}, Lcom/google/c/b/z;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/c/b/x;->a:Lcom/google/c/b/u;

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
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/google/c/b/x;->d()Lcom/google/c/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/b/t;->b()Lcom/google/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method final c()Lcom/google/c/b/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/t",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/c/b/x;->a:Lcom/google/c/b/u;

    invoke-virtual {v0}, Lcom/google/c/b/u;->d()Lcom/google/c/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/b/z;->d()Lcom/google/c/b/t;

    move-result-object v0

    .line 59
    new-instance v1, Lcom/google/c/b/x$1;

    invoke-direct {v1, p0, v0}, Lcom/google/c/b/x$1;-><init>(Lcom/google/c/b/x;Lcom/google/c/b/t;)V

    return-object v1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/c/b/x;->a:Lcom/google/c/b/u;

    invoke-virtual {v0, p1}, Lcom/google/c/b/u;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 33
    .line 1048
    invoke-virtual {p0}, Lcom/google/c/b/x;->d()Lcom/google/c/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/b/t;->b()Lcom/google/c/b/g;

    move-result-object v0

    .line 33
    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/c/b/x;->a:Lcom/google/c/b/u;

    invoke-virtual {v0}, Lcom/google/c/b/u;->size()I

    move-result v0

    return v0
.end method
