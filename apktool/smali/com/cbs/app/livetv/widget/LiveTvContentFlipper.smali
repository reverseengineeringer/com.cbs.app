.class public Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;
.super Lcom/cbs/app/livetv/widget/ContentFlipper;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/cbs/app/livetv/widget/ContentFlipper;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/cbs/app/livetv/widget/ContentFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getMessageViewLayoutId()I
    .locals 1

    .prologue
    .line 25
    const v0, 0x7f030111

    return v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;->a()Landroid/view/View;

    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 32
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    :cond_0
    return-void
.end method
