.class final Lcom/d/a/b/h$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/d/a/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/d/a/b/h;


# direct methods
.method constructor <init>(Lcom/d/a/b/h;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/d/a/b/h$3;->a:Lcom/d/a/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/d/a/b/h$3;->a:Lcom/d/a/b/h;

    iget-object v0, v0, Lcom/d/a/b/h;->d:Lcom/d/a/b/f/a;

    iget-object v1, p0, Lcom/d/a/b/h$3;->a:Lcom/d/a/b/h;

    iget-object v1, v1, Lcom/d/a/b/h;->b:Lcom/d/a/b/e/a;

    invoke-interface {v1}, Lcom/d/a/b/e/a;->d()Landroid/view/View;

    invoke-interface {v0}, Lcom/d/a/b/f/a;->b()V

    .line 362
    return-void
.end method
