.class Landroid/support/design/widget/VisibilityAwareImageButton;
.super Landroid/widget/ImageButton;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/VisibilityAwareImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-virtual {p0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getVisibility()I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/VisibilityAwareImageButton;->a:I

    .line 38
    return-void
.end method


# virtual methods
.method public setVisibility(I)V
    .locals 0

    .prologue
    .line 42
    .line 1046
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1048
    iput p1, p0, Landroid/support/design/widget/VisibilityAwareImageButton;->a:I

    .line 43
    return-void
.end method
