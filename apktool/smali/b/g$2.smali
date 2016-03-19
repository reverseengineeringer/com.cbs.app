.class final Lb/g$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/f",
        "<TTResult;",
        "Lb/g",
        "<TTContinuationResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lb/e;

.field final synthetic b:Lb/f;

.field final synthetic c:Lb/g;


# direct methods
.method constructor <init>(Lb/g;Lb/e;Lb/f;)V
    .locals 1

    .prologue
    .line 638
    iput-object p1, p0, Lb/g$2;->c:Lb/g;

    const/4 v0, 0x0

    iput-object v0, p0, Lb/g$2;->a:Lb/e;

    iput-object p3, p0, Lb/g$2;->b:Lb/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic then(Lb/g;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 638
    .line 1641
    iget-object v0, p0, Lb/g$2;->a:Lb/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/g$2;->a:Lb/e;

    invoke-virtual {v0}, Lb/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1642
    invoke-static {}, Lb/g;->f()Lb/g;

    move-result-object v0

    .line 1648
    :goto_0
    return-object v0

    .line 1645
    :cond_0
    invoke-virtual {p1}, Lb/g;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1646
    invoke-virtual {p1}, Lb/g;->e()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Lb/g;->a(Ljava/lang/Exception;)Lb/g;

    move-result-object v0

    goto :goto_0

    .line 1647
    :cond_1
    invoke-virtual {p1}, Lb/g;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1648
    invoke-static {}, Lb/g;->f()Lb/g;

    move-result-object v0

    goto :goto_0

    .line 1650
    :cond_2
    iget-object v0, p0, Lb/g$2;->b:Lb/f;

    invoke-virtual {p1, v0}, Lb/g;->a(Lb/f;)Lb/g;

    move-result-object v0

    goto :goto_0
.end method
