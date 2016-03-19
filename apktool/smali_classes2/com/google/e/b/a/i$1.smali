.class final Lcom/google/e/b/a/i$1;
.super Lcom/google/e/b/a/i$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/e/b/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Lcom/google/e/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/e/s",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/google/e/e;

.field final synthetic c:Ljava/lang/reflect/Field;

.field final synthetic d:Lcom/google/e/c/a;

.field final synthetic e:Z

.field final synthetic f:Lcom/google/e/b/a/i;


# direct methods
.method constructor <init>(Lcom/google/e/b/a/i;Ljava/lang/String;ZZLcom/google/e/e;Ljava/lang/reflect/Field;Lcom/google/e/c/a;Z)V
    .locals 4

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/e/b/a/i$1;->f:Lcom/google/e/b/a/i;

    iput-object p5, p0, Lcom/google/e/b/a/i$1;->b:Lcom/google/e/e;

    iput-object p6, p0, Lcom/google/e/b/a/i$1;->c:Ljava/lang/reflect/Field;

    iput-object p7, p0, Lcom/google/e/b/a/i$1;->d:Lcom/google/e/c/a;

    iput-boolean p8, p0, Lcom/google/e/b/a/i$1;->e:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/google/e/b/a/i$b;-><init>(Ljava/lang/String;ZZ)V

    .line 106
    iget-object v0, p0, Lcom/google/e/b/a/i$1;->f:Lcom/google/e/b/a/i;

    iget-object v1, p0, Lcom/google/e/b/a/i$1;->b:Lcom/google/e/e;

    iget-object v2, p0, Lcom/google/e/b/a/i$1;->c:Ljava/lang/reflect/Field;

    iget-object v3, p0, Lcom/google/e/b/a/i$1;->d:Lcom/google/e/c/a;

    invoke-static {v0, v1, v2, v3}, Lcom/google/e/b/a/i;->a(Lcom/google/e/b/a/i;Lcom/google/e/e;Ljava/lang/reflect/Field;Lcom/google/e/c/a;)Lcom/google/e/s;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/b/a/i$1;->a:Lcom/google/e/s;

    return-void
.end method


# virtual methods
.method final a(Lcom/google/e/d/a;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/e/b/a/i$1;->a:Lcom/google/e/s;

    invoke-virtual {v0, p1}, Lcom/google/e/s;->a(Lcom/google/e/d/a;)Ljava/lang/Object;

    move-result-object v0

    .line 118
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/google/e/b/a/i$1;->e:Z

    if-nez v1, :cond_1

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/google/e/b/a/i$1;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    :cond_1
    return-void
.end method

.method final a(Lcom/google/e/d/c;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/e/b/a/i$1;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 111
    new-instance v1, Lcom/google/e/b/a/l;

    iget-object v2, p0, Lcom/google/e/b/a/i$1;->b:Lcom/google/e/e;

    iget-object v3, p0, Lcom/google/e/b/a/i$1;->a:Lcom/google/e/s;

    iget-object v4, p0, Lcom/google/e/b/a/i$1;->d:Lcom/google/e/c/a;

    invoke-virtual {v4}, Lcom/google/e/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/e/b/a/l;-><init>(Lcom/google/e/e;Lcom/google/e/s;Ljava/lang/reflect/Type;)V

    .line 113
    invoke-virtual {v1, p1, v0}, Lcom/google/e/s;->a(Lcom/google/e/d/c;Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 123
    iget-boolean v1, p0, Lcom/google/e/b/a/i$1;->h:Z

    if-nez v1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v0

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/google/e/b/a/i$1;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 125
    if-eq v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
