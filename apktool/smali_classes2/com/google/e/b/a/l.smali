.class final Lcom/google/e/b/a/l;
.super Lcom/google/e/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/e/s",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/e/e;

.field private final b:Lcom/google/e/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/e/s",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/google/e/e;Lcom/google/e/s;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/e/e;",
            "Lcom/google/e/s",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/e/s;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/e/b/a/l;->a:Lcom/google/e/e;

    .line 34
    iput-object p2, p0, Lcom/google/e/b/a/l;->b:Lcom/google/e/s;

    .line 35
    iput-object p3, p0, Lcom/google/e/b/a/l;->c:Ljava/lang/reflect/Type;

    .line 36
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/e/d/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/e/d/a;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/e/b/a/l;->b:Lcom/google/e/s;

    invoke-virtual {v0, p1}, Lcom/google/e/s;->a(Lcom/google/e/d/a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/e/d/c;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/e/d/c;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v1, p0, Lcom/google/e/b/a/l;->b:Lcom/google/e/s;

    .line 53
    iget-object v0, p0, Lcom/google/e/b/a/l;->c:Ljava/lang/reflect/Type;

    .line 1075
    if-eqz p2, :cond_1

    const-class v2, Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    instance-of v2, v0, Ljava/lang/reflect/TypeVariable;

    if-nez v2, :cond_0

    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 1077
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 54
    :cond_1
    iget-object v2, p0, Lcom/google/e/b/a/l;->c:Ljava/lang/reflect/Type;

    if-eq v0, v2, :cond_3

    .line 55
    iget-object v1, p0, Lcom/google/e/b/a/l;->a:Lcom/google/e/e;

    invoke-static {v0}, Lcom/google/e/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/e/c/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/e/e;->a(Lcom/google/e/c/a;)Lcom/google/e/s;

    move-result-object v0

    .line 56
    instance-of v1, v0, Lcom/google/e/b/a/i$a;

    if-eqz v1, :cond_2

    .line 59
    iget-object v1, p0, Lcom/google/e/b/a/l;->b:Lcom/google/e/s;

    instance-of v1, v1, Lcom/google/e/b/a/i$a;

    if-nez v1, :cond_2

    .line 62
    iget-object v0, p0, Lcom/google/e/b/a/l;->b:Lcom/google/e/s;

    .line 68
    :cond_2
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/google/e/s;->a(Lcom/google/e/d/c;Ljava/lang/Object;)V

    .line 69
    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
