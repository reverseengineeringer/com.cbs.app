.class public Landroid/support/design/widget/TextInputLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/TextInputLayout$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Ljava/lang/CharSequence;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/widget/LinearLayout;

.field private e:Z

.field private f:Landroid/widget/TextView;

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Landroid/widget/TextView;

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Landroid/content/res/ColorStateList;

.field private p:Landroid/content/res/ColorStateList;

.field private final q:Landroid/support/design/widget/d;

.field private r:Z

.field private s:Landroid/support/design/widget/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 101
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    new-instance v0, Landroid/support/design/widget/d;

    invoke-direct {v0, p0}, Landroid/support/design/widget/d;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->q:Landroid/support/design/widget/d;

    .line 103
    invoke-static {p1}, Landroid/support/design/widget/p;->a(Landroid/content/Context;)V

    .line 105
    invoke-virtual {p0, v5}, Landroid/support/design/widget/TextInputLayout;->setOrientation(I)V

    .line 106
    invoke-virtual {p0, v4}, Landroid/support/design/widget/TextInputLayout;->setWillNotDraw(Z)V

    .line 107
    invoke-virtual {p0, v5}, Landroid/support/design/widget/TextInputLayout;->setAddStatesFromChildren(Z)V

    .line 109
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->q:Landroid/support/design/widget/d;

    sget-object v1, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/d;->a(Landroid/view/animation/Interpolator;)V

    .line 110
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->q:Landroid/support/design/widget/d;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/d;->b(Landroid/view/animation/Interpolator;)V

    .line 111
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->q:Landroid/support/design/widget/d;

    const v1, 0x800033

    invoke-virtual {v0, v1}, Landroid/support/design/widget/d;->d(I)V

    .line 113
    sget-object v0, Landroid/support/design/R$styleable;->TextInputLayout:[I

    sget v1, Landroid/support/design/R$style;->Widget_Design_TextInputLayout:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 115
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_android_hint:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 116
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_hintAnimationEnabled:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->r:Z

    .line 119
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_android_textColorHint:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_android_textColorHint:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/TextInputLayout;->p:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Landroid/support/design/widget/TextInputLayout;->o:Landroid/content/res/ColorStateList;

    .line 124
    :cond_0
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_hintTextAppearance:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 126
    if-eq v1, v6, :cond_1

    .line 127
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_hintTextAppearance:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TextInputLayout;->setHintTextAppearance(I)V

    .line 131
    :cond_1
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_errorTextAppearance:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TextInputLayout;->g:I

    .line 132
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_errorEnabled:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 134
    sget v2, Landroid/support/design/R$styleable;->TextInputLayout_counterEnabled:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 136
    sget v3, Landroid/support/design/R$styleable;->TextInputLayout_counterMaxLength:I

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/design/widget/TextInputLayout;->setCounterMaxLength(I)V

    .line 138
    sget v3, Landroid/support/design/R$styleable;->TextInputLayout_counterTextAppearance:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/support/design/widget/TextInputLayout;->l:I

    .line 140
    sget v3, Landroid/support/design/R$styleable;->TextInputLayout_counterOverflowTextAppearance:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/support/design/widget/TextInputLayout;->m:I

    .line 142
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 144
    invoke-virtual {p0, v1}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 145
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TextInputLayout;->setCounterEnabled(Z)V

    .line 147
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_2

    .line 150
    invoke-static {p0, v5}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 154
    :cond_2
    new-instance v0, Landroid/support/design/widget/TextInputLayout$a;

    invoke-direct {v0, p0, v4}, Landroid/support/design/widget/TextInputLayout$a;-><init>(Landroid/support/design/widget/TextInputLayout;B)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 155
    return-void
.end method

.method private a(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .prologue
    .line 242
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 244
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->c:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->c:Landroid/graphics/Paint;

    .line 247
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->q:Landroid/support/design/widget/d;

    invoke-virtual {v1}, Landroid/support/design/widget/d;->a()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 248
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->q:Landroid/support/design/widget/d;

    invoke-virtual {v1}, Landroid/support/design/widget/d;->c()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 249
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    neg-float v0, v0

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 251
    return-object p1

    .line 242
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object p1, v0

    goto :goto_0
.end method

.method private a(F)V
    .locals 2

    .prologue
    .line 652
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->q:Landroid/support/design/widget/d;

    invoke-virtual {v0}, Landroid/support/design/widget/d;->b()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 668
    :goto_0
    return-void

    .line 655
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->s:Landroid/support/design/widget/q;

    if-nez v0, :cond_1

    .line 656
    invoke-static {}, Landroid/support/design/widget/w;->a()Landroid/support/design/widget/q;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->s:Landroid/support/design/widget/q;

    .line 657
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->s:Landroid/support/design/widget/q;

    sget-object v1, Landroid/support/design/widget/a;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/q;->a(Landroid/view/animation/Interpolator;)V

    .line 658
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->s:Landroid/support/design/widget/q;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/support/design/widget/q;->a(I)V

    .line 659
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->s:Landroid/support/design/widget/q;

    new-instance v1, Landroid/support/design/widget/TextInputLayout$4;

    invoke-direct {v1, p0}, Landroid/support/design/widget/TextInputLayout$4;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/q;->a(Landroid/support/design/widget/q$c;)V

    .line 666
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->s:Landroid/support/design/widget/q;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->q:Landroid/support/design/widget/d;

    invoke-virtual {v1}, Landroid/support/design/widget/d;->b()F

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/support/design/widget/q;->a(FF)V

    .line 667
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->s:Landroid/support/design/widget/q;

    invoke-virtual {v0}, Landroid/support/design/widget/q;->a()V

    goto :goto_0
.end method

.method private a(I)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 522
    iget-boolean v3, p0, Landroid/support/design/widget/TextInputLayout;->n:Z

    .line 523
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->k:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 524
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->j:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    iput-boolean v2, p0, Landroid/support/design/widget/TextInputLayout;->n:Z

    .line 535
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->n:Z

    if-eq v3, v0, :cond_0

    .line 536
    invoke-direct {p0, v2}, Landroid/support/design/widget/TextInputLayout;->a(Z)V

    .line 537
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->c()V

    .line 539
    :cond_0
    return-void

    .line 527
    :cond_1
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->k:I

    if-le p1, v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->n:Z

    .line 528
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->n:Z

    if-eq v3, v0, :cond_2

    .line 529
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->n:Z

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->m:I

    :goto_2
    invoke-virtual {v4, v5, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 532
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Landroid/support/design/R$string;->character_counter_pattern:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    iget v7, p0, Landroid/support/design/widget/TextInputLayout;->k:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 527
    goto :goto_1

    .line 529
    :cond_4
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->l:I

    goto :goto_2
.end method

.method static synthetic a(Landroid/support/design/widget/TextInputLayout;)V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->a(Z)V

    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/TextInputLayout;I)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;->a(I)V

    return-void
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->d:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 360
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->d:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 364
    :cond_0
    return-void
.end method

.method private a(Landroid/widget/TextView;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 332
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->d:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 333
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->d:Landroid/widget/LinearLayout;

    .line 334
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 335
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->d:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/design/widget/TextInputLayout;->addView(Landroid/view/View;II)V

    .line 339
    new-instance v0, Landroid/support/v4/widget/Space;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/Space;-><init>(Landroid/content/Context;)V

    .line 340
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 341
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 344
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->b()V

    .line 347
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 349
    return-void
.end method

.method private a(Z)V
    .locals 10

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 255
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 256
    :goto_0
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getDrawableState()[I

    move-result-object v4

    .line 1717
    array-length v5, v4

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_6

    aget v6, v4, v3

    .line 1718
    const v7, 0x101009c

    if-ne v6, v7, :cond_5

    move v3, v1

    .line 2565
    :goto_2
    iget-boolean v4, p0, Landroid/support/design/widget/TextInputLayout;->e:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->f:Landroid/widget/TextView;

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->f:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_7

    .line 2566
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->f:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 257
    :goto_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 259
    :goto_4
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->o:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    .line 260
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->q:Landroid/support/design/widget/d;

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->o:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/support/design/widget/d;->b(I)V

    .line 263
    :cond_0
    iget-boolean v2, p0, Landroid/support/design/widget/TextInputLayout;->n:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->j:Landroid/widget/TextView;

    if-eqz v2, :cond_9

    .line 264
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->q:Landroid/support/design/widget/d;

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->j:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/support/design/widget/d;->a(I)V

    .line 273
    :cond_1
    :goto_5
    if-nez v0, :cond_2

    if-nez v3, :cond_2

    if-eqz v1, :cond_d

    .line 2630
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->s:Landroid/support/design/widget/q;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->s:Landroid/support/design/widget/q;

    invoke-virtual {v0}, Landroid/support/design/widget/q;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2631
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->s:Landroid/support/design/widget/q;

    invoke-virtual {v0}, Landroid/support/design/widget/q;->e()V

    .line 2633
    :cond_3
    if-eqz p1, :cond_c

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->r:Z

    if-eqz v0, :cond_c

    .line 2634
    invoke-direct {p0, v9}, Landroid/support/design/widget/TextInputLayout;->a(F)V

    .line 2645
    :goto_6
    return-void

    :cond_4
    move v0, v2

    .line 255
    goto :goto_0

    .line 1717
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    move v3, v2

    .line 1722
    goto :goto_2

    .line 2568
    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    :cond_8
    move v1, v2

    .line 257
    goto :goto_4

    .line 265
    :cond_9
    if-eqz v1, :cond_a

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->f:Landroid/widget/TextView;

    if-eqz v2, :cond_a

    .line 266
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->q:Landroid/support/design/widget/d;

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->f:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/support/design/widget/d;->a(I)V

    goto :goto_5

    .line 267
    :cond_a
    if-eqz v3, :cond_b

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->p:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_b

    .line 268
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->q:Landroid/support/design/widget/d;

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->p:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/support/design/widget/d;->a(I)V

    goto :goto_5

    .line 269
    :cond_b
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->o:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    .line 270
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->q:Landroid/support/design/widget/d;

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->o:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/support/design/widget/d;->a(I)V

    goto :goto_5

    .line 2636
    :cond_c
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->q:Landroid/support/design/widget/d;

    invoke-virtual {v0, v9}, Landroid/support/design/widget/d;->b(F)V

    goto :goto_6

    .line 2641
    :cond_d
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->s:Landroid/support/design/widget/q;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->s:Landroid/support/design/widget/q;

    invoke-virtual {v0}, Landroid/support/design/widget/q;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2642
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->s:Landroid/support/design/widget/q;

    invoke-virtual {v0}, Landroid/support/design/widget/q;->e()V

    .line 2644
    :cond_e
    if-eqz p1, :cond_f

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->r:Z

    if-eqz v0, :cond_f

    .line 2645
    invoke-direct {p0, v8}, Landroid/support/design/widget/TextInputLayout;->a(F)V

    goto :goto_6

    .line 2647
    :cond_f
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->q:Landroid/support/design/widget/d;

    invoke-virtual {v0, v8}, Landroid/support/design/widget/d;->b(F)V

    goto :goto_6
.end method

.method private b()V
    .locals 5

    .prologue
    .line 353
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 355
    return-void
.end method

.method static synthetic b(Landroid/support/design/widget/TextInputLayout;)Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->i:Z

    return v0
.end method

.method static synthetic c(Landroid/support/design/widget/TextInputLayout;)Landroid/support/design/widget/d;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->q:Landroid/support/design/widget/d;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 542
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 554
    :goto_0
    return-void

    .line 546
    :cond_0
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->n:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 547
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 550
    :cond_1
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/TintManager;->get(Landroid/content/Context;)Landroid/support/v7/widget/TintManager;

    move-result-object v0

    .line 551
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    sget v2, Landroid/support/design/R$drawable;->abc_edit_text_material:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/TintManager;->getTintList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method static synthetic d(Landroid/support/design/widget/TextInputLayout;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Landroid/support/design/widget/TextInputLayout;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->f:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 159
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_5

    move-object v0, p1

    .line 160
    check-cast v0, Landroid/widget/EditText;

    .line 1188
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 1189
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "We already have an EditText, can only have one"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1191
    :cond_0
    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    .line 1194
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->q:Landroid/support/design/widget/d;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/d;->c(Landroid/graphics/Typeface;)V

    .line 1195
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->q:Landroid/support/design/widget/d;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/d;->a(F)V

    .line 1196
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->q:Landroid/support/design/widget/d;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getGravity()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/d;->c(I)V

    .line 1199
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    new-instance v1, Landroid/support/design/widget/TextInputLayout$1;

    invoke-direct {v1, p0}, Landroid/support/design/widget/TextInputLayout$1;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1216
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->o:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_1

    .line 1217
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->o:Landroid/content/res/ColorStateList;

    .line 1221
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->b:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1222
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 1224
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1227
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1228
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->a(I)V

    .line 1231
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->d:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 1232
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->b()V

    .line 1236
    :cond_4
    invoke-direct {p0, v2}, Landroid/support/design/widget/TextInputLayout;->a(Z)V

    .line 161
    invoke-direct {p0, p3}, Landroid/support/design/widget/TextInputLayout;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-super {p0, p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_5
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 597
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 598
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->q:Landroid/support/design/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/d;->a(Landroid/graphics/Canvas;)V

    .line 599
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    .line 603
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 605
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLeft()I

    move-result v0

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    .line 607
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getRight()I

    move-result v1

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 609
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->q:Landroid/support/design/widget/d;

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getBottom()I

    move-result v4

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/support/design/widget/d;->a(IIII)V

    .line 615
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->q:Landroid/support/design/widget/d;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getPaddingTop()I

    move-result v3

    sub-int v4, p5, p3

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/support/design/widget/d;->b(IIII)V

    .line 618
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->q:Landroid/support/design/widget/d;

    invoke-virtual {v0}, Landroid/support/design/widget/d;->d()V

    .line 620
    :cond_0
    return-void
.end method

.method public refreshDrawableState()V
    .locals 1

    .prologue
    .line 624
    invoke-super {p0}, Landroid/widget/LinearLayout;->refreshDrawableState()V

    .line 626
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->a(Z)V

    .line 627
    return-void
.end method

.method public setCounterEnabled(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 475
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->i:Z

    if-eq v0, p1, :cond_0

    .line 476
    if-eqz p1, :cond_2

    .line 477
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->j:Landroid/widget/TextView;

    .line 478
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 479
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->l:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 480
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->j:Landroid/widget/TextView;

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 482
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->j:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Landroid/support/design/widget/TextInputLayout;->a(Landroid/widget/TextView;I)V

    .line 483
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    if-nez v0, :cond_1

    .line 484
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->a(I)V

    .line 492
    :goto_0
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->i:Z

    .line 494
    :cond_0
    return-void

    .line 486
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->a(I)V

    goto :goto_0

    .line 489
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->j:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->a(Landroid/widget/TextView;)V

    .line 490
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->j:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public setCounterMaxLength(I)V
    .locals 1

    .prologue
    .line 502
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->k:I

    if-eq v0, p1, :cond_0

    .line 503
    if-lez p1, :cond_1

    .line 504
    iput p1, p0, Landroid/support/design/widget/TextInputLayout;->k:I

    .line 508
    :goto_0
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->i:Z

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->a(I)V

    .line 512
    :cond_0
    return-void

    .line 506
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/TextInputLayout;->k:I

    goto :goto_0

    .line 509
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    goto :goto_1
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0xc8

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 419
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Z

    if-nez v0, :cond_2

    .line 420
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 428
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 429
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->f:Landroid/widget/TextView;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 430
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->f:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    sget-object v1, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Landroid/support/design/widget/TextInputLayout$2;

    invoke-direct {v1, p0}, Landroid/support/design/widget/TextInputLayout$2;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 444
    iput-boolean v2, p0, Landroid/support/design/widget/TextInputLayout;->h:Z

    .line 445
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->c()V

    .line 446
    invoke-direct {p0, v2}, Landroid/support/design/widget/TextInputLayout;->a(Z)V

    goto :goto_0

    .line 448
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 449
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->f:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    sget-object v1, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Landroid/support/design/widget/TextInputLayout$3;

    invoke-direct {v1, p0}, Landroid/support/design/widget/TextInputLayout$3;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 463
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Z

    .line 464
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->c()V

    goto :goto_0
.end method

.method public setErrorEnabled(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 374
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Z

    if-eq v0, p1, :cond_1

    .line 375
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->f:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 379
    :cond_0
    if-eqz p1, :cond_2

    .line 380
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->f:Landroid/widget/TextView;

    .line 381
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 382
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->f:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->f:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 385
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->f:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3}, Landroid/support/design/widget/TextInputLayout;->a(Landroid/widget/TextView;I)V

    .line 392
    :goto_0
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->e:Z

    .line 394
    :cond_1
    return-void

    .line 387
    :cond_2
    iput-boolean v3, p0, Landroid/support/design/widget/TextInputLayout;->h:Z

    .line 388
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->c()V

    .line 389
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->f:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->a(Landroid/widget/TextView;)V

    .line 390
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->f:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 296
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->b:Ljava/lang/CharSequence;

    .line 297
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->q:Landroid/support/design/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/d;->a(Ljava/lang/CharSequence;)V

    .line 299
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->sendAccessibilityEvent(I)V

    .line 300
    return-void
.end method

.method public setHintAnimationEnabled(Z)V
    .locals 0

    .prologue
    .line 592
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->r:Z

    .line 593
    return-void
.end method

.method public setHintTextAppearance(I)V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->q:Landroid/support/design/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/d;->e(I)V

    .line 319
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->q:Landroid/support/design/widget/d;

    invoke-virtual {v0}, Landroid/support/design/widget/d;->f()I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->p:Landroid/content/res/ColorStateList;

    .line 321
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 322
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->a(Z)V

    .line 325
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 326
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestLayout()V

    .line 329
    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->q:Landroid/support/design/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/d;->c(Landroid/graphics/Typeface;)V

    .line 175
    return-void
.end method
