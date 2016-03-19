.class public final Lcom/google/e/l;
.super Lcom/google/e/i;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/e/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/e/b/g",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/e/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/e/i;-><init>()V

    .line 33
    new-instance v0, Lcom/google/e/b/g;

    invoke-direct {v0}, Lcom/google/e/b/g;-><init>()V

    iput-object v0, p0, Lcom/google/e/l;->a:Lcom/google/e/b/g;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/e/g;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/e/l;->a:Lcom/google/e/b/g;

    invoke-virtual {v0, p1}, Lcom/google/e/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/e/g;

    return-object v0
.end method

.method public final a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/e/i;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/e/l;->a:Lcom/google/e/b/g;

    invoke-virtual {v0}, Lcom/google/e/b/g;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/google/e/i;)V
    .locals 1

    .prologue
    .line 54
    if-nez p2, :cond_0

    .line 55
    sget-object p2, Lcom/google/e/k;->a:Lcom/google/e/k;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/google/e/l;->a:Lcom/google/e/b/g;

    invoke-virtual {v0, p1, p2}, Lcom/google/e/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 187
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/google/e/l;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/e/l;

    iget-object v0, p1, Lcom/google/e/l;->a:Lcom/google/e/b/g;

    iget-object v1, p0, Lcom/google/e/l;->a:Lcom/google/e/b/g;

    invoke-virtual {v0, v1}, Lcom/google/e/b/g;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/e/l;->a:Lcom/google/e/b/g;

    invoke-virtual {v0}, Lcom/google/e/b/g;->hashCode()I

    move-result v0

    return v0
.end method
