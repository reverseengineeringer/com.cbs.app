.class public Lcom/urbanairship/push/iam/view/BannerCardView;
.super Landroid/support/v7/widget/CardView;
.source "SourceFile"

# interfaces
.implements Lcom/urbanairship/push/iam/view/a;


# instance fields
.field private final a:Lcom/urbanairship/push/iam/view/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 50
    const/4 v0, 0x0

    sget v1, Lcom/urbanairship/R$attr;->inAppMessageBannerStyle:I

    invoke-direct {p0, p1, v0, v1}, Lcom/urbanairship/push/iam/view/BannerCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/urbanairship/R$attr;->inAppMessageBannerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/urbanairship/push/iam/view/BannerCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    new-instance v0, Lcom/urbanairship/push/iam/view/b;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/urbanairship/push/iam/view/b;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/urbanairship/push/iam/view/BannerCardView;->a:Lcom/urbanairship/push/iam/view/b;

    .line 74
    if-eqz p2, :cond_4

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/urbanairship/R$styleable;->CardView:[I

    sget v2, Lcom/urbanairship/R$style;->InAppMessage_Banner:I

    invoke-virtual {v0, p2, v1, p3, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    sget v1, Lcom/urbanairship/R$styleable;->CardView_cardBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/urbanairship/R$styleable;->CardView_optCardBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    sget v1, Lcom/urbanairship/R$styleable;->CardView_optCardBackgroundColor:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 79
    invoke-virtual {p0, v1}, Lcom/urbanairship/push/iam/view/BannerCardView;->setCardBackgroundColor(I)V

    .line 82
    :cond_0
    sget v1, Lcom/urbanairship/R$styleable;->CardView_cardElevation:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_2

    sget v1, Lcom/urbanairship/R$styleable;->CardView_optCardElevation:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    sget v1, Lcom/urbanairship/R$styleable;->CardView_optCardElevation:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 84
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/view/BannerCardView;->getMaxCardElevation()F

    move-result v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 85
    invoke-virtual {p0, v1}, Lcom/urbanairship/push/iam/view/BannerCardView;->setMaxCardElevation(F)V

    .line 87
    :cond_1
    invoke-virtual {p0, v1}, Lcom/urbanairship/push/iam/view/BannerCardView;->setCardElevation(F)V

    .line 90
    :cond_2
    sget v1, Lcom/urbanairship/R$styleable;->CardView_cardCornerRadius:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_3

    sget v1, Lcom/urbanairship/R$styleable;->CardView_optCardCornerRadius:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 91
    sget v1, Lcom/urbanairship/R$styleable;->CardView_optCardCornerRadius:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 92
    invoke-virtual {p0, v1}, Lcom/urbanairship/push/iam/view/BannerCardView;->setRadius(F)V

    .line 95
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    :cond_4
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/BannerCardView;->a:Lcom/urbanairship/push/iam/view/b;

    invoke-virtual {v0}, Lcom/urbanairship/push/iam/view/b;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/iam/view/BannerCardView;->setCardBackgroundColor(I)V

    .line 99
    return-void
.end method


# virtual methods
.method public setNotificationActionButtonGroup(Lcom/urbanairship/push/a/d;)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/BannerCardView;->a:Lcom/urbanairship/push/iam/view/b;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/iam/view/b;->setNotificationActionButtonGroup(Lcom/urbanairship/push/a/d;)V

    .line 119
    return-void
.end method

.method public setOnActionClickListener(Lcom/urbanairship/push/iam/view/a$a;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/BannerCardView;->a:Lcom/urbanairship/push/iam/view/b;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/iam/view/b;->setOnActionClickListener(Lcom/urbanairship/push/iam/view/a$a;)V

    .line 109
    return-void
.end method

.method public setOnDismissClickListener(Lcom/urbanairship/push/iam/view/a$b;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/BannerCardView;->a:Lcom/urbanairship/push/iam/view/b;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/iam/view/b;->setOnDismissClickListener(Lcom/urbanairship/push/iam/view/a$b;)V

    .line 104
    return-void
.end method

.method public setPrimaryColor(I)V
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/urbanairship/push/iam/view/BannerCardView;->setCardBackgroundColor(I)V

    .line 124
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/BannerCardView;->a:Lcom/urbanairship/push/iam/view/b;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/iam/view/b;->setPrimaryColor(I)V

    .line 125
    return-void
.end method

.method public setSecondaryColor(I)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/BannerCardView;->a:Lcom/urbanairship/push/iam/view/b;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/iam/view/b;->setSecondaryColor(I)V

    .line 130
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/BannerCardView;->a:Lcom/urbanairship/push/iam/view/b;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/iam/view/b;->setText(Ljava/lang/CharSequence;)V

    .line 114
    return-void
.end method
