.class public final Lcom/google/c/b/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/c/a/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3458
    sget-object v0, Lcom/google/c/b/l;->a:Lcom/google/c/a/b;

    const-string v1, "="

    invoke-virtual {v0, v1}, Lcom/google/c/a/b;->c(Ljava/lang/String;)Lcom/google/c/a/b$a;

    move-result-object v0

    sput-object v0, Lcom/google/c/b/ab;->a:Lcom/google/c/a/b$a;

    return-void
.end method

.method static a(Lcom/google/c/b/g;)Lcom/google/c/b/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/c/b/g",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Lcom/google/c/b/g",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Lcom/google/c/b/ab$1;

    invoke-direct {v0, p0}, Lcom/google/c/b/ab$1;-><init>(Lcom/google/c/b/g;)V

    return-object v0
.end method

.method static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3465
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/c/b/l;->a(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3467
    sget-object v1, Lcom/google/c/b/ab;->a:Lcom/google/c/a/b$a;

    .line 4322
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 4380
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/c/a/b$a;->a(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;

    .line 3468
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1207
    new-instance v0, Lcom/google/c/b/s;

    invoke-direct {v0, p0, p1}, Lcom/google/c/b/s;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static a(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 3449
    if-ne p0, p1, :cond_0

    .line 3450
    const/4 v0, 0x1

    .line 3455
    :goto_0
    return v0

    .line 3451
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 3452
    check-cast p1, Ljava/util/Map;

    .line 3453
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 3455
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
