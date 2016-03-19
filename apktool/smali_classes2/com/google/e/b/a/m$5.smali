.class final Lcom/google/e/b/a/m$5;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/google/e/s;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/e/d/a;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 348
    .line 1351
    invoke-virtual {p1}, Lcom/google/e/d/a;->f()Lcom/google/e/d/b;

    move-result-object v0

    .line 1352
    sget-object v1, Lcom/google/e/d/b;->i:Lcom/google/e/d/b;

    if-ne v0, v1, :cond_0

    .line 1353
    invoke-virtual {p1}, Lcom/google/e/d/a;->j()V

    .line 1354
    const/4 v0, 0x0

    .line 1358
    :goto_0
    return-object v0

    .line 1357
    :cond_0
    sget-object v1, Lcom/google/e/d/b;->h:Lcom/google/e/d/b;

    if-ne v0, v1, :cond_1

    .line 1358
    invoke-virtual {p1}, Lcom/google/e/d/a;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1360
    :cond_1
    invoke-virtual {p1}, Lcom/google/e/d/a;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic a(Lcom/google/e/d/c;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 348
    check-cast p2, Ljava/lang/String;

    .line 1364
    invoke-virtual {p1, p2}, Lcom/google/e/d/c;->b(Ljava/lang/String;)Lcom/google/e/d/c;

    .line 348
    return-void
.end method
