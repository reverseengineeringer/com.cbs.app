.class abstract Landroid/support/design/widget/g$a;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/g;

.field private b:F

.field private c:F


# direct methods
.method private constructor <init>(Landroid/support/design/widget/g;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Landroid/support/design/widget/g$a;->a:Landroid/support/design/widget/g;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/g;B)V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0, p1}, Landroid/support/design/widget/g$a;-><init>(Landroid/support/design/widget/g;)V

    return-void
.end method


# virtual methods
.method protected abstract a()F
.end method

.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Landroid/support/design/widget/g$a;->a:Landroid/support/design/widget/g;

    iget-object v0, v0, Landroid/support/design/widget/g;->d:Landroid/support/design/widget/l;

    iget v1, p0, Landroid/support/design/widget/g$a;->b:F

    iget v2, p0, Landroid/support/design/widget/g$a;->c:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 2338
    iget v2, v0, Landroid/support/design/widget/l;->h:F

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/l;->a(FF)V

    .line 243
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 234
    invoke-super {p0}, Landroid/view/animation/Animation;->reset()V

    .line 236
    iget-object v0, p0, Landroid/support/design/widget/g$a;->a:Landroid/support/design/widget/g;

    iget-object v0, v0, Landroid/support/design/widget/g;->d:Landroid/support/design/widget/l;

    .line 1346
    iget v0, v0, Landroid/support/design/widget/l;->j:F

    .line 236
    iput v0, p0, Landroid/support/design/widget/g$a;->b:F

    .line 237
    invoke-virtual {p0}, Landroid/support/design/widget/g$a;->a()F

    move-result v0

    iget v1, p0, Landroid/support/design/widget/g$a;->b:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/support/design/widget/g$a;->c:F

    .line 238
    return-void
.end method
