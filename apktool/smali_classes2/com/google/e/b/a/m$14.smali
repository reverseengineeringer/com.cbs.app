.class final Lcom/google/e/b/a/m$14;
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
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 501
    invoke-direct {p0}, Lcom/google/e/s;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/e/d/a;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 501
    .line 1504
    invoke-virtual {p1}, Lcom/google/e/d/a;->f()Lcom/google/e/d/b;

    move-result-object v0

    sget-object v1, Lcom/google/e/d/b;->i:Lcom/google/e/d/b;

    if-ne v0, v1, :cond_0

    .line 1505
    invoke-virtual {p1}, Lcom/google/e/d/a;->j()V

    .line 1506
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1508
    :cond_0
    invoke-virtual {p1}, Lcom/google/e/d/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic a(Lcom/google/e/d/c;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 501
    check-cast p2, Ljava/util/UUID;

    .line 1512
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/e/d/c;->b(Ljava/lang/String;)Lcom/google/e/d/c;

    .line 501
    return-void

    .line 1512
    :cond_0
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
