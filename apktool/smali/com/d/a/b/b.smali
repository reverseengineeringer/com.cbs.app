.class final Lcom/d/a/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/d/a/b/e/a;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/d/a/b/c/a;

.field private final f:Lcom/d/a/b/f/a;

.field private final g:Lcom/d/a/b/f;

.field private final h:Lcom/d/a/b/a/f;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/d/a/b/g;Lcom/d/a/b/f;Lcom/d/a/b/a/f;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/d/a/b/b;->a:Landroid/graphics/Bitmap;

    .line 51
    iget-object v0, p2, Lcom/d/a/b/g;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/d/a/b/b;->b:Ljava/lang/String;

    .line 52
    iget-object v0, p2, Lcom/d/a/b/g;->c:Lcom/d/a/b/e/a;

    iput-object v0, p0, Lcom/d/a/b/b;->c:Lcom/d/a/b/e/a;

    .line 53
    iget-object v0, p2, Lcom/d/a/b/g;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/d/a/b/b;->d:Ljava/lang/String;

    .line 54
    iget-object v0, p2, Lcom/d/a/b/g;->e:Lcom/d/a/b/c;

    invoke-virtual {v0}, Lcom/d/a/b/c;->q()Lcom/d/a/b/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/b/b;->e:Lcom/d/a/b/c/a;

    .line 55
    iget-object v0, p2, Lcom/d/a/b/g;->f:Lcom/d/a/b/f/a;

    iput-object v0, p0, Lcom/d/a/b/b;->f:Lcom/d/a/b/f/a;

    .line 56
    iput-object p3, p0, Lcom/d/a/b/b;->g:Lcom/d/a/b/f;

    .line 57
    iput-object p4, p0, Lcom/d/a/b/b;->h:Lcom/d/a/b/a/f;

    .line 58
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    iget-object v0, p0, Lcom/d/a/b/b;->c:Lcom/d/a/b/e/a;

    invoke-interface {v0}, Lcom/d/a/b/e/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "ImageAware was collected by GC. Task is cancelled. [%s]"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/d/a/b/b;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/d/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/d/a/b/b;->f:Lcom/d/a/b/f/a;

    iget-object v1, p0, Lcom/d/a/b/b;->c:Lcom/d/a/b/e/a;

    invoke-interface {v1}, Lcom/d/a/b/e/a;->d()Landroid/view/View;

    invoke-interface {v0}, Lcom/d/a/b/f/a;->b()V

    .line 74
    :goto_0
    return-void

    .line 1078
    :cond_0
    iget-object v0, p0, Lcom/d/a/b/b;->g:Lcom/d/a/b/f;

    iget-object v3, p0, Lcom/d/a/b/b;->c:Lcom/d/a/b/e/a;

    invoke-virtual {v0, v3}, Lcom/d/a/b/f;->a(Lcom/d/a/b/e/a;)Ljava/lang/String;

    move-result-object v0

    .line 1079
    iget-object v3, p0, Lcom/d/a/b/b;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 65
    :goto_1
    if-eqz v0, :cond_2

    .line 66
    const-string v0, "ImageAware is reused for another image. Task is cancelled. [%s]"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/d/a/b/b;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/d/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/d/a/b/b;->f:Lcom/d/a/b/f/a;

    iget-object v1, p0, Lcom/d/a/b/b;->c:Lcom/d/a/b/e/a;

    invoke-interface {v1}, Lcom/d/a/b/e/a;->d()Landroid/view/View;

    invoke-interface {v0}, Lcom/d/a/b/f/a;->b()V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1079
    goto :goto_1

    .line 69
    :cond_2
    const-string v0, "Display image in ImageAware (loaded from %1$s) [%2$s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/d/a/b/b;->h:Lcom/d/a/b/a/f;

    aput-object v4, v3, v2

    iget-object v2, p0, Lcom/d/a/b/b;->d:Ljava/lang/String;

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Lcom/d/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/d/a/b/b;->e:Lcom/d/a/b/c/a;

    iget-object v1, p0, Lcom/d/a/b/b;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/d/a/b/b;->c:Lcom/d/a/b/e/a;

    invoke-interface {v0, v1, v2}, Lcom/d/a/b/c/a;->a(Landroid/graphics/Bitmap;Lcom/d/a/b/e/a;)V

    .line 71
    iget-object v0, p0, Lcom/d/a/b/b;->g:Lcom/d/a/b/f;

    iget-object v1, p0, Lcom/d/a/b/b;->c:Lcom/d/a/b/e/a;

    invoke-virtual {v0, v1}, Lcom/d/a/b/f;->b(Lcom/d/a/b/e/a;)V

    .line 72
    iget-object v0, p0, Lcom/d/a/b/b;->f:Lcom/d/a/b/f/a;

    iget-object v1, p0, Lcom/d/a/b/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/d/a/b/b;->c:Lcom/d/a/b/e/a;

    invoke-interface {v2}, Lcom/d/a/b/e/a;->d()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/d/a/b/b;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2, v3}, Lcom/d/a/b/f/a;->a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
