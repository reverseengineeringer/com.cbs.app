.class public Lcom/cbs/app/livetv/widget/ContentFlipper;
.super Landroid/widget/ViewFlipper;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/cbs/app/livetv/widget/ContentFlipper;-><init>(Landroid/content/Context;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    .line 30
    iput p2, p0, Lcom/cbs/app/livetv/widget/ContentFlipper;->b:I

    .line 31
    invoke-direct {p0, p1}, Lcom/cbs/app/livetv/widget/ContentFlipper;->a(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/cbs/app/livetv/widget/ContentFlipper;->a(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, -0x2

    .line 40
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 43
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cbs/app/livetv/widget/ContentFlipper;->addView(Landroid/view/View;I)V

    .line 45
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/widget/ContentFlipper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/cbs/app/livetv/widget/ContentFlipper;->addView(Landroid/view/View;I)V

    .line 46
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/widget/ContentFlipper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v4}, Lcom/cbs/app/livetv/widget/ContentFlipper;->addView(Landroid/view/View;I)V

    .line 47
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/widget/ContentFlipper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/cbs/app/livetv/widget/ContentFlipper;->addView(Landroid/view/View;I)V

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cbs/app/livetv/widget/ContentFlipper;->getMessageViewLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    iput-object v0, p0, Lcom/cbs/app/livetv/widget/ContentFlipper;->a:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/ContentFlipper;->a:Landroid/view/View;

    invoke-direct {p0, v0, v4}, Lcom/cbs/app/livetv/widget/ContentFlipper;->a(Landroid/view/View;I)V

    .line 53
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 88
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-virtual {p0, p2}, Lcom/cbs/app/livetv/widget/ContentFlipper;->removeViewAt(I)V

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/cbs/app/livetv/widget/ContentFlipper;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method


# virtual methods
.method protected final a()Landroid/view/View;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/ContentFlipper;->a:Landroid/view/View;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cbs/app/livetv/widget/ContentFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/cbs/app/livetv/widget/ContentFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getMessageViewLayoutId()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/cbs/app/livetv/widget/ContentFlipper;->b:I

    return v0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/cbs/app/livetv/widget/ContentFlipper;->a(Landroid/view/View;I)V

    .line 73
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/cbs/app/livetv/widget/ContentFlipper;->a(Landroid/view/View;I)V

    .line 97
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    return-void
.end method
