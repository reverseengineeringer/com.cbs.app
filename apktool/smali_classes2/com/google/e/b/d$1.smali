.class final Lcom/google/e/b/d$1;
.super Lcom/google/e/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/e/b/d;->a(Lcom/google/e/e;Lcom/google/e/c/a;)Lcom/google/e/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/e/s",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/google/e/e;

.field final synthetic d:Lcom/google/e/c/a;

.field final synthetic e:Lcom/google/e/b/d;

.field private f:Lcom/google/e/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/e/s",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/e/b/d;ZZLcom/google/e/e;Lcom/google/e/c/a;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/e/b/d$1;->e:Lcom/google/e/b/d;

    iput-boolean p2, p0, Lcom/google/e/b/d$1;->a:Z

    iput-boolean p3, p0, Lcom/google/e/b/d$1;->b:Z

    iput-object p4, p0, Lcom/google/e/b/d$1;->c:Lcom/google/e/e;

    iput-object p5, p0, Lcom/google/e/b/d$1;->d:Lcom/google/e/c/a;

    invoke-direct {p0}, Lcom/google/e/s;-><init>()V

    return-void
.end method

.method private a()Lcom/google/e/s;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/e/s",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/e/b/d$1;->f:Lcom/google/e/s;

    .line 142
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/e/b/d$1;->c:Lcom/google/e/e;

    iget-object v1, p0, Lcom/google/e/b/d$1;->e:Lcom/google/e/b/d;

    iget-object v2, p0, Lcom/google/e/b/d$1;->d:Lcom/google/e/c/a;

    invoke-virtual {v0, v1, v2}, Lcom/google/e/e;->a(Lcom/google/e/t;Lcom/google/e/c/a;)Lcom/google/e/s;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/b/d$1;->f:Lcom/google/e/s;

    goto :goto_0
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
    .line 125
    iget-boolean v0, p0, Lcom/google/e/b/d$1;->a:Z

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p1}, Lcom/google/e/d/a;->n()V

    .line 127
    const/4 v0, 0x0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/e/b/d$1;->a()Lcom/google/e/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/e/s;->a(Lcom/google/e/d/a;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/google/e/d/c;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/e/d/c;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/google/e/b/d$1;->b:Z

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p1}, Lcom/google/e/d/c;->f()Lcom/google/e/d/c;

    .line 138
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/google/e/b/d$1;->a()Lcom/google/e/s;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/e/s;->a(Lcom/google/e/d/c;Ljava/lang/Object;)V

    goto :goto_0
.end method
