.class final Lcom/github/amlcurran/showcaseview/d;
.super Lcom/github/amlcurran/showcaseview/i;
.source "SourceFile"


# instance fields
.field private final d:F

.field private final e:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/github/amlcurran/showcaseview/i;-><init>(Landroid/content/res/Resources;)V

    .line 34
    sget v0, Lcom/github/amlcurran/showcaseview/R$dimen;->showcase_radius_outer:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/github/amlcurran/showcaseview/d;->d:F

    .line 35
    sget v0, Lcom/github/amlcurran/showcaseview/R$dimen;->showcase_radius_inner:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/github/amlcurran/showcaseview/d;->e:F

    .line 36
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 54
    iget v0, p0, Lcom/github/amlcurran/showcaseview/d;->d:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/d;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;FF)V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 46
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/d;->a:Landroid/graphics/Paint;

    const/16 v2, 0x99

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 47
    iget v1, p0, Lcom/github/amlcurran/showcaseview/d;->d:F

    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/d;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 48
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/d;->a:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 49
    iget v1, p0, Lcom/github/amlcurran/showcaseview/d;->e:F

    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/d;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 50
    return-void
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 59
    iget v0, p0, Lcom/github/amlcurran/showcaseview/d;->d:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lcom/github/amlcurran/showcaseview/d;->c:I

    .line 70
    return-void
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/github/amlcurran/showcaseview/d;->e:F

    return v0
.end method
