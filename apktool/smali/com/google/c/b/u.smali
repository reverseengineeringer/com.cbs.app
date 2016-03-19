.class public abstract Lcom/google/c/b/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/c/b/u$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final a:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry",
            "<**>;"
        }
    .end annotation
.end field


# instance fields
.field private transient b:Lcom/google/c/b/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/c/b/z",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient c:Lcom/google/c/b/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/c/b/z",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient d:Lcom/google/c/b/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/c/b/r",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Map$Entry;

    sput-object v0, Lcom/google/c/b/u;->a:[Ljava/util/Map$Entry;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/b/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lcom/google/c/b/u",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p0, p1}, Lcom/google/c/b/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/b/q;

    move-result-object v0

    return-object v0
.end method

.method static c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/b/v$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lcom/google/c/b/v$a",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {p0, p1}, Lcom/google/c/b/k;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    new-instance v0, Lcom/google/c/b/v$a;

    invoke-direct {v0, p0, p1}, Lcom/google/c/b/v$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static h()Lcom/google/c/b/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/c/b/u",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {}, Lcom/google/c/b/q;->f()Lcom/google/c/b/q;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method abstract a()Lcom/google/c/b/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/z",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end method

.method b()Lcom/google/c/b/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/z",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 411
    new-instance v0, Lcom/google/c/b/x;

    invoke-direct {v0, p0}, Lcom/google/c/b/x;-><init>(Lcom/google/c/b/u;)V

    return-object v0
.end method

.method public final clear()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 362
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 372
    invoke-virtual {p0, p1}, Lcom/google/c/b/u;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/google/c/b/u;->g()Lcom/google/c/b/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/c/b/r;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d()Lcom/google/c/b/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/z",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lcom/google/c/b/u;->b:Lcom/google/c/b/z;

    .line 393
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/c/b/u;->a()Lcom/google/c/b/z;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/u;->b:Lcom/google/c/b/z;

    :cond_0
    return-object v0
.end method

.method public e()Lcom/google/c/b/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/z",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 406
    iget-object v0, p0, Lcom/google/c/b/u;->c:Lcom/google/c/b/z;

    .line 407
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/c/b/u;->b()Lcom/google/c/b/z;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/u;->c:Lcom/google/c/b/z;

    :cond_0
    return-object v0
.end method

.method public synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/google/c/b/u;->d()Lcom/google/c/b/z;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 507
    invoke-static {p0, p1}, Lcom/google/c/b/ab;->a(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public g()Lcom/google/c/b/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/r",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/c/b/u;->d:Lcom/google/c/b/r;

    .line 423
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/c/b/y;

    invoke-direct {v0, p0}, Lcom/google/c/b/y;-><init>(Lcom/google/c/b/u;)V

    iput-object v0, p0, Lcom/google/c/b/u;->d:Lcom/google/c/b/r;

    :cond_0
    return-object v0
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/google/c/b/u;->d()Lcom/google/c/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/b/z;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/google/c/b/u;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/google/c/b/u;->e()Lcom/google/c/b/z;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 326
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 350
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 338
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    invoke-static {p0}, Lcom/google/c/b/ab;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/google/c/b/u;->g()Lcom/google/c/b/r;

    move-result-object v0

    return-object v0
.end method
