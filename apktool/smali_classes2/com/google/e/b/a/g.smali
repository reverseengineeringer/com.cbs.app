.class public final Lcom/google/e/b/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/e/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/e/b/a/g$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/e/b/c;

.field private final b:Z


# direct methods
.method public constructor <init>(Lcom/google/e/b/c;Z)V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/google/e/b/a/g;->a:Lcom/google/e/b/c;

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/e/b/a/g;->b:Z

    .line 113
    return-void
.end method

.method static synthetic a(Lcom/google/e/b/a/g;)Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/google/e/b/a/g;->b:Z

    return v0
.end method


# virtual methods
.method public final a(Lcom/google/e/e;Lcom/google/e/c/a;)Lcom/google/e/s;
    .locals 8
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
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 116
    invoke-virtual {p2}, Lcom/google/e/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 118
    invoke-virtual {p2}, Lcom/google/e/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    .line 119
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 133
    :goto_0
    return-object v0

    .line 123
    :cond_0
    invoke-static {v0}, Lcom/google/e/b/b;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 124
    invoke-static {v0, v1}, Lcom/google/e/b/b;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 125
    aget-object v0, v1, v3

    .line 1140
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_1

    const-class v2, Ljava/lang/Boolean;

    if-ne v0, v2, :cond_2

    :cond_1
    sget-object v4, Lcom/google/e/b/a/m;->f:Lcom/google/e/s;

    .line 126
    :goto_1
    aget-object v0, v1, v5

    invoke-static {v0}, Lcom/google/e/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/e/c/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/e/e;->a(Lcom/google/e/c/a;)Lcom/google/e/s;

    move-result-object v6

    .line 127
    iget-object v0, p0, Lcom/google/e/b/a/g;->a:Lcom/google/e/b/c;

    invoke-virtual {v0, p2}, Lcom/google/e/b/c;->a(Lcom/google/e/c/a;)Lcom/google/e/b/h;

    move-result-object v7

    .line 131
    new-instance v0, Lcom/google/e/b/a/g$a;

    aget-object v3, v1, v3

    aget-object v5, v1, v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/e/b/a/g$a;-><init>(Lcom/google/e/b/a/g;Lcom/google/e/e;Ljava/lang/reflect/Type;Lcom/google/e/s;Ljava/lang/reflect/Type;Lcom/google/e/s;Lcom/google/e/b/h;)V

    goto :goto_0

    .line 1140
    :cond_2
    invoke-static {v0}, Lcom/google/e/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/e/c/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/e/e;->a(Lcom/google/e/c/a;)Lcom/google/e/s;

    move-result-object v4

    goto :goto_1
.end method
