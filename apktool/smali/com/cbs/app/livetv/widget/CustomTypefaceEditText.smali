.class public Lcom/cbs/app/livetv/widget/CustomTypefaceEditText;
.super Landroid/support/v7/widget/AppCompatEditText;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {p0}, Lcom/cbs/app/livetv/widget/CustomTypefaceEditText;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    :goto_0
    return-void

    .line 19
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/cbs/app/livetv/widget/CustomTypefaceEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-virtual {p0}, Lcom/cbs/app/livetv/widget/CustomTypefaceEditText;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    :goto_0
    return-void

    .line 27
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cbs/app/livetv/widget/CustomTypefaceEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-virtual {p0}, Lcom/cbs/app/livetv/widget/CustomTypefaceEditText;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    :goto_0
    return-void

    .line 36
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/cbs/app/livetv/widget/CustomTypefaceEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-virtual {p0}, Lcom/cbs/app/livetv/widget/CustomTypefaceEditText;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    sget-object v0, Lcom/cbs/app/R$styleable;->CustomTypefaceEditText:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 46
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 48
    const-string v2, "fonts/%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cbs/app/livetv/util/TypefaceUtil;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 49
    invoke-virtual {p0, v0}, Lcom/cbs/app/livetv/widget/CustomTypefaceEditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 50
    invoke-virtual {p0}, Lcom/cbs/app/livetv/widget/CustomTypefaceEditText;->getPaintFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/cbs/app/livetv/widget/CustomTypefaceEditText;->setPaintFlags(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method
