.class final Lcom/google/c/b/d;
.super Lcom/google/c/b/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/c/b/q",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final transient a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final transient b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field transient c:Lcom/google/c/b/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/c/b/q",
            "<TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/c/b/q;-><init>()V

    .line 39
    invoke-static {p1, p2}, Lcom/google/c/b/k;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    iput-object p1, p0, Lcom/google/c/b/d;->a:Ljava/lang/Object;

    .line 41
    iput-object p2, p0, Lcom/google/c/b/d;->b:Ljava/lang/Object;

    .line 42
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/c/b/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/c/b/q",
            "<TV;TK;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/c/b/q;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/c/b/d;->a:Ljava/lang/Object;

    .line 47
    iput-object p2, p0, Lcom/google/c/b/d;->b:Ljava/lang/Object;

    .line 48
    iput-object p3, p0, Lcom/google/c/b/d;->c:Lcom/google/c/b/q;

    .line 49
    return-void
.end method


# virtual methods
.method final a()Lcom/google/c/b/z;
    .locals 2
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
    .line 78
    iget-object v0, p0, Lcom/google/c/b/d;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/c/b/d;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/c/b/ab;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/b/z;->a(Ljava/lang/Object;)Lcom/google/c/b/z;

    move-result-object v0

    return-object v0
.end method

.method final b()Lcom/google/c/b/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/z",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/c/b/d;->a:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/c/b/z;->a(Ljava/lang/Object;)Lcom/google/c/b/z;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/google/c/b/q;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/q",
            "<TV;TK;>;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/c/b/d;->c:Lcom/google/c/b/q;

    .line 92
    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/google/c/b/d;

    iget-object v1, p0, Lcom/google/c/b/d;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/c/b/d;->a:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p0}, Lcom/google/c/b/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/c/b/q;)V

    iput-object v0, p0, Lcom/google/c/b/d;->c:Lcom/google/c/b/q;

    .line 96
    :cond_0
    return-object v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/c/b/d;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/c/b/d;->b:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/c/b/d;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/c/b/d;->b:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method
