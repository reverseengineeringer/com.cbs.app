.class public Lcom/viewpagerindicator/TabPageIndicator;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"

# interfaces
.implements Lcom/viewpagerindicator/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/viewpagerindicator/TabPageIndicator$b;,
        Lcom/viewpagerindicator/TabPageIndicator$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/CharSequence;


# instance fields
.field private b:Ljava/lang/Runnable;

.field private final c:Landroid/view/View$OnClickListener;

.field private final d:Lcom/viewpagerindicator/b;

.field private e:Landroid/support/v4/view/ViewPager;

.field private f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private g:I

.field private h:I

.field private i:Lcom/viewpagerindicator/TabPageIndicator$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, ""

    sput-object v0, Lcom/viewpagerindicator/TabPageIndicator;->a:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/TabPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance v0, Lcom/viewpagerindicator/TabPageIndicator$1;

    invoke-direct {v0, p0}, Lcom/viewpagerindicator/TabPageIndicator$1;-><init>(Lcom/viewpagerindicator/TabPageIndicator;)V

    iput-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->c:Landroid/view/View$OnClickListener;

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicator;->setHorizontalScrollBarEnabled(Z)V

    .line 85
    new-instance v0, Lcom/viewpagerindicator/b;

    sget v1, Lcom/viewpagerindicator/R$attr;->vpiTabPageIndicatorStyle:I

    invoke-direct {v0, p1, v1}, Lcom/viewpagerindicator/b;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->d:Lcom/viewpagerindicator/b;

    .line 86
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->d:Lcom/viewpagerindicator/b;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    return-void
.end method

.method static synthetic a(Lcom/viewpagerindicator/TabPageIndicator;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->e:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private a()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 206
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->d:Lcom/viewpagerindicator/b;

    invoke-virtual {v0}, Lcom/viewpagerindicator/b;->removeAllViews()V

    .line 207
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    .line 212
    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v4

    move v1, v2

    .line 213
    :goto_0
    if-ge v1, v4, :cond_1

    .line 214
    invoke-virtual {v3, v1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 215
    if-nez v0, :cond_0

    .line 216
    sget-object v0, Lcom/viewpagerindicator/TabPageIndicator;->a:Ljava/lang/CharSequence;

    .line 1153
    :cond_0
    new-instance v5, Lcom/viewpagerindicator/TabPageIndicator$b;

    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/viewpagerindicator/TabPageIndicator$b;-><init>(Lcom/viewpagerindicator/TabPageIndicator;Landroid/content/Context;)V

    .line 1154
    invoke-static {v5, v1}, Lcom/viewpagerindicator/TabPageIndicator$b;->a(Lcom/viewpagerindicator/TabPageIndicator$b;I)I

    .line 1155
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/viewpagerindicator/TabPageIndicator$b;->setFocusable(Z)V

    .line 1156
    iget-object v6, p0, Lcom/viewpagerindicator/TabPageIndicator;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Lcom/viewpagerindicator/TabPageIndicator$b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1157
    invoke-virtual {v5, v0}, Lcom/viewpagerindicator/TabPageIndicator$b;->setText(Ljava/lang/CharSequence;)V

    .line 1163
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->d:Lcom/viewpagerindicator/b;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v6, v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v5, v6}, Lcom/viewpagerindicator/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 224
    :cond_1
    iget v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->h:I

    if-le v0, v4, :cond_2

    .line 225
    add-int/lit8 v0, v4, -0x1

    iput v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->h:I

    .line 227
    :cond_2
    iget v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->h:I

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicator;->setCurrentItem(I)V

    .line 228
    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicator;->requestLayout()V

    .line 229
    return-void
.end method

.method static synthetic b(Lcom/viewpagerindicator/TabPageIndicator;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->b:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Lcom/viewpagerindicator/TabPageIndicator;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->g:I

    return v0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 138
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicator;->post(Ljava/lang/Runnable;)Z

    .line 142
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 147
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 150
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v1, 0x1

    .line 95
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 96
    if-ne v2, v4, :cond_2

    move v0, v1

    .line 97
    :goto_0
    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicator;->setFillViewport(Z)V

    .line 99
    iget-object v3, p0, Lcom/viewpagerindicator/TabPageIndicator;->d:Lcom/viewpagerindicator/b;

    invoke-virtual {v3}, Lcom/viewpagerindicator/b;->getChildCount()I

    move-result v3

    .line 100
    if-le v3, v1, :cond_4

    if-eq v2, v4, :cond_0

    const/high16 v1, -0x80000000

    if-ne v2, v1, :cond_4

    .line 101
    :cond_0
    const/4 v1, 0x2

    if-le v3, v1, :cond_3

    .line 102
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->g:I

    .line 110
    :goto_1
    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicator;->getMeasuredWidth()I

    move-result v1

    .line 111
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 112
    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicator;->getMeasuredWidth()I

    move-result v2

    .line 114
    if-eqz v0, :cond_1

    if-eq v1, v2, :cond_1

    .line 116
    iget v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->h:I

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicator;->setCurrentItem(I)V

    .line 118
    :cond_1
    return-void

    .line 96
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 104
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->g:I

    goto :goto_1

    .line 107
    :cond_4
    const/4 v1, -0x1

    iput v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->g:I

    goto :goto_1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 171
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 178
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/TabPageIndicator;->setCurrentItem(I)V

    .line 183
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 186
    :cond_0
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 239
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_0
    iput p1, p0, Lcom/viewpagerindicator/TabPageIndicator;->h:I

    .line 243
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 245
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->d:Lcom/viewpagerindicator/b;

    invoke-virtual {v0}, Lcom/viewpagerindicator/b;->getChildCount()I

    move-result v3

    move v2, v1

    .line 246
    :goto_0
    if-ge v2, v3, :cond_4

    .line 247
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->d:Lcom/viewpagerindicator/b;

    invoke-virtual {v0, v2}, Lcom/viewpagerindicator/b;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 248
    if-ne v2, p1, :cond_3

    const/4 v0, 0x1

    .line 249
    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 250
    if-eqz v0, :cond_2

    .line 2121
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->d:Lcom/viewpagerindicator/b;

    invoke-virtual {v0, p1}, Lcom/viewpagerindicator/b;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2122
    iget-object v4, p0, Lcom/viewpagerindicator/TabPageIndicator;->b:Ljava/lang/Runnable;

    if-eqz v4, :cond_1

    .line 2123
    iget-object v4, p0, Lcom/viewpagerindicator/TabPageIndicator;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/viewpagerindicator/TabPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2125
    :cond_1
    new-instance v4, Lcom/viewpagerindicator/TabPageIndicator$2;

    invoke-direct {v4, p0, v0}, Lcom/viewpagerindicator/TabPageIndicator$2;-><init>(Lcom/viewpagerindicator/TabPageIndicator;Landroid/view/View;)V

    iput-object v4, p0, Lcom/viewpagerindicator/TabPageIndicator;->b:Ljava/lang/Runnable;

    .line 2132
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicator;->post(Ljava/lang/Runnable;)Z

    .line 246
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 248
    goto :goto_1

    .line 254
    :cond_4
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/viewpagerindicator/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 259
    return-void
.end method

.method public setOnTabReselectedListener(Lcom/viewpagerindicator/TabPageIndicator$a;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/viewpagerindicator/TabPageIndicator;->i:Lcom/viewpagerindicator/TabPageIndicator$a;

    .line 91
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    .line 203
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->e:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 196
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 197
    if-nez v0, :cond_2

    .line 198
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_2
    iput-object p1, p0, Lcom/viewpagerindicator/TabPageIndicator;->e:Landroid/support/v4/view/ViewPager;

    .line 201
    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 202
    invoke-direct {p0}, Lcom/viewpagerindicator/TabPageIndicator;->a()V

    goto :goto_0
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0

    .prologue
    .line 233
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/TabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 234
    invoke-virtual {p0, p2}, Lcom/viewpagerindicator/TabPageIndicator;->setCurrentItem(I)V

    .line 235
    return-void
.end method
