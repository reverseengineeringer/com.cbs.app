.class public Lcom/urbanairship/push/iam/view/BannerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/urbanairship/push/iam/view/a;


# instance fields
.field private final a:Lcom/urbanairship/push/iam/view/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 49
    const/4 v0, 0x0

    sget v1, Lcom/urbanairship/R$attr;->inAppMessageBannerStyle:I

    invoke-direct {p0, p1, v0, v1}, Lcom/urbanairship/push/iam/view/BannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 59
    sget v0, Lcom/urbanairship/R$attr;->inAppMessageBannerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/urbanairship/push/iam/view/BannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    new-instance v0, Lcom/urbanairship/push/iam/view/b;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/urbanairship/push/iam/view/b;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/urbanairship/push/iam/view/BannerView;->a:Lcom/urbanairship/push/iam/view/b;

    .line 73
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/view/BannerView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/view/BannerView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/push/iam/view/BannerView;->a:Lcom/urbanairship/push/iam/view/b;

    invoke-virtual {v1}, Lcom/urbanairship/push/iam/view/b;->a()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/BannerView;->a:Lcom/urbanairship/push/iam/view/b;

    invoke-virtual {v0}, Lcom/urbanairship/push/iam/view/b;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/iam/view/BannerView;->setBackgroundColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public setNotificationActionButtonGroup(Lcom/urbanairship/push/a/d;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/BannerView;->a:Lcom/urbanairship/push/iam/view/b;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/iam/view/b;->setNotificationActionButtonGroup(Lcom/urbanairship/push/a/d;)V

    .line 98
    return-void
.end method

.method public setOnActionClickListener(Lcom/urbanairship/push/iam/view/a$a;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/BannerView;->a:Lcom/urbanairship/push/iam/view/b;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/iam/view/b;->setOnActionClickListener(Lcom/urbanairship/push/iam/view/a$a;)V

    .line 88
    return-void
.end method

.method public setOnDismissClickListener(Lcom/urbanairship/push/iam/view/a$b;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/BannerView;->a:Lcom/urbanairship/push/iam/view/b;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/iam/view/b;->setOnDismissClickListener(Lcom/urbanairship/push/iam/view/a$b;)V

    .line 83
    return-void
.end method

.method public setPrimaryColor(I)V
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/view/BannerView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/view/BannerView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 108
    :goto_0
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/BannerView;->a:Lcom/urbanairship/push/iam/view/b;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/iam/view/b;->setPrimaryColor(I)V

    .line 109
    return-void

    .line 105
    :cond_0
    invoke-virtual {p0, p1}, Lcom/urbanairship/push/iam/view/BannerView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setSecondaryColor(I)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/BannerView;->a:Lcom/urbanairship/push/iam/view/b;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/iam/view/b;->setSecondaryColor(I)V

    .line 114
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/BannerView;->a:Lcom/urbanairship/push/iam/view/b;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/iam/view/b;->setText(Ljava/lang/CharSequence;)V

    .line 93
    return-void
.end method
