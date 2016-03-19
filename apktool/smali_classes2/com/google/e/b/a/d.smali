.class public final Lcom/google/e/b/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/e/t;


# instance fields
.field private final a:Lcom/google/e/b/c;


# direct methods
.method public constructor <init>(Lcom/google/e/b/c;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/e/b/a/d;->a:Lcom/google/e/b/c;

    .line 38
    return-void
.end method

.method static a(Lcom/google/e/b/c;Lcom/google/e/e;Lcom/google/e/c/a;Lcom/google/e/a/b;)Lcom/google/e/s;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/e/b/c;",
            "Lcom/google/e/e;",
            "Lcom/google/e/c/a",
            "<*>;",
            "Lcom/google/e/a/b;",
            ")",
            "Lcom/google/e/s",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 52
    invoke-interface {p3}, Lcom/google/e/a/b;->a()Ljava/lang/Class;

    move-result-object v0

    .line 53
    const-class v1, Lcom/google/e/s;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-static {v0}, Lcom/google/e/c/a;->a(Ljava/lang/Class;)Lcom/google/e/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/e/b/c;->a(Lcom/google/e/c/a;)Lcom/google/e/b/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/e/b/h;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/e/s;

    .line 59
    :goto_0
    return-object v0

    .line 57
    :cond_0
    const-class v1, Lcom/google/e/t;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    invoke-static {v0}, Lcom/google/e/c/a;->a(Ljava/lang/Class;)Lcom/google/e/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/e/b/c;->a(Lcom/google/e/c/a;)Lcom/google/e/b/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/e/b/h;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/e/t;

    invoke-interface {v0, p1, p2}, Lcom/google/e/t;->a(Lcom/google/e/e;Lcom/google/e/c/a;)Lcom/google/e/s;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "@JsonAdapter value must be TypeAdapter or TypeAdapterFactory reference."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/e/e;Lcom/google/e/c/a;)Lcom/google/e/s;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/e/e;",
            "Lcom/google/e/c/a",
            "<TT;>;)",
            "Lcom/google/e/s",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p2}, Lcom/google/e/c/a;->a()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/e/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/e/a/b;

    .line 43
    if-nez v0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/e/b/a/d;->a:Lcom/google/e/b/c;

    invoke-static {v1, p1, p2, v0}, Lcom/google/e/b/a/d;->a(Lcom/google/e/b/c;Lcom/google/e/e;Lcom/google/e/c/a;Lcom/google/e/a/b;)Lcom/google/e/s;

    move-result-object v0

    goto :goto_0
.end method
