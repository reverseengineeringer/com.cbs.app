.class public Lru/truba/touchgallery/TouchView/UrlTouchImageView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/truba/touchgallery/TouchView/UrlTouchImageView$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/widget/ProgressBar;

.field protected b:Lru/truba/touchgallery/TouchView/TouchImageView;

.field protected c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p1, p0, Lru/truba/touchgallery/TouchView/UrlTouchImageView;->c:Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Lru/truba/touchgallery/TouchView/UrlTouchImageView;->a()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    iput-object p1, p0, Lru/truba/touchgallery/TouchView/UrlTouchImageView;->c:Landroid/content/Context;

    .line 53
    invoke-direct {p0}, Lru/truba/touchgallery/TouchView/UrlTouchImageView;->a()V

    .line 54
    return-void
.end method

.method private a()V
    .locals 7

    .prologue
    const/16 v6, 0x1e

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 59
    new-instance v0, Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v1, p0, Lru/truba/touchgallery/TouchView/UrlTouchImageView;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lru/truba/touchgallery/TouchView/TouchImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/truba/touchgallery/TouchView/UrlTouchImageView;->b:Lru/truba/touchgallery/TouchView/TouchImageView;

    .line 60
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 61
    iget-object v1, p0, Lru/truba/touchgallery/TouchView/UrlTouchImageView;->b:Lru/truba/touchgallery/TouchView/TouchImageView;

    invoke-virtual {v1, v0}, Lru/truba/touchgallery/TouchView/TouchImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/UrlTouchImageView;->b:Lru/truba/touchgallery/TouchView/TouchImageView;

    invoke-virtual {p0, v0}, Lru/truba/touchgallery/TouchView/UrlTouchImageView;->addView(Landroid/view/View;)V

    .line 63
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/UrlTouchImageView;->b:Lru/truba/touchgallery/TouchView/TouchImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lru/truba/touchgallery/TouchView/TouchImageView;->setVisibility(I)V

    .line 65
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lru/truba/touchgallery/TouchView/UrlTouchImageView;->c:Landroid/content/Context;

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lru/truba/touchgallery/TouchView/UrlTouchImageView;->a:Landroid/widget/ProgressBar;

    .line 66
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 67
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 68
    invoke-virtual {v0, v6, v5, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 69
    iget-object v1, p0, Lru/truba/touchgallery/TouchView/UrlTouchImageView;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/UrlTouchImageView;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 71
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/UrlTouchImageView;->a:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 72
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/UrlTouchImageView;->a:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lru/truba/touchgallery/TouchView/UrlTouchImageView;->addView(Landroid/view/View;)V

    .line 73
    return-void
.end method


# virtual methods
.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/UrlTouchImageView;->b:Lru/truba/touchgallery/TouchView/TouchImageView;

    invoke-virtual {v0, p1}, Lru/truba/touchgallery/TouchView/TouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 137
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 77
    new-instance v0, Lru/truba/touchgallery/TouchView/UrlTouchImageView$a;

    invoke-direct {v0, p0}, Lru/truba/touchgallery/TouchView/UrlTouchImageView$a;-><init>(Lru/truba/touchgallery/TouchView/UrlTouchImageView;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lru/truba/touchgallery/TouchView/UrlTouchImageView$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 78
    return-void
.end method
