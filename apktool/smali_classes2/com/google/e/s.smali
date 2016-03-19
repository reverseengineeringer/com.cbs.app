.class public abstract Lcom/google/e/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/e/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/e/i;"
        }
    .end annotation

    .prologue
    .line 233
    :try_start_0
    new-instance v0, Lcom/google/e/b/a/f;

    invoke-direct {v0}, Lcom/google/e/b/a/f;-><init>()V

    .line 234
    invoke-virtual {p0, v0, p1}, Lcom/google/e/s;->a(Lcom/google/e/d/c;Ljava/lang/Object;)V

    .line 235
    invoke-virtual {v0}, Lcom/google/e/b/a/f;->a()Lcom/google/e/i;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    new-instance v1, Lcom/google/e/j;

    invoke-direct {v1, v0}, Lcom/google/e/j;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract a(Lcom/google/e/d/a;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/e/d/a;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/google/e/d/c;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/e/d/c;",
            "TT;)V"
        }
    .end annotation
.end method
