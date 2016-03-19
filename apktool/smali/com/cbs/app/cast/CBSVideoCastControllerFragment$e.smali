.class final Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/cast/CBSVideoCastControllerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)V
    .locals 0

    .prologue
    .line 831
    iput-object p1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;B)V
    .locals 0

    .prologue
    .line 831
    invoke-direct {p0, p1}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;-><init>(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)V

    return-void
.end method

.method static synthetic a(Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 831
    iput-object p1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;->b:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;Landroid/net/Uri;)Z
    .locals 1

    .prologue
    .line 831
    .line 1837
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;->c:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 831
    goto :goto_0
.end method

.method static synthetic b(Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .prologue
    .line 831
    iput-object p1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;->c:Landroid/net/Uri;

    return-object p1
.end method
