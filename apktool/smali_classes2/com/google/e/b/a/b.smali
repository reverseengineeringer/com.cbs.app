.class public final Lcom/google/e/b/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/e/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/e/b/a/b$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/e/b/c;


# direct methods
.method public constructor <init>(Lcom/google/e/b/c;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/e/b/a/b;->a:Lcom/google/e/b/c;

    .line 41
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/e/e;Lcom/google/e/c/a;)Lcom/google/e/s;
    .locals 4
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
    .line 44
    invoke-virtual {p2}, Lcom/google/e/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 46
    invoke-virtual {p2}, Lcom/google/e/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    .line 47
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    .line 51
    :cond_0
    invoke-static {v0, v1}, Lcom/google/e/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 52
    invoke-static {v1}, Lcom/google/e/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/e/c/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/e/e;->a(Lcom/google/e/c/a;)Lcom/google/e/s;

    move-result-object v2

    .line 53
    iget-object v0, p0, Lcom/google/e/b/a/b;->a:Lcom/google/e/b/c;

    invoke-virtual {v0, p2}, Lcom/google/e/b/c;->a(Lcom/google/e/c/a;)Lcom/google/e/b/h;

    move-result-object v3

    .line 56
    new-instance v0, Lcom/google/e/b/a/b$a;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/e/b/a/b$a;-><init>(Lcom/google/e/e;Ljava/lang/reflect/Type;Lcom/google/e/s;Lcom/google/e/b/h;)V

    goto :goto_0
.end method
