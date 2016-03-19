.class final Lcom/google/e/b/a/m$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/e/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/e/b/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/e/e;Lcom/google/e/c/a;)Lcom/google/e/s;
    .locals 2
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
    .line 521
    invoke-virtual {p2}, Lcom/google/e/c/a;->a()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/sql/Timestamp;

    if-eq v0, v1, :cond_0

    .line 522
    const/4 v0, 0x0

    .line 526
    :goto_0
    return-object v0

    .line 525
    :cond_0
    const-class v0, Ljava/util/Date;

    invoke-virtual {p1, v0}, Lcom/google/e/e;->a(Ljava/lang/Class;)Lcom/google/e/s;

    move-result-object v1

    .line 526
    new-instance v0, Lcom/google/e/b/a/m$15$1;

    invoke-direct {v0, p0, v1}, Lcom/google/e/b/a/m$15$1;-><init>(Lcom/google/e/b/a/m$15;Lcom/google/e/s;)V

    goto :goto_0
.end method
