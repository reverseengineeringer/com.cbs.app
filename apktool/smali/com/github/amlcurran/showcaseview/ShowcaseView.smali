.class public Lcom/github/amlcurran/showcaseview/ShowcaseView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/amlcurran/showcaseview/ShowcaseView$b;,
        Lcom/github/amlcurran/showcaseview/ShowcaseView$c;,
        Lcom/github/amlcurran/showcaseview/ShowcaseView$a;
    }
.end annotation


# static fields
.field private static final a:I


# instance fields
.field private final b:Landroid/widget/Button;

.field private final c:Lcom/github/amlcurran/showcaseview/j;

.field private final d:Lcom/github/amlcurran/showcaseview/h;

.field private final e:Lcom/github/amlcurran/showcaseview/g;

.field private final f:Lcom/github/amlcurran/showcaseview/a;

.field private final g:Lcom/github/amlcurran/showcaseview/f;

.field private h:I

.field private i:I

.field private j:F

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lcom/github/amlcurran/showcaseview/e;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Landroid/graphics/Bitmap;

.field private s:J

.field private t:J

.field private u:Z

.field private v:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "#33B5E5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->a:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;IZ)V
    .locals 8

    .prologue
    const v7, 0x10e0001

    const/4 v0, -0x1

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    invoke-direct {p0, p1, v6, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    iput v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->h:I

    .line 59
    iput v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->i:I

    .line 60
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->j:F

    .line 63
    iput-boolean v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->k:Z

    .line 64
    iput-boolean v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->l:Z

    .line 65
    iput-boolean v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->m:Z

    .line 66
    sget-object v0, Lcom/github/amlcurran/showcaseview/e;->a:Lcom/github/amlcurran/showcaseview/e;

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->n:Lcom/github/amlcurran/showcaseview/e;

    .line 68
    iput-boolean v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->o:Z

    .line 69
    iput-boolean v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->p:Z

    .line 630
    new-instance v0, Lcom/github/amlcurran/showcaseview/ShowcaseView$4;

    invoke-direct {v0, p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$4;-><init>(Lcom/github/amlcurran/showcaseview/ShowcaseView;)V

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->v:Landroid/view/View$OnClickListener;

    .line 85
    new-instance v0, Lcom/github/amlcurran/showcaseview/c;

    invoke-direct {v0}, Lcom/github/amlcurran/showcaseview/c;-><init>()V

    .line 86
    new-instance v0, Lcom/github/amlcurran/showcaseview/b;

    invoke-direct {v0}, Lcom/github/amlcurran/showcaseview/b;-><init>()V

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->f:Lcom/github/amlcurran/showcaseview/a;

    .line 87
    new-instance v0, Lcom/github/amlcurran/showcaseview/g;

    invoke-direct {v0}, Lcom/github/amlcurran/showcaseview/g;-><init>()V

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->e:Lcom/github/amlcurran/showcaseview/g;

    .line 88
    new-instance v0, Lcom/github/amlcurran/showcaseview/f;

    invoke-direct {v0, p1}, Lcom/github/amlcurran/showcaseview/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->g:Lcom/github/amlcurran/showcaseview/f;

    .line 2026
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_3

    move v0, v1

    .line 1035
    :goto_0
    if-eqz v0, :cond_0

    .line 1036
    invoke-virtual {p0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/github/amlcurran/showcaseview/ShowcaseView$b;

    invoke-direct {v1, p0, v2}, Lcom/github/amlcurran/showcaseview/ShowcaseView$b;-><init>(Lcom/github/amlcurran/showcaseview/ShowcaseView;B)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 92
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/github/amlcurran/showcaseview/ShowcaseView$c;

    invoke-direct {v1, p0, v2}, Lcom/github/amlcurran/showcaseview/ShowcaseView$c;-><init>(Lcom/github/amlcurran/showcaseview/ShowcaseView;B)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/github/amlcurran/showcaseview/R$styleable;->ShowcaseView:[I

    sget v3, Lcom/github/amlcurran/showcaseview/R$attr;->showcaseViewStyle:I

    sget v4, Lcom/github/amlcurran/showcaseview/R$style;->ShowcaseView:I

    invoke-virtual {v0, v6, v1, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 100
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v4, v0

    iput-wide v4, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->s:J

    .line 101
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v4, v0

    iput-wide v4, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->t:J

    .line 103
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lcom/github/amlcurran/showcaseview/R$layout;->showcase_button:I

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->b:Landroid/widget/Button;

    .line 104
    if-eqz p3, :cond_4

    .line 105
    new-instance v0, Lcom/github/amlcurran/showcaseview/d;

    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/github/amlcurran/showcaseview/d;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->d:Lcom/github/amlcurran/showcaseview/h;

    .line 109
    :goto_1
    new-instance v0, Lcom/github/amlcurran/showcaseview/j;

    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->e:Lcom/github/amlcurran/showcaseview/g;

    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/github/amlcurran/showcaseview/j;-><init>(Landroid/content/res/Resources;Lcom/github/amlcurran/showcaseview/g;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->c:Lcom/github/amlcurran/showcaseview/j;

    .line 111
    invoke-direct {p0, v1, v2}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->a(Landroid/content/res/TypedArray;Z)V

    .line 2118
    invoke-virtual {p0, p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2120
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->b:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2121
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/github/amlcurran/showcaseview/R$dimen;->button_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v1, v0

    .line 2122
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2123
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2124
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2125
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 2126
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->b:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2127
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->b:Landroid/widget/Button;

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 2128
    iget-boolean v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->k:Z

    if-nez v0, :cond_1

    .line 2129
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2131
    :cond_1
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->b:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->addView(Landroid/view/View;)V

    .line 114
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 2026
    goto/16 :goto_0

    .line 107
    :cond_4
    new-instance v0, Lcom/github/amlcurran/showcaseview/i;

    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/github/amlcurran/showcaseview/i;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->d:Lcom/github/amlcurran/showcaseview/h;

    goto :goto_1
.end method

.method protected constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 79
    sget v0, Lcom/github/amlcurran/showcaseview/R$styleable;->CustomTheme_showcaseViewStyle:I

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;-><init>(Landroid/content/Context;IZ)V

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/github/amlcurran/showcaseview/ShowcaseView;)Lcom/github/amlcurran/showcaseview/f;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->g:Lcom/github/amlcurran/showcaseview/f;

    return-object v0
.end method

.method private a(II)V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->g:Lcom/github/amlcurran/showcaseview/f;

    invoke-virtual {v0}, Lcom/github/amlcurran/showcaseview/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 148
    :cond_0
    iput p1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->h:I

    .line 149
    iput p2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->i:I

    .line 151
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->invalidate()V

    goto :goto_0
.end method

.method private a(Landroid/content/res/TypedArray;Z)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/16 v2, 0x50

    .line 575
    sget v0, Lcom/github/amlcurran/showcaseview/R$styleable;->ShowcaseView_sv_backgroundColor:I

    const/16 v1, 0x80

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 576
    sget v0, Lcom/github/amlcurran/showcaseview/R$styleable;->ShowcaseView_sv_showcaseColor:I

    sget v2, Lcom/github/amlcurran/showcaseview/ShowcaseView;->a:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 577
    sget v0, Lcom/github/amlcurran/showcaseview/R$styleable;->ShowcaseView_sv_buttonText:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 578
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 579
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x104000a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 581
    :cond_0
    sget v3, Lcom/github/amlcurran/showcaseview/R$styleable;->ShowcaseView_sv_tintButtonColor:I

    invoke-virtual {p1, v3, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 583
    sget v4, Lcom/github/amlcurran/showcaseview/R$styleable;->ShowcaseView_sv_titleTextAppearance:I

    sget v5, Lcom/github/amlcurran/showcaseview/R$style;->TextAppearance_ShowcaseView_Title:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 585
    sget v5, Lcom/github/amlcurran/showcaseview/R$styleable;->ShowcaseView_sv_detailTextAppearance:I

    sget v6, Lcom/github/amlcurran/showcaseview/R$style;->TextAppearance_ShowcaseView_Detail:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 588
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 590
    iget-object v6, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->d:Lcom/github/amlcurran/showcaseview/h;

    invoke-interface {v6, v2}, Lcom/github/amlcurran/showcaseview/h;->a(I)V

    .line 591
    iget-object v6, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->d:Lcom/github/amlcurran/showcaseview/h;

    invoke-interface {v6, v1}, Lcom/github/amlcurran/showcaseview/h;->b(I)V

    .line 2604
    if-eqz v3, :cond_2

    .line 2605
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->b:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 593
    :goto_0
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->b:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 594
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->c:Lcom/github/amlcurran/showcaseview/j;

    invoke-virtual {v0, v4}, Lcom/github/amlcurran/showcaseview/j;->a(I)V

    .line 595
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->c:Lcom/github/amlcurran/showcaseview/j;

    invoke-virtual {v0, v5}, Lcom/github/amlcurran/showcaseview/j;->b(I)V

    .line 596
    iput-boolean v7, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->o:Z

    .line 598
    if-eqz p2, :cond_1

    .line 599
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->invalidate()V

    .line 601
    :cond_1
    return-void

    .line 2607
    :cond_2
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->b:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Lcom/github/amlcurran/showcaseview/ShowcaseView;->a:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/github/amlcurran/showcaseview/ShowcaseView;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 45
    .line 3346
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4137
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->g:Lcom/github/amlcurran/showcaseview/f;

    invoke-virtual {v0}, Lcom/github/amlcurran/showcaseview/f;->a()Z

    move-result v0

    .line 3347
    if-nez v0, :cond_0

    .line 3348
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->c()V

    :goto_0
    return-void

    .line 4355
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->u:Z

    .line 4356
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/github/amlcurran/showcaseview/ShowcaseView;Z)Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->p:Z

    return v0
.end method

.method static synthetic b(Lcom/github/amlcurran/showcaseview/ShowcaseView;)V
    .locals 3

    .prologue
    .line 45
    .line 3185
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->r:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 3194
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_4

    :cond_0
    const/4 v0, 0x1

    .line 3185
    :goto_0
    if-eqz v0, :cond_3

    .line 3186
    :cond_1
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->r:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 3187
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3188
    :cond_2
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getMeasuredHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->r:Landroid/graphics/Bitmap;

    .line 45
    :cond_3
    return-void

    .line 3194
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/github/amlcurran/showcaseview/ShowcaseView;)Lcom/github/amlcurran/showcaseview/a;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->f:Lcom/github/amlcurran/showcaseview/a;

    return-object v0
.end method

.method static synthetic d(Lcom/github/amlcurran/showcaseview/ShowcaseView;)Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->u:Z

    return v0
.end method

.method static synthetic e(Lcom/github/amlcurran/showcaseview/ShowcaseView;)Lcom/github/amlcurran/showcaseview/e;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->n:Lcom/github/amlcurran/showcaseview/e;

    return-object v0
.end method

.method static synthetic f(Lcom/github/amlcurran/showcaseview/ShowcaseView;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 45
    .line 5252
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->e:Lcom/github/amlcurran/showcaseview/g;

    iget v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->h:I

    int-to-float v2, v2

    iget v3, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->i:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->d:Lcom/github/amlcurran/showcaseview/h;

    invoke-virtual {v0, v2, v3, v4}, Lcom/github/amlcurran/showcaseview/g;->a(FFLcom/github/amlcurran/showcaseview/h;)Z

    move-result v0

    .line 5253
    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->o:Z

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 5254
    :goto_0
    if-eqz v0, :cond_1

    .line 5255
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->c:Lcom/github/amlcurran/showcaseview/j;

    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getMeasuredHeight()I

    move-result v3

    iget-boolean v4, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->q:Z

    invoke-virtual {v0, v2, v3, p0, v4}, Lcom/github/amlcurran/showcaseview/j;->a(IILcom/github/amlcurran/showcaseview/ShowcaseView;Z)V

    .line 5257
    :cond_1
    iput-boolean v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->o:Z

    .line 45
    return-void

    :cond_2
    move v0, v1

    .line 5253
    goto :goto_0
.end method


# virtual methods
.method final a(Landroid/graphics/Point;)V
    .locals 2

    .prologue
    .line 141
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->a(II)V

    .line 142
    return-void
.end method

.method public final a()Z
    .locals 2

    .prologue
    const v1, 0xf4240

    .line 199
    iget v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->h:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->i:I

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->p:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 286
    .line 2294
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->r:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2295
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->r:Landroid/graphics/Bitmap;

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->g:Lcom/github/amlcurran/showcaseview/f;

    invoke-virtual {v0}, Lcom/github/amlcurran/showcaseview/f;->b()V

    .line 289
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->n:Lcom/github/amlcurran/showcaseview/e;

    invoke-interface {v0}, Lcom/github/amlcurran/showcaseview/e;->a()V

    .line 2301
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->f:Lcom/github/amlcurran/showcaseview/a;

    iget-wide v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->t:J

    new-instance v1, Lcom/github/amlcurran/showcaseview/ShowcaseView$2;

    invoke-direct {v1, p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$2;-><init>(Lcom/github/amlcurran/showcaseview/ShowcaseView;)V

    invoke-interface {v0, p0, v2, v3, v1}, Lcom/github/amlcurran/showcaseview/a;->a(Landroid/view/View;JLcom/github/amlcurran/showcaseview/a$a;)V

    .line 291
    return-void
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->u:Z

    .line 314
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->n:Lcom/github/amlcurran/showcaseview/e;

    invoke-interface {v0}, Lcom/github/amlcurran/showcaseview/e;->c()V

    .line 2319
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->f:Lcom/github/amlcurran/showcaseview/a;

    iget-wide v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->s:J

    new-instance v1, Lcom/github/amlcurran/showcaseview/ShowcaseView$3;

    invoke-direct {v1, p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$3;-><init>(Lcom/github/amlcurran/showcaseview/ShowcaseView;)V

    invoke-interface {v0, p0, v2, v3, v1}, Lcom/github/amlcurran/showcaseview/a;->a(Landroid/view/View;JLcom/github/amlcurran/showcaseview/a$b;)V

    .line 316
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 571
    iget-boolean v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->u:Z

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 263
    iget v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->h:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->i:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->g:Lcom/github/amlcurran/showcaseview/f;

    invoke-virtual {v0}, Lcom/github/amlcurran/showcaseview/f;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->r:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 264
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 282
    :goto_0
    return-void

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->d:Lcom/github/amlcurran/showcaseview/h;

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->r:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/github/amlcurran/showcaseview/h;->a(Landroid/graphics/Bitmap;)V

    .line 272
    iget-boolean v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->p:Z

    if-nez v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->d:Lcom/github/amlcurran/showcaseview/h;

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->r:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->h:I

    int-to-float v2, v2

    iget v3, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->i:I

    int-to-float v3, v3

    invoke-interface {v0, v1, v2, v3}, Lcom/github/amlcurran/showcaseview/h;->a(Landroid/graphics/Bitmap;FF)V

    .line 274
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->d:Lcom/github/amlcurran/showcaseview/h;

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->r:Landroid/graphics/Bitmap;

    invoke-interface {v0, p1, v1}, Lcom/github/amlcurran/showcaseview/h;->a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->c:Lcom/github/amlcurran/showcaseview/j;

    invoke-virtual {v0, p1}, Lcom/github/amlcurran/showcaseview/j;->a(Landroid/graphics/Canvas;)V

    .line 280
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const/4 v0, 0x1

    .line 332
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->h:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 333
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->i:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 334
    float-to-double v4, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    float-to-double v2, v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 336
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->m:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->d:Lcom/github/amlcurran/showcaseview/h;

    invoke-interface {v1}, Lcom/github/amlcurran/showcaseview/h;->c()F

    move-result v1

    float-to-double v4, v1

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    .line 338
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->b()V

    .line 342
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->l:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->d:Lcom/github/amlcurran/showcaseview/h;

    invoke-interface {v1}, Lcom/github/amlcurran/showcaseview/h;->c()F

    move-result v1

    float-to-double v4, v1

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBlocksTouches(Z)V
    .locals 0

    .prologue
    .line 557
    iput-boolean p1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->l:Z

    .line 558
    return-void
.end method

.method public setButtonPosition(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->b:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 534
    return-void
.end method

.method public setButtonText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->b:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->b:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :cond_0
    return-void
.end method

.method public setContentText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->c:Lcom/github/amlcurran/showcaseview/j;

    invoke-virtual {v0, p1}, Lcom/github/amlcurran/showcaseview/j;->a(Ljava/lang/CharSequence;)V

    .line 367
    return-void
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->c:Lcom/github/amlcurran/showcaseview/j;

    invoke-virtual {v0, p1}, Lcom/github/amlcurran/showcaseview/j;->b(Ljava/lang/CharSequence;)V

    .line 362
    return-void
.end method

.method public setHideOnTouchOutside(Z)V
    .locals 0

    .prologue
    .line 549
    iput-boolean p1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->m:Z

    .line 550
    return-void
.end method

.method public setOnShowcaseEventListener(Lcom/github/amlcurran/showcaseview/e;)V
    .locals 1

    .prologue
    .line 238
    if-eqz p1, :cond_0

    .line 239
    iput-object p1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->n:Lcom/github/amlcurran/showcaseview/e;

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    sget-object v0, Lcom/github/amlcurran/showcaseview/e;->a:Lcom/github/amlcurran/showcaseview/e;

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->n:Lcom/github/amlcurran/showcaseview/e;

    goto :goto_0
.end method

.method public setShouldCentreText(Z)V
    .locals 1

    .prologue
    .line 513
    iput-boolean p1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->q:Z

    .line 514
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->o:Z

    .line 515
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->invalidate()V

    .line 516
    return-void
.end method

.method public setShowcase(Lcom/github/amlcurran/showcaseview/a/a;Z)V
    .locals 4

    .prologue
    .line 159
    new-instance v0, Lcom/github/amlcurran/showcaseview/ShowcaseView$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/github/amlcurran/showcaseview/ShowcaseView$1;-><init>(Lcom/github/amlcurran/showcaseview/ShowcaseView;Lcom/github/amlcurran/showcaseview/a/a;Z)V

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 182
    return-void
.end method

.method public setShowcaseX(I)V
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->i:I

    invoke-direct {p0, p1, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->a(II)V

    .line 204
    return-void
.end method

.method public setShowcaseY(I)V
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->h:I

    invoke-direct {p0, v0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->a(II)V

    .line 208
    return-void
.end method

.method public setStyle(I)V
    .locals 2

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/github/amlcurran/showcaseview/R$styleable;->ShowcaseView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 566
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->a(Landroid/content/res/TypedArray;Z)V

    .line 567
    return-void
.end method

.method public setTarget(Lcom/github/amlcurran/showcaseview/a/a;)V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setShowcase(Lcom/github/amlcurran/showcaseview/a/a;Z)V

    .line 156
    return-void
.end method
