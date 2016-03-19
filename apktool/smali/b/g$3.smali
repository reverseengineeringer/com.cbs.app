.class final Lb/g$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/g;->c(Lb/g$a;Lb/f;Lb/g;Ljava/util/concurrent/Executor;Lb/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/e;

.field final synthetic b:Lb/g$a;

.field final synthetic c:Lb/f;

.field final synthetic d:Lb/g;


# direct methods
.method constructor <init>(Lb/e;Lb/g$a;Lb/f;Lb/g;)V
    .locals 0

    .prologue
    .line 746
    iput-object p1, p0, Lb/g$3;->a:Lb/e;

    iput-object p2, p0, Lb/g$3;->b:Lb/g$a;

    iput-object p3, p0, Lb/g$3;->c:Lb/f;

    iput-object p4, p0, Lb/g$3;->d:Lb/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 749
    iget-object v0, p0, Lb/g$3;->a:Lb/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/g$3;->a:Lb/e;

    invoke-virtual {v0}, Lb/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lb/g$3;->b:Lb/g$a;

    invoke-virtual {v0}, Lb/g$a;->b()V

    .line 762
    :goto_0
    return-void

    .line 755
    :cond_0
    :try_start_0
    iget-object v0, p0, Lb/g$3;->c:Lb/f;

    iget-object v1, p0, Lb/g$3;->d:Lb/g;

    invoke-interface {v0, v1}, Lb/f;->then(Lb/g;)Ljava/lang/Object;

    move-result-object v0

    .line 756
    iget-object v1, p0, Lb/g$3;->b:Lb/g$a;

    invoke-virtual {v1, v0}, Lb/g$a;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 758
    :catch_0
    move-exception v0

    iget-object v0, p0, Lb/g$3;->b:Lb/g$a;

    invoke-virtual {v0}, Lb/g$a;->b()V

    goto :goto_0

    .line 759
    :catch_1
    move-exception v0

    .line 760
    iget-object v1, p0, Lb/g$3;->b:Lb/g$a;

    invoke-virtual {v1, v0}, Lb/g$a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
