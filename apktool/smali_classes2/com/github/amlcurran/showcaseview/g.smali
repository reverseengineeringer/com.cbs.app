.class final Lcom/github/amlcurran/showcaseview/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/g;->a:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/g;->a:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final a(FFLcom/github/amlcurran/showcaseview/h;)Z
    .locals 6

    .prologue
    .line 37
    float-to-int v0, p1

    float-to-int v1, p2

    .line 38
    invoke-interface {p3}, Lcom/github/amlcurran/showcaseview/h;->a()I

    move-result v2

    .line 39
    invoke-interface {p3}, Lcom/github/amlcurran/showcaseview/h;->b()I

    move-result v3

    .line 41
    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/g;->a:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    div-int/lit8 v5, v2, 0x2

    sub-int v5, v0, v5

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/g;->a:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v3, 0x2

    sub-int v5, v1, v5

    if-ne v4, v5, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 52
    :goto_0
    return v0

    .line 47
    :cond_0
    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/g;->a:Landroid/graphics/Rect;

    div-int/lit8 v5, v2, 0x2

    sub-int v5, v0, v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 48
    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/g;->a:Landroid/graphics/Rect;

    div-int/lit8 v5, v3, 0x2

    sub-int v5, v1, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 49
    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/g;->a:Landroid/graphics/Rect;

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 50
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/g;->a:Landroid/graphics/Rect;

    div-int/lit8 v2, v3, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 52
    const/4 v0, 0x1

    goto :goto_0
.end method
