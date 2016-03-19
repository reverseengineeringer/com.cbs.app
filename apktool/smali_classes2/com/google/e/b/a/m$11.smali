.class final Lcom/google/e/b/a/m$11;
.super Lcom/google/e/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/e/b/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/e/s",
        "<",
        "Ljava/net/URI;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/google/e/s;-><init>()V

    return-void
.end method

.method private static b(Lcom/google/e/d/a;)Ljava/net/URI;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 463
    invoke-virtual {p0}, Lcom/google/e/d/a;->f()Lcom/google/e/d/b;

    move-result-object v1

    sget-object v2, Lcom/google/e/d/b;->i:Lcom/google/e/d/b;

    if-ne v1, v2, :cond_1

    .line 464
    invoke-virtual {p0}, Lcom/google/e/d/a;->j()V

    .line 469
    :cond_0
    :goto_0
    return-object v0

    .line 468
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/e/d/a;->h()Ljava/lang/String;

    move-result-object v1

    .line 469
    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 470
    :catch_0
    move-exception v0

    .line 471
    new-instance v1, Lcom/google/e/j;

    invoke-direct {v1, v0}, Lcom/google/e/j;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final synthetic a(Lcom/google/e/d/a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 460
    invoke-static {p1}, Lcom/google/e/b/a/m$11;->b(Lcom/google/e/d/a;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/google/e/d/c;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 460
    check-cast p2, Ljava/net/URI;

    .line 1476
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/e/d/c;->b(Ljava/lang/String;)Lcom/google/e/d/c;

    .line 460
    return-void

    .line 1476
    :cond_0
    invoke-virtual {p2}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
