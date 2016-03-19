.class final Lcom/google/e/d/a$1;
.super Lcom/google/e/b/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/e/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1600
    invoke-direct {p0}, Lcom/google/e/b/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/e/d/a;)V
    .locals 3

    .prologue
    .line 1602
    instance-of v0, p1, Lcom/google/e/b/a/e;

    if-eqz v0, :cond_0

    .line 1603
    check-cast p1, Lcom/google/e/b/a/e;

    invoke-virtual {p1}, Lcom/google/e/b/a/e;->o()V

    .line 1615
    :goto_0
    return-void

    .line 1606
    :cond_0
    invoke-static {p1}, Lcom/google/e/d/a;->a(Lcom/google/e/d/a;)I

    move-result v0

    .line 1607
    if-nez v0, :cond_1

    .line 1608
    invoke-static {p1}, Lcom/google/e/d/a;->b(Lcom/google/e/d/a;)I

    move-result v0

    .line 1610
    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 1611
    const/16 v0, 0x9

    invoke-static {p1, v0}, Lcom/google/e/d/a;->a(Lcom/google/e/d/a;I)I

    goto :goto_0

    .line 1612
    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 1613
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/google/e/d/a;->a(Lcom/google/e/d/a;I)I

    goto :goto_0

    .line 1614
    :cond_3
    const/16 v1, 0xe

    if-ne v0, v1, :cond_4

    .line 1615
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/e/d/a;->a(Lcom/google/e/d/a;I)I

    goto :goto_0

    .line 1617
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a name but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/e/d/a;->f()Lcom/google/e/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/e/d/a;->c(Lcom/google/e/d/a;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/e/d/a;->d(Lcom/google/e/d/a;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/e/d/a;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
