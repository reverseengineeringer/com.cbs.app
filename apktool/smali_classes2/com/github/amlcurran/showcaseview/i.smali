.class Lcom/github/amlcurran/showcaseview/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/amlcurran/showcaseview/h;


# instance fields
.field protected final a:Landroid/graphics/Paint;

.field protected final b:Landroid/graphics/drawable/Drawable;

.field protected c:I

.field private final d:Landroid/graphics/Paint;

.field private final e:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 3

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 37
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/github/amlcurran/showcaseview/i;->a:Landroid/graphics/Paint;

    .line 38
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/i;->a:Landroid/graphics/Paint;

    const v2, 0xffffff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/i;->a:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 40
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/i;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 41
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/i;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/i;->d:Landroid/graphics/Paint;

    .line 43
    sget v0, Lcom/github/amlcurran/showcaseview/R$dimen;->showcase_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/github/amlcurran/showcaseview/i;->e:F

    .line 44
    sget v0, Lcom/github/amlcurran/showcaseview/R$drawable;->cling_bleached:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/i;->b:Landroid/graphics/drawable/Drawable;

    .line 45
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/i;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/i;->b:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 50
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/github/amlcurran/showcaseview/i;->c:I

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 89
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;FF)V
    .locals 6

    .prologue
    .line 54
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 55
    iget v1, p0, Lcom/github/amlcurran/showcaseview/i;->e:F

    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/i;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 56
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/i;->a()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 57
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/i;->b()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 58
    int-to-float v1, v1

    sub-float v1, p2, v1

    float-to-int v1, v1

    .line 59
    int-to-float v2, v2

    sub-float v2, p3, v2

    float-to-int v2, v2

    .line 60
    iget-object v3, p0, Lcom/github/amlcurran/showcaseview/i;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/i;->a()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/i;->b()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 63
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/i;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 64
    return-void
.end method

.method public final a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/i;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 94
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/i;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 83
    iput p1, p0, Lcom/github/amlcurran/showcaseview/i;->c:I

    .line 84
    return-void
.end method

.method public c()F
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/github/amlcurran/showcaseview/i;->e:F

    return v0
.end method
