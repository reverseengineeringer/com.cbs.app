.class public abstract Lcom/google/c/b/r;
.super Ljava/util/AbstractCollection;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private transient a:Lcom/google/c/b/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/c/b/t",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method a([Ljava/lang/Object;I)I
    .locals 3

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/google/c/b/r;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 200
    add-int/lit8 v0, p2, 0x1

    aput-object v2, p1, p2

    move p2, v0

    .line 201
    goto :goto_0

    .line 202
    :cond_0
    return p2
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 96
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 120
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

.method c()Lcom/google/c/b/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/t",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/google/c/b/r;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 182
    new-instance v0, Lcom/google/c/b/ad;

    invoke-virtual {p0}, Lcom/google/c/b/r;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/c/b/ad;-><init>(Lcom/google/c/b/r;[Ljava/lang/Object;)V

    :goto_0
    return-object v0

    .line 178
    :pswitch_0
    invoke-static {}, Lcom/google/c/b/t;->e()Lcom/google/c/b/t;

    move-result-object v0

    goto :goto_0

    .line 180
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/c/b/r;->b()Lcom/google/c/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/b/g;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/b/t;->a(Ljava/lang/Object;)Lcom/google/c/b/t;

    move-result-object v0

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final clear()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 156
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 84
    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Lcom/google/c/b/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/t",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/c/b/r;->a:Lcom/google/c/b/t;

    .line 172
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/c/b/r;->c()Lcom/google/c/b/t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/r;->a:Lcom/google/c/b/t;

    :cond_0
    return-object v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/c/b/r;->b()Lcom/google/c/b/g;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 108
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 132
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 144
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/google/c/b/r;->size()I

    move-result v0

    .line 61
    if-nez v0, :cond_0

    .line 62
    sget-object v0, Lcom/google/c/b/ac;->a:[Ljava/lang/Object;

    .line 66
    :goto_0
    return-object v0

    .line 64
    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 65
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/c/b/r;->a([Ljava/lang/Object;I)I

    goto :goto_0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {p1}, Lcom/google/c/a/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-virtual {p0}, Lcom/google/c/b/r;->size()I

    move-result v0

    .line 73
    array-length v1, p1

    if-ge v1, v0, :cond_1

    .line 74
    invoke-static {p1, v0}, Lcom/google/c/b/ac;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 78
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/c/b/r;->a([Ljava/lang/Object;I)I

    .line 79
    return-object p1

    .line 75
    :cond_1
    array-length v1, p1

    if-le v1, v0, :cond_0

    .line 76
    const/4 v1, 0x0

    aput-object v1, p1, v0

    goto :goto_0
.end method
