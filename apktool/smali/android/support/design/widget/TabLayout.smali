.class public Landroid/support/design/widget/TabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/TabLayout$f;,
        Landroid/support/design/widget/TabLayout$d;,
        Landroid/support/design/widget/TabLayout$b;,
        Landroid/support/design/widget/TabLayout$e;,
        Landroid/support/design/widget/TabLayout$c;,
        Landroid/support/design/widget/TabLayout$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/TabLayout$c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/support/design/widget/TabLayout$c;

.field private final c:Landroid/support/design/widget/TabLayout$b;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/content/res/ColorStateList;

.field private j:F

.field private k:F

.field private final l:I

.field private m:I

.field private final n:I

.field private final o:I

.field private final p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Landroid/support/design/widget/TabLayout$a;

.field private u:Landroid/view/View$OnClickListener;

.field private v:Landroid/support/design/widget/q;

.field private w:Landroid/support/design/widget/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 223
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 227
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 230
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->a:Ljava/util/ArrayList;

    .line 205
    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/design/widget/TabLayout;->m:I

    .line 232
    invoke-static {p1}, Landroid/support/design/widget/p;->a(Landroid/content/Context;)V

    .line 235
    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 238
    new-instance v0, Landroid/support/design/widget/TabLayout$b;

    invoke-direct {v0, p0, p1}, Landroid/support/design/widget/TabLayout$b;-><init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    .line 239
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1, v5}, Landroid/support/design/widget/TabLayout;->addView(Landroid/view/View;II)V

    .line 241
    sget-object v0, Landroid/support/design/R$styleable;->TabLayout:[I

    sget v1, Landroid/support/design/R$style;->Widget_Design_TabLayout:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 244
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    sget v2, Landroid/support/design/R$styleable;->TabLayout_tabIndicatorHeight:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$b;->b(I)V

    .line 246
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    sget v2, Landroid/support/design/R$styleable;->TabLayout_tabIndicatorColor:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$b;->a(I)V

    .line 248
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabPadding:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->g:I

    iput v1, p0, Landroid/support/design/widget/TabLayout;->f:I

    iput v1, p0, Landroid/support/design/widget/TabLayout;->e:I

    iput v1, p0, Landroid/support/design/widget/TabLayout;->d:I

    .line 250
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabPaddingStart:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->d:I

    .line 252
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabPaddingTop:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->e:I

    .line 254
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabPaddingEnd:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->f:I

    .line 256
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabPaddingBottom:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->g:I

    .line 259
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabTextAppearance:I

    sget v2, Landroid/support/design/R$style;->TextAppearance_Design_Tab:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->h:I

    .line 263
    iget v1, p0, Landroid/support/design/widget/TabLayout;->h:I

    sget-object v2, Landroid/support/design/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 266
    :try_start_0
    sget v2, Landroid/support/design/R$styleable;->TextAppearance_android_textSize:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Landroid/support/design/widget/TabLayout;->j:F

    .line 267
    sget v2, Landroid/support/design/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/TabLayout;->i:Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 272
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->i:Landroid/content/res/ColorStateList;

    .line 277
    :cond_0
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 282
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->i:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-static {v2, v1}, Landroid/support/design/widget/TabLayout;->a(II)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->i:Landroid/content/res/ColorStateList;

    .line 285
    :cond_1
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabMinWidth:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->n:I

    .line 287
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabMaxWidth:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->o:I

    .line 289
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabBackground:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->l:I

    .line 290
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabContentStart:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->q:I

    .line 291
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabMode:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->s:I

    .line 292
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabGravity:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->r:I

    .line 293
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 296
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 297
    sget v1, Landroid/support/design/R$dimen;->design_tab_text_size_2line:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->k:F

    .line 298
    sget v1, Landroid/support/design/R$dimen;->design_tab_scrollable_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/TabLayout;->p:I

    .line 301
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->b()V

    .line 302
    return-void

    .line 269
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private a(IF)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 877
    iget v1, p0, Landroid/support/design/widget/TabLayout;->s:I

    if-nez v1, :cond_1

    .line 878
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    invoke-virtual {v1, p1}, Landroid/support/design/widget/TabLayout$b;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 879
    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$b;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$b;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 882
    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 883
    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 885
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v0, v2

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 890
    :cond_1
    return v0

    .line 879
    :cond_2
    const/4 v1, 0x0

    move-object v2, v1

    goto :goto_0

    :cond_3
    move v1, v0

    .line 882
    goto :goto_1
.end method

.method static synthetic a(Landroid/support/design/widget/TabLayout;)I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Landroid/support/design/widget/TabLayout;->l:I

    return v0
.end method

.method private static a(II)Landroid/content/res/ColorStateList;
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1673
    new-array v0, v1, [[I

    .line 1674
    new-array v1, v1, [I

    .line 1677
    sget-object v2, Landroid/support/design/widget/TabLayout;->SELECTED_STATE_SET:[I

    aput-object v2, v0, v3

    .line 1678
    aput p1, v1, v3

    .line 1682
    sget-object v2, Landroid/support/design/widget/TabLayout;->EMPTY_STATE_SET:[I

    aput-object v2, v0, v4

    .line 1683
    aput p0, v1, v4

    .line 1686
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method static synthetic a(Landroid/support/design/widget/TabLayout;Landroid/support/design/widget/q;)Landroid/support/design/widget/q;
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->w:Landroid/support/design/widget/q;

    return-object p1
.end method

.method private a(Landroid/support/design/widget/TabLayout$c;I)V
    .locals 3

    .prologue
    .line 674
    invoke-virtual {p1, p2}, Landroid/support/design/widget/TabLayout$c;->a(I)V

    .line 675
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 677
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 678
    add-int/lit8 v0, p2, 0x1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 679
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$c;->a(I)V

    .line 678
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 681
    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/TabLayout;I)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->b(I)V

    return-void
.end method

.method private a(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 2

    .prologue
    .line 718
    iget v0, p0, Landroid/support/design/widget/TabLayout;->s:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/design/widget/TabLayout;->r:I

    if-nez v0, :cond_0

    .line 719
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 720
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 725
    :goto_0
    return-void

    .line 722
    :cond_0
    const/4 v0, -0x2

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 723
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 914
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$b;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 915
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$b;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 916
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->c()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 917
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 918
    if-eqz p1, :cond_0

    .line 919
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 914
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 922
    :cond_1
    return-void
.end method

.method static synthetic b(Landroid/support/design/widget/TabLayout;)I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Landroid/support/design/widget/TabLayout;->d:I

    return v0
.end method

.method static synthetic b(Landroid/support/design/widget/TabLayout;I)I
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->c(I)I

    move-result v0

    return v0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 894
    .line 895
    iget v0, p0, Landroid/support/design/widget/TabLayout;->s:I

    if-nez v0, :cond_0

    .line 897
    iget v0, p0, Landroid/support/design/widget/TabLayout;->q:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->d:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 899
    :goto_0
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    invoke-static {v2, v0, v1, v1, v1}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 901
    iget v0, p0, Landroid/support/design/widget/TabLayout;->s:I

    packed-switch v0, :pswitch_data_0

    .line 910
    :goto_1
    invoke-direct {p0, v3}, Landroid/support/design/widget/TabLayout;->a(Z)V

    .line 911
    return-void

    .line 903
    :pswitch_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TabLayout$b;->setGravity(I)V

    goto :goto_1

    .line 906
    :pswitch_1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$b;->setGravity(I)V

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    .line 901
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(I)V
    .locals 1

    .prologue
    .line 684
    .line 7691
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$b;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$e;

    .line 685
    if-eqz v0, :cond_0

    .line 686
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$e;->a()V

    .line 688
    :cond_0
    return-void
.end method

.method private c()I
    .locals 2

    .prologue
    .line 1702
    iget v0, p0, Landroid/support/design/widget/TabLayout;->n:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1704
    iget v0, p0, Landroid/support/design/widget/TabLayout;->n:I

    .line 1707
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/design/widget/TabLayout;->s:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/design/widget/TabLayout;->p:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(I)I
    .locals 2

    .prologue
    .line 728
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method static synthetic c(Landroid/support/design/widget/TabLayout;)I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Landroid/support/design/widget/TabLayout;->e:I

    return v0
.end method

.method static synthetic d(Landroid/support/design/widget/TabLayout;)I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Landroid/support/design/widget/TabLayout;->f:I

    return v0
.end method

.method private d(I)V
    .locals 8

    .prologue
    const/16 v7, 0x12c

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 794
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 828
    :goto_0
    return-void

    .line 798
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    .line 9469
    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$b;->getChildCount()I

    move-result v4

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 9470
    invoke-virtual {v3, v2}, Landroid/support/design/widget/TabLayout$b;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 9471
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    if-gtz v5, :cond_3

    move v0, v1

    .line 798
    :cond_1
    if-eqz v0, :cond_4

    .line 802
    :cond_2
    invoke-virtual {p0, p1, v6, v1}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZ)V

    goto :goto_0

    .line 9469
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 806
    :cond_4
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getScrollX()I

    move-result v0

    .line 807
    invoke-direct {p0, p1, v6}, Landroid/support/design/widget/TabLayout;->a(IF)I

    move-result v1

    .line 809
    if-eq v0, v1, :cond_6

    .line 810
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->v:Landroid/support/design/widget/q;

    if-nez v2, :cond_5

    .line 811
    invoke-static {}, Landroid/support/design/widget/w;->a()Landroid/support/design/widget/q;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/TabLayout;->v:Landroid/support/design/widget/q;

    .line 812
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->v:Landroid/support/design/widget/q;

    sget-object v3, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/q;->a(Landroid/view/animation/Interpolator;)V

    .line 813
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->v:Landroid/support/design/widget/q;

    invoke-virtual {v2, v7}, Landroid/support/design/widget/q;->a(I)V

    .line 814
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->v:Landroid/support/design/widget/q;

    new-instance v3, Landroid/support/design/widget/TabLayout$2;

    invoke-direct {v3, p0}, Landroid/support/design/widget/TabLayout$2;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {v2, v3}, Landroid/support/design/widget/q;->a(Landroid/support/design/widget/q$c;)V

    .line 822
    :cond_5
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->v:Landroid/support/design/widget/q;

    invoke-virtual {v2, v0, v1}, Landroid/support/design/widget/q;->a(II)V

    .line 823
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->v:Landroid/support/design/widget/q;

    invoke-virtual {v0}, Landroid/support/design/widget/q;->a()V

    .line 827
    :cond_6
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    invoke-virtual {v0, p1, v7}, Landroid/support/design/widget/TabLayout$b;->a(II)V

    goto :goto_0
.end method

.method static synthetic e(Landroid/support/design/widget/TabLayout;)I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Landroid/support/design/widget/TabLayout;->g:I

    return v0
.end method

.method private e(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 831
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$b;->getChildCount()I

    move-result v3

    .line 832
    if-ge p1, v3, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$b;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    move v2, v1

    .line 833
    :goto_0
    if-ge v2, v3, :cond_1

    .line 834
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout$b;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 835
    if-ne v2, p1, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 833
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 835
    goto :goto_1

    .line 838
    :cond_1
    return-void
.end method

.method static synthetic f(Landroid/support/design/widget/TabLayout;)I
    .locals 1

    .prologue
    .line 97
    .line 9711
    iget v0, p0, Landroid/support/design/widget/TabLayout;->m:I

    .line 97
    return v0
.end method

.method static synthetic g(Landroid/support/design/widget/TabLayout;)I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Landroid/support/design/widget/TabLayout;->m:I

    return v0
.end method

.method static synthetic h(Landroid/support/design/widget/TabLayout;)F
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Landroid/support/design/widget/TabLayout;->j:F

    return v0
.end method

.method static synthetic i(Landroid/support/design/widget/TabLayout;)F
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Landroid/support/design/widget/TabLayout;->k:F

    return v0
.end method

.method static synthetic j(Landroid/support/design/widget/TabLayout;)I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Landroid/support/design/widget/TabLayout;->s:I

    return v0
.end method

.method static synthetic k(Landroid/support/design/widget/TabLayout;)I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Landroid/support/design/widget/TabLayout;->h:I

    return v0
.end method

.method static synthetic l(Landroid/support/design/widget/TabLayout;)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->i:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic m(Landroid/support/design/widget/TabLayout;)I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Landroid/support/design/widget/TabLayout;->r:I

    return v0
.end method

.method static synthetic n(Landroid/support/design/widget/TabLayout;)I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/TabLayout;->r:I

    return v0
.end method

.method static synthetic o(Landroid/support/design/widget/TabLayout;)V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->a(Z)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->b:Landroid/support/design/widget/TabLayout$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->b:Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$c;->c()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final a(I)Landroid/support/design/widget/TabLayout$c;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$c;

    return-object v0
.end method

.method final a(Landroid/support/design/widget/TabLayout$c;)V
    .locals 1

    .prologue
    .line 841
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$c;Z)V

    .line 842
    return-void
.end method

.method final a(Landroid/support/design/widget/TabLayout$c;Z)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 845
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->b:Landroid/support/design/widget/TabLayout$c;

    if-ne v0, p1, :cond_1

    .line 846
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->b:Landroid/support/design/widget/TabLayout$c;

    if-eqz v0, :cond_0

    .line 850
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$c;->c()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->d(I)V

    .line 874
    :cond_0
    :goto_0
    return-void

    .line 853
    :cond_1
    if-eqz p2, :cond_4

    .line 854
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$c;->c()I

    move-result v0

    .line 855
    :goto_1
    if-eq v0, v1, :cond_2

    .line 856
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->e(I)V

    .line 858
    :cond_2
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->b:Landroid/support/design/widget/TabLayout$c;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->b:Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$c;->c()I

    move-result v2

    if-ne v2, v1, :cond_6

    :cond_3
    if-eq v0, v1, :cond_6

    .line 861
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZ)V

    .line 869
    :cond_4
    :goto_2
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->b:Landroid/support/design/widget/TabLayout$c;

    .line 870
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->b:Landroid/support/design/widget/TabLayout$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->t:Landroid/support/design/widget/TabLayout$a;

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->t:Landroid/support/design/widget/TabLayout$a;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->b:Landroid/support/design/widget/TabLayout$c;

    invoke-interface {v0, v1}, Landroid/support/design/widget/TabLayout$a;->a(Landroid/support/design/widget/TabLayout$c;)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 854
    goto :goto_1

    .line 863
    :cond_6
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->d(I)V

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 735
    .line 8691
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_7

    .line 8692
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$c;

    .line 8693
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$c;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$c;->d()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 8698
    :goto_1
    if-eqz v0, :cond_3

    const/16 v0, 0x48

    .line 735
    :goto_2
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->c(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingTop()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v0, v3

    .line 736
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 747
    :goto_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 748
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 751
    iget v3, p0, Landroid/support/design/widget/TabLayout;->o:I

    if-lez v3, :cond_4

    iget v0, p0, Landroid/support/design/widget/TabLayout;->o:I

    :goto_4
    iput v0, p0, Landroid/support/design/widget/TabLayout;->m:I

    .line 757
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 759
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getChildCount()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 762
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 765
    iget v0, p0, Landroid/support/design/widget/TabLayout;->s:I

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 777
    :goto_5
    if-eqz v0, :cond_1

    .line 779
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v0, v1}, Landroid/support/design/widget/TabLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 781
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 783
    invoke-virtual {v3, v1, v0}, Landroid/view/View;->measure(II)V

    .line 786
    :cond_1
    return-void

    .line 8691
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 8698
    :cond_3
    const/16 v0, 0x30

    goto :goto_2

    .line 738
    :sswitch_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_3

    .line 743
    :sswitch_1
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_3

    .line 751
    :cond_4
    const/16 v3, 0x38

    invoke-direct {p0, v3}, Landroid/support/design/widget/TabLayout;->c(I)I

    move-result v3

    sub-int/2addr v0, v3

    goto :goto_4

    .line 769
    :pswitch_0
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v4

    if-ge v0, v4, :cond_5

    move v0, v1

    goto :goto_5

    :cond_5
    move v0, v2

    goto :goto_5

    .line 773
    :pswitch_1
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v4

    if-eq v0, v4, :cond_6

    :goto_6
    move v0, v1

    goto :goto_5

    :cond_6
    move v1, v2

    goto :goto_6

    :cond_7
    move v0, v2

    goto/16 :goto_1

    .line 736
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
    .end sparse-switch

    .line 765
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$a;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->t:Landroid/support/design/widget/TabLayout$a;

    .line 420
    return-void
.end method

.method public setScrollPosition(IFZ)V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->w:Landroid/support/design/widget/q;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->w:Landroid/support/design/widget/q;

    invoke-virtual {v0}, Landroid/support/design/widget/q;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$b;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 341
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    invoke-virtual {v0, p1, p2}, Landroid/support/design/widget/TabLayout$b;->a(IF)V

    .line 342
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/TabLayout;->a(IF)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/design/widget/TabLayout;->scrollTo(II)V

    .line 345
    if-eqz p3, :cond_0

    .line 346
    int-to-float v0, p1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->e(I)V

    goto :goto_0
.end method

.method public setSelectedTabIndicatorColor(I)V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$b;->a(I)V

    .line 311
    return-void
.end method

.method public setSelectedTabIndicatorHeight(I)V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$b;->b(I)V

    .line 320
    return-void
.end method

.method public setTabGravity(I)V
    .locals 1

    .prologue
    .line 551
    iget v0, p0, Landroid/support/design/widget/TabLayout;->r:I

    if-eq v0, p1, :cond_0

    .line 552
    iput p1, p0, Landroid/support/design/widget/TabLayout;->r:I

    .line 553
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->b()V

    .line 555
    :cond_0
    return-void
.end method

.method public setTabMode(I)V
    .locals 1

    .prologue
    .line 529
    iget v0, p0, Landroid/support/design/widget/TabLayout;->s:I

    if-eq p1, v0, :cond_0

    .line 530
    iput p1, p0, Landroid/support/design/widget/TabLayout;->s:I

    .line 531
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->b()V

    .line 533
    :cond_0
    return-void
.end method

.method public setTabTextColors(II)V
    .locals 1

    .prologue
    .line 589
    invoke-static {p1, p2}, Landroid/support/design/widget/TabLayout;->a(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    .line 590
    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->i:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 572
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->i:Landroid/content/res/ColorStateList;

    .line 2650
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$b;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 2651
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->b(I)V

    .line 2650
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 575
    :cond_0
    return-void
.end method

.method public setTabsFromPagerAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 643
    .line 3504
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$b;->removeAllViews()V

    .line 3506
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3507
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$c;

    .line 3508
    invoke-virtual {v0, v8}, Landroid/support/design/widget/TabLayout$c;->a(I)V

    .line 3509
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 3512
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->b:Landroid/support/design/widget/TabLayout$c;

    .line 644
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_5

    .line 4431
    new-instance v2, Landroid/support/design/widget/TabLayout$c;

    invoke-direct {v2, p0}, Landroid/support/design/widget/TabLayout$c;-><init>(Landroid/support/design/widget/TabLayout;)V

    .line 645
    invoke-virtual {p1, v0}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$c;->a(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$c;

    move-result-object v2

    .line 5361
    iget-object v3, p0, Landroid/support/design/widget/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    .line 5382
    invoke-static {v2}, Landroid/support/design/widget/TabLayout$c;->a(Landroid/support/design/widget/TabLayout$c;)Landroid/support/design/widget/TabLayout;

    move-result-object v4

    if-eq v4, p0, :cond_1

    .line 5383
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab belongs to a different TabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6656
    :cond_1
    new-instance v4, Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5, v2}, Landroid/support/design/widget/TabLayout$e;-><init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;Landroid/support/design/widget/TabLayout$c;)V

    .line 6657
    invoke-virtual {v4, v9}, Landroid/support/design/widget/TabLayout$e;->setFocusable(Z)V

    .line 6658
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->c()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout$e;->setMinimumWidth(I)V

    .line 6660
    iget-object v5, p0, Landroid/support/design/widget/TabLayout;->u:Landroid/view/View$OnClickListener;

    if-nez v5, :cond_2

    .line 6661
    new-instance v5, Landroid/support/design/widget/TabLayout$1;

    invoke-direct {v5, p0}, Landroid/support/design/widget/TabLayout$1;-><init>(Landroid/support/design/widget/TabLayout;)V

    iput-object v5, p0, Landroid/support/design/widget/TabLayout;->u:Landroid/view/View$OnClickListener;

    .line 6669
    :cond_2
    iget-object v5, p0, Landroid/support/design/widget/TabLayout;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout$e;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5696
    iget-object v5, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$b;

    .line 6711
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 6713
    invoke-direct {p0, v6}, Landroid/support/design/widget/TabLayout;->a(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 5696
    invoke-virtual {v5, v4, v6}, Landroid/support/design/widget/TabLayout$b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5697
    if-eqz v3, :cond_3

    .line 5698
    invoke-virtual {v4, v9}, Landroid/support/design/widget/TabLayout$e;->setSelected(Z)V

    .line 5387
    :cond_3
    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {p0, v2, v4}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$c;I)V

    .line 5388
    if-eqz v3, :cond_4

    .line 5389
    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$c;->e()V

    .line 644
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 647
    :cond_5
    return-void
.end method

.method public setupWithViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    .prologue
    .line 610
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 611
    if-nez v0, :cond_0

    .line 612
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ViewPager does not have a PagerAdapter set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 616
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setTabsFromPagerAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 619
    new-instance v1, Landroid/support/design/widget/TabLayout$d;

    invoke-direct {v1, p0}, Landroid/support/design/widget/TabLayout$d;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {p1, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 622
    new-instance v1, Landroid/support/design/widget/TabLayout$f;

    invoke-direct {v1, p1}, Landroid/support/design/widget/TabLayout$f;-><init>(Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$a;)V

    .line 625
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 626
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 627
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->a()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 628
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->a(I)Landroid/support/design/widget/TabLayout$c;

    move-result-object v0

    .line 2841
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$c;Z)V

    .line 631
    :cond_1
    return-void
.end method
