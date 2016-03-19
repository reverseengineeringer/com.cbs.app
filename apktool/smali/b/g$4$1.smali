.class final Lb/g$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/g$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/f",
        "<TTContinuationResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lb/g$4;


# direct methods
.method constructor <init>(Lb/g$4;)V
    .locals 0

    .prologue
    .line 800
    iput-object p1, p0, Lb/g$4$1;->a:Lb/g$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic then(Lb/g;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 800
    .line 1803
    iget-object v0, p0, Lb/g$4$1;->a:Lb/g$4;

    iget-object v0, v0, Lb/g$4;->a:Lb/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/g$4$1;->a:Lb/g$4;

    iget-object v0, v0, Lb/g$4;->a:Lb/e;

    invoke-virtual {v0}, Lb/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1804
    iget-object v0, p0, Lb/g$4$1;->a:Lb/g$4;

    iget-object v0, v0, Lb/g$4;->b:Lb/g$a;

    invoke-virtual {v0}, Lb/g$a;->b()V

    .line 1815
    :goto_0
    const/4 v0, 0x0

    .line 800
    return-object v0

    .line 1808
    :cond_0
    invoke-virtual {p1}, Lb/g;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1809
    iget-object v0, p0, Lb/g$4$1;->a:Lb/g$4;

    iget-object v0, v0, Lb/g$4;->b:Lb/g$a;

    invoke-virtual {v0}, Lb/g$a;->b()V

    goto :goto_0

    .line 1810
    :cond_1
    invoke-virtual {p1}, Lb/g;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1811
    iget-object v0, p0, Lb/g$4$1;->a:Lb/g$4;

    iget-object v0, v0, Lb/g$4;->b:Lb/g$a;

    invoke-virtual {p1}, Lb/g;->e()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/g$a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 1813
    :cond_2
    iget-object v0, p0, Lb/g$4$1;->a:Lb/g$4;

    iget-object v0, v0, Lb/g$4;->b:Lb/g$a;

    invoke-virtual {p1}, Lb/g;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/g$a;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
