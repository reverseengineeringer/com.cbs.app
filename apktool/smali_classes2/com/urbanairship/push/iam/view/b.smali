.class final Lcom/urbanairship/push/iam/view/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/urbanairship/push/iam/view/a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/view/View;

.field private final d:Landroid/widget/ImageButton;

.field private final e:Landroid/view/ViewGroup;

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/graphics/Typeface;

.field private j:Lcom/urbanairship/push/iam/view/a$b;

.field private k:Lcom/urbanairship/push/iam/view/a$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/16 v4, 0x8

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/urbanairship/push/iam/view/b;->a:Landroid/content/Context;

    .line 86
    sget v0, Lcom/urbanairship/R$layout;->ua_iam_content:I

    invoke-static {p1, v0, p2}, Lcom/urbanairship/push/iam/view/BannerView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 87
    sget v0, Lcom/urbanairship/R$id;->alert:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/urbanairship/push/iam/view/b;->b:Landroid/widget/TextView;

    .line 88
    sget v0, Lcom/urbanairship/R$id;->action_divider:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/view/b;->c:Landroid/view/View;

    .line 89
    sget v0, Lcom/urbanairship/R$id;->action_buttons:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/urbanairship/push/iam/view/b;->e:Landroid/view/ViewGroup;

    .line 90
    sget v0, Lcom/urbanairship/R$id;->close:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/urbanairship/push/iam/view/b;->d:Landroid/widget/ImageButton;

    .line 92
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/b;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/b;->c:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/b;->d:Landroid/widget/ImageButton;

    new-instance v1, Lcom/urbanairship/push/iam/view/b$1;

    invoke-direct {v1, p0}, Lcom/urbanairship/push/iam/view/b$1;-><init>(Lcom/urbanairship/push/iam/view/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    if-eqz p3, :cond_2

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/urbanairship/R$styleable;->BannerView:[I

    sget v2, Lcom/urbanairship/R$style;->InAppMessage_Banner:I

    invoke-virtual {v0, p3, v1, p4, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 107
    sget v1, Lcom/urbanairship/R$styleable;->BannerView_bannerFontPath:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-static {v1}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/urbanairship/push/iam/view/b;->i:Landroid/graphics/Typeface;

    .line 112
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/urbanairship/R$color;->ua_iam_primary:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/urbanairship/R$color;->ua_iam_secondary:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 115
    sget v3, Lcom/urbanairship/R$styleable;->BannerView_bannerPrimaryColor:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/urbanairship/push/iam/view/b;->setPrimaryColor(I)V

    .line 116
    sget v1, Lcom/urbanairship/R$styleable;->BannerView_bannerSecondaryColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/urbanairship/push/iam/view/b;->setSecondaryColor(I)V

    .line 118
    sget v1, Lcom/urbanairship/R$styleable;->BannerView_bannerNoDismissButton:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 119
    iget-object v1, p0, Lcom/urbanairship/push/iam/view/b;->d:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 127
    :cond_1
    :goto_0
    sget v1, Lcom/urbanairship/R$styleable;->BannerView_bannerActionButtonTextAppearance:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/urbanairship/push/iam/view/b;->h:I

    .line 129
    sget v1, Lcom/urbanairship/R$styleable;->BannerView_bannerTextAppearance:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 130
    iget-object v2, p0, Lcom/urbanairship/push/iam/view/b;->b:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2, v1}, Lcom/urbanairship/push/iam/view/b;->a(Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 132
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 134
    :cond_2
    return-void

    .line 121
    :cond_3
    sget v1, Lcom/urbanairship/R$styleable;->BannerView_bannerDismissButtonDrawable:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 122
    if-eqz v1, :cond_1

    .line 123
    iget-object v2, p0, Lcom/urbanairship/push/iam/view/b;->d:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/urbanairship/push/iam/view/b;)Lcom/urbanairship/push/iam/view/a$b;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/b;->j:Lcom/urbanairship/push/iam/view/a$b;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/widget/TextView;I)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 244
    if-eq p3, v0, :cond_0

    .line 245
    invoke-virtual {p2, p1, p3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/urbanairship/push/iam/view/b;->i:Landroid/graphics/Typeface;

    if-eqz v1, :cond_2

    .line 251
    invoke-virtual {p2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 252
    invoke-virtual {p2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    .line 255
    :cond_1
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 257
    if-ltz v0, :cond_3

    .line 258
    iget-object v1, p0, Lcom/urbanairship/push/iam/view/b;->i:Landroid/graphics/Typeface;

    invoke-virtual {p2, v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 265
    :cond_2
    :goto_0
    iget v0, p0, Lcom/urbanairship/push/iam/view/b;->g:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 266
    return-void

    .line 260
    :cond_3
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/b;->i:Landroid/graphics/Typeface;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/urbanairship/push/iam/view/b;)Lcom/urbanairship/push/iam/view/a$a;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/b;->k:Lcom/urbanairship/push/iam/view/a$a;

    return-object v0
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/urbanairship/push/iam/view/b;->f:I

    return v0
.end method

.method public final setNotificationActionButtonGroup(Lcom/urbanairship/push/a/d;)V
    .locals 10

    .prologue
    const/16 v1, 0x8

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 145
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/b;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 147
    if-nez p1, :cond_1

    .line 148
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/b;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/b;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    :cond_0
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/b;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/b;->c:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/b;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 157
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 158
    const/4 v1, 0x1

    const/high16 v3, 0x42000000    # 32.0f

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v3, v0

    .line 160
    invoke-virtual {p1}, Lcom/urbanairship/push/a/d;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/a/c;

    .line 161
    sget v1, Lcom/urbanairship/R$layout;->ua_iam_button:I

    iget-object v5, p0, Lcom/urbanairship/push/iam/view/b;->e:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 163
    invoke-virtual {v0}, Lcom/urbanairship/push/a/c;->c()I

    move-result v5

    if-lez v5, :cond_2

    .line 164
    invoke-virtual {v0}, Lcom/urbanairship/push/a/c;->c()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 167
    :cond_2
    iget-object v5, p0, Lcom/urbanairship/push/iam/view/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/urbanairship/push/a/c;->d()I

    move-result v6

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 168
    invoke-virtual {v5, v8, v8, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 169
    iget v6, p0, Lcom/urbanairship/push/iam/view/b;->g:I

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 170
    invoke-virtual {v1, v5, v9, v9, v9}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 172
    iget-object v5, p0, Lcom/urbanairship/push/iam/view/b;->a:Landroid/content/Context;

    iget v6, p0, Lcom/urbanairship/push/iam/view/b;->h:I

    invoke-direct {p0, v5, v1, v6}, Lcom/urbanairship/push/iam/view/b;->a(Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 174
    new-instance v5, Lcom/urbanairship/push/iam/view/b$2;

    invoke-direct {v5, p0, v0}, Lcom/urbanairship/push/iam/view/b$2;-><init>(Lcom/urbanairship/push/iam/view/b;Lcom/urbanairship/push/a/c;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/b;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final setOnActionClickListener(Lcom/urbanairship/push/iam/view/a$a;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/urbanairship/push/iam/view/b;->k:Lcom/urbanairship/push/iam/view/a$a;

    .line 195
    return-void
.end method

.method public final setOnDismissClickListener(Lcom/urbanairship/push/iam/view/a$b;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/urbanairship/push/iam/view/b;->j:Lcom/urbanairship/push/iam/view/a$b;

    .line 190
    return-void
.end method

.method public final setPrimaryColor(I)V
    .locals 0

    .prologue
    .line 221
    iput p1, p0, Lcom/urbanairship/push/iam/view/b;->f:I

    .line 222
    return-void
.end method

.method public final setSecondaryColor(I)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 199
    iput p1, p0, Lcom/urbanairship/push/iam/view/b;->g:I

    .line 201
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/b;->c:Landroid/view/View;

    iget v1, p0, Lcom/urbanairship/push/iam/view/b;->g:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 202
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/b;->d:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/urbanairship/push/iam/view/b;->g:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v3}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 203
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/b;->b:Landroid/widget/TextView;

    iget v1, p0, Lcom/urbanairship/push/iam/view/b;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    move v1, v2

    .line 205
    :goto_0
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/b;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 206
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/b;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 207
    instance-of v3, v0, Landroid/widget/Button;

    if-eqz v3, :cond_2

    .line 208
    check-cast v0, Landroid/widget/Button;

    .line 209
    invoke-virtual {v0}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v6, v4, v3

    .line 210
    if-eqz v6, :cond_0

    .line 211
    iget v7, p0, Lcom/urbanairship/push/iam/view/b;->g:I

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 209
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 214
    :cond_1
    iget v3, p0, Lcom/urbanairship/push/iam/view/b;->g:I

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 205
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 217
    :cond_3
    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/b;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    return-void
.end method
