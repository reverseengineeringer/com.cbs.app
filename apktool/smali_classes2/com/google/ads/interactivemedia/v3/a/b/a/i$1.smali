.class final Lcom/google/ads/interactivemedia/v3/a/b/a/i$1;
.super Lcom/google/ads/interactivemedia/v3/a/b/a/i$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/b/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Lcom/google/ads/interactivemedia/v3/a/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/a/w",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/google/ads/interactivemedia/v3/a/f;

.field final synthetic c:Ljava/lang/reflect/Field;

.field final synthetic d:Lcom/google/ads/interactivemedia/v3/a/c/a;

.field final synthetic e:Z

.field final synthetic f:Lcom/google/ads/interactivemedia/v3/a/b/a/i;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/a/b/a/i;Ljava/lang/String;ZZLcom/google/ads/interactivemedia/v3/a/f;Ljava/lang/reflect/Field;Lcom/google/ads/interactivemedia/v3/a/c/a;Z)V
    .locals 4

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/i$1;->f:Lcom/google/ads/interactivemedia/v3/a/b/a/i;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/i$1;->b:Lcom/google/ads/interactivemedia/v3/a/f;

    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/i$1;->c:Ljava/lang/reflect/Field;

    iput-object p7, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/i$1;->d:Lcom/google/ads/interactivemedia/v3/a/c/a;

    iput-boolean p8, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/i$1;->e:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/a/b/a/i$b;-><init>(Ljava/lang/String;ZZ)V

    .line 92
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/i$1;->f:Lcom/google/ads/interactivemedia/v3/a/b/a/i;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/i$1;->b:Lcom/google/ads/interactivemedia/v3/a/f;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/i$1;->c:Ljava/lang/reflect/Field;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/i$1;->d:Lcom/google/ads/interactivemedia/v3/a/c/a;

    invoke-static {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/b/a/i;->a(Lcom/google/ads/interactivemedia/v3/a/b/a/i;Lcom/google/ads/interactivemedia/v3/a/f;Ljava/lang/reflect/Field;Lcom/google/ads/interactivemedia/v3/a/c/a;)Lcom/google/ads/interactivemedia/v3/a/w;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/i$1;->a:Lcom/google/ads/interactivemedia/v3/a/w;

    return-void
.end method


# virtual methods
.method final a(Lcom/google/ads/interactivemedia/v3/a/d/a;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/i$1;->a:Lcom/google/ads/interactivemedia/v3/a/w;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/a/w;->a(Lcom/google/ads/interactivemedia/v3/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    .line 104
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/i$1;->e:Z

    if-nez v1, :cond_1

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/i$1;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    :cond_1
    return-void
.end method

.method final a(Lcom/google/ads/interactivemedia/v3/a/d/c;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/i$1;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 97
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/b/a/l;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/i$1;->b:Lcom/google/ads/interactivemedia/v3/a/f;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/i$1;->a:Lcom/google/ads/interactivemedia/v3/a/w;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/i$1;->d:Lcom/google/ads/interactivemedia/v3/a/c/a;

    .line 98
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/a/b/a/l;-><init>(Lcom/google/ads/interactivemedia/v3/a/f;Lcom/google/ads/interactivemedia/v3/a/w;Ljava/lang/reflect/Type;)V

    .line 99
    invoke-virtual {v1, p1, v0}, Lcom/google/ads/interactivemedia/v3/a/w;->a(Lcom/google/ads/interactivemedia/v3/a/d/c;Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 109
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/i$1;->h:Z

    if-nez v1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v0

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/i$1;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 111
    if-eq v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
