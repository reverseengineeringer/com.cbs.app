.class final Lcom/google/e/b/a/m$7;
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
        "Ljava/math/BigInteger;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/google/e/s;-><init>()V

    return-void
.end method

.method private static b(Lcom/google/e/d/a;)Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/google/e/d/a;->f()Lcom/google/e/d/b;

    move-result-object v0

    sget-object v1, Lcom/google/e/d/b;->i:Lcom/google/e/d/b;

    if-ne v0, v1, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/google/e/d/a;->j()V

    .line 390
    const/4 v0, 0x0

    .line 393
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/google/e/d/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 394
    :catch_0
    move-exception v0

    .line 395
    new-instance v1, Lcom/google/e/q;

    invoke-direct {v1, v0}, Lcom/google/e/q;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final synthetic a(Lcom/google/e/d/a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 386
    invoke-static {p1}, Lcom/google/e/b/a/m$7;->b(Lcom/google/e/d/a;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/google/e/d/c;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 386
    check-cast p2, Ljava/math/BigInteger;

    .line 1400
    invoke-virtual {p1, p2}, Lcom/google/e/d/c;->a(Ljava/lang/Number;)Lcom/google/e/d/c;

    .line 386
    return-void
.end method
