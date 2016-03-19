.class final Lcom/d/a/b/h$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/d/a/b/h;->a(Lcom/d/a/b/a/b$a;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/d/a/b/a/b$a;

.field final synthetic b:Ljava/lang/Throwable;

.field final synthetic c:Lcom/d/a/b/h;


# direct methods
.method constructor <init>(Lcom/d/a/b/h;Lcom/d/a/b/a/b$a;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/d/a/b/h$2;->c:Lcom/d/a/b/h;

    iput-object p2, p0, Lcom/d/a/b/h$2;->a:Lcom/d/a/b/a/b$a;

    iput-object p3, p0, Lcom/d/a/b/h$2;->b:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 347
    iget-object v0, p0, Lcom/d/a/b/h$2;->c:Lcom/d/a/b/h;

    iget-object v0, v0, Lcom/d/a/b/h;->c:Lcom/d/a/b/c;

    invoke-virtual {v0}, Lcom/d/a/b/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/d/a/b/h$2;->c:Lcom/d/a/b/h;

    iget-object v0, v0, Lcom/d/a/b/h;->b:Lcom/d/a/b/e/a;

    iget-object v1, p0, Lcom/d/a/b/h$2;->c:Lcom/d/a/b/h;

    iget-object v1, v1, Lcom/d/a/b/h;->c:Lcom/d/a/b/c;

    iget-object v2, p0, Lcom/d/a/b/h$2;->c:Lcom/d/a/b/h;

    invoke-static {v2}, Lcom/d/a/b/h;->a(Lcom/d/a/b/h;)Lcom/d/a/b/e;

    move-result-object v2

    iget-object v2, v2, Lcom/d/a/b/e;->a:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Lcom/d/a/b/c;->c(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/d/a/b/e/a;->a(Landroid/graphics/drawable/Drawable;)Z

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/d/a/b/h$2;->c:Lcom/d/a/b/h;

    iget-object v0, v0, Lcom/d/a/b/h;->d:Lcom/d/a/b/f/a;

    iget-object v1, p0, Lcom/d/a/b/h$2;->c:Lcom/d/a/b/h;

    iget-object v1, v1, Lcom/d/a/b/h;->b:Lcom/d/a/b/e/a;

    invoke-interface {v1}, Lcom/d/a/b/e/a;->d()Landroid/view/View;

    new-instance v1, Lcom/d/a/b/a/b;

    iget-object v2, p0, Lcom/d/a/b/h$2;->a:Lcom/d/a/b/a/b$a;

    iget-object v3, p0, Lcom/d/a/b/h$2;->b:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Lcom/d/a/b/a/b;-><init>(Lcom/d/a/b/a/b$a;Ljava/lang/Throwable;)V

    invoke-interface {v0}, Lcom/d/a/b/f/a;->a()V

    .line 351
    return-void
.end method
