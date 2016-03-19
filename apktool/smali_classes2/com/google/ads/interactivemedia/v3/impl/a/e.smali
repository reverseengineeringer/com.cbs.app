.class public Lcom/google/ads/interactivemedia/v3/impl/a/e;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/ads/interactivemedia/v3/impl/aa$d;
.implements Lcom/google/ads/interactivemedia/v3/impl/c$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/a/e$b;,
        Lcom/google/ads/interactivemedia/v3/impl/a/e$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/FrameLayout;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/impl/a/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:F

.field private final d:Ljava/lang/String;

.field private e:Lcom/google/ads/interactivemedia/v3/impl/aa;

.field private f:Z

.field private g:F

.field private h:Ljava/lang/String;

.field private i:Lcom/google/ads/interactivemedia/v3/impl/a/e$b;

.field private j:Lcom/google/ads/interactivemedia/v3/impl/a/b;

.field private k:Lcom/google/ads/interactivemedia/v3/impl/a/d;

.field private l:Lcom/google/ads/interactivemedia/v3/impl/a/a;

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/a/d;Lcom/google/ads/interactivemedia/v3/impl/aa;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 77
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/impl/a/e;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/a/d;Lcom/google/ads/interactivemedia/v3/impl/aa;Ljava/lang/String;B)V

    .line 79
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/a/d;Lcom/google/ads/interactivemedia/v3/impl/aa;Ljava/lang/String;B)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 87
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->b:Ljava/util/List;

    .line 61
    iput-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->f:Z

    .line 88
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->e:Lcom/google/ads/interactivemedia/v3/impl/aa;

    .line 89
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->d:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->k:Lcom/google/ads/interactivemedia/v3/impl/a/d;

    .line 91
    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->l:Lcom/google/ads/interactivemedia/v3/impl/a/a;

    .line 92
    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->j:Lcom/google/ads/interactivemedia/v3/impl/a/b;

    .line 93
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->c:F

    .line 1281
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/a/a;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->k:Lcom/google/ads/interactivemedia/v3/impl/a/d;

    invoke-direct {v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/impl/a/a;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/a/d;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->l:Lcom/google/ads/interactivemedia/v3/impl/a/a;

    .line 1163
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1165
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1166
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->l:Lcom/google/ads/interactivemedia/v3/impl/a/a;

    invoke-virtual {p0, v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/a/e;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1167
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->l:Lcom/google/ads/interactivemedia/v3/impl/a/a;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/a/e$1;

    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/impl/a/e$1;-><init>(Lcom/google/ads/interactivemedia/v3/impl/a/e;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/a/a;->a(Lcom/google/ads/interactivemedia/v3/impl/a/a$a;)V

    .line 96
    iget-boolean v0, p2, Lcom/google/ads/interactivemedia/v3/impl/a/d;->b:Z

    if-eqz v0, :cond_0

    .line 2277
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/a/b;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->k:Lcom/google/ads/interactivemedia/v3/impl/a/d;

    invoke-direct {v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/impl/a/b;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/a/d;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->j:Lcom/google/ads/interactivemedia/v3/impl/a/b;

    .line 2136
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->a:Landroid/widget/FrameLayout;

    .line 2137
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->a:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->j:Lcom/google/ads/interactivemedia/v3/impl/a/b;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2140
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->k:Lcom/google/ads/interactivemedia/v3/impl/a/d;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/impl/a/d;->r:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->c:F

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/a/c;->a(IF)I

    move-result v0

    .line 2141
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0, v0, v4, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 2143
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2147
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2148
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->a:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2150
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->k:Lcom/google/ads/interactivemedia/v3/impl/a/d;

    iget v1, v1, Lcom/google/ads/interactivemedia/v3/impl/a/d;->s:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->c:F

    .line 2151
    invoke-static {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/a/c;->a(IF)I

    move-result v1

    .line 2150
    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 2152
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2154
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2155
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2156
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2158
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/a/e;->addView(Landroid/view/View;)V

    .line 99
    :cond_0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->f:Z

    .line 3260
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->f:Z

    .line 100
    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/impl/a/e;)Ljava/util/List;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->b:Ljava/util/List;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->f:Z

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->l:Lcom/google/ads/interactivemedia/v3/impl/a/a;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u00bb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/a/a;->a(Ljava/lang/String;)V

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->l:Lcom/google/ads/interactivemedia/v3/impl/a/a;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/a/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->l:Lcom/google/ads/interactivemedia/v3/impl/a/a;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/a/a;->b(Ljava/lang/String;)V

    .line 189
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/b/a/e;)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 229
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/a/e;->b()F

    move-result v0

    cmpg-float v0, v0, v9

    if-gez v0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/a/e;->b()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/a/e;->a()F

    move-result v2

    sub-float v2, v0, v2

    .line 233
    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->g:F

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    cmpl-double v0, v4, v6

    if-eqz v0, :cond_3

    move v0, v1

    .line 234
    :goto_1
    if-eqz v0, :cond_2

    .line 235
    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 236
    const-string v4, "minutes"

    float-to-int v5, v2

    div-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v4, "seconds"

    float-to-int v5, v2

    rem-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v4, "adPosition"

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->m:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v4, "totalAds"

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->n:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->e:Lcom/google/ads/interactivemedia/v3/impl/aa;

    new-instance v5, Lcom/google/ads/interactivemedia/v3/impl/z;

    sget-object v6, Lcom/google/ads/interactivemedia/v3/impl/z$b;->f:Lcom/google/ads/interactivemedia/v3/impl/z$b;

    sget-object v7, Lcom/google/ads/interactivemedia/v3/impl/z$c;->aa:Lcom/google/ads/interactivemedia/v3/impl/z$c;

    iget-object v8, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->d:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, v3}, Lcom/google/ads/interactivemedia/v3/impl/z;-><init>(Lcom/google/ads/interactivemedia/v3/impl/z$b;Lcom/google/ads/interactivemedia/v3/impl/z$c;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Lcom/google/ads/interactivemedia/v3/impl/aa;->b(Lcom/google/ads/interactivemedia/v3/impl/z;)V

    .line 243
    :cond_2
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->g:F

    .line 244
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->i:Lcom/google/ads/interactivemedia/v3/impl/a/e$b;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/a/e$b;->b:Lcom/google/ads/interactivemedia/v3/impl/a/e$b;

    if-ne v2, v3, :cond_0

    .line 247
    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/a/e;->a()F

    move-result v3

    sub-float/2addr v2, v3

    .line 248
    cmpg-float v3, v2, v9

    if-gtz v3, :cond_4

    .line 249
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->e:Lcom/google/ads/interactivemedia/v3/impl/aa;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/z;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/z$b;->f:Lcom/google/ads/interactivemedia/v3/impl/z$b;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/z$c;->ad:Lcom/google/ads/interactivemedia/v3/impl/z$c;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/z;-><init>(Lcom/google/ads/interactivemedia/v3/impl/z$b;Lcom/google/ads/interactivemedia/v3/impl/z$c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/aa;->b(Lcom/google/ads/interactivemedia/v3/impl/z;)V

    goto/16 :goto_0

    .line 233
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 251
    :cond_4
    if-eqz v0, :cond_0

    .line 252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 253
    const-string v1, "seconds"

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->e:Lcom/google/ads/interactivemedia/v3/impl/aa;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/z;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/z$b;->f:Lcom/google/ads/interactivemedia/v3/impl/z$b;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/impl/z$c;->ac:Lcom/google/ads/interactivemedia/v3/impl/z$c;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/google/ads/interactivemedia/v3/impl/z;-><init>(Lcom/google/ads/interactivemedia/v3/impl/z$b;Lcom/google/ads/interactivemedia/v3/impl/z$c;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/aa;->b(Lcom/google/ads/interactivemedia/v3/impl/z;)V

    goto/16 :goto_0
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/b/a;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 204
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/b/a;->k()Lcom/google/ads/interactivemedia/v3/b/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/f;->b()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->m:I

    .line 205
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/b/a;->k()Lcom/google/ads/interactivemedia/v3/b/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/f;->a()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->n:I

    .line 206
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/a/e;->a(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->k:Lcom/google/ads/interactivemedia/v3/impl/a/d;

    iget-boolean v0, v0, Lcom/google/ads/interactivemedia/v3/impl/a/d;->m:Z

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->k:Lcom/google/ads/interactivemedia/v3/impl/a/d;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/impl/a/d;->n:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/a/e;->b(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->e:Lcom/google/ads/interactivemedia/v3/impl/aa;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/z;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/z$b;->f:Lcom/google/ads/interactivemedia/v3/impl/z$b;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/z$c;->ab:Lcom/google/ads/interactivemedia/v3/impl/z$c;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/z;-><init>(Lcom/google/ads/interactivemedia/v3/impl/z$b;Lcom/google/ads/interactivemedia/v3/impl/z$c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/aa;->b(Lcom/google/ads/interactivemedia/v3/impl/z;)V

    .line 211
    :cond_0
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/a/e$b;->b:Lcom/google/ads/interactivemedia/v3/impl/a/e$b;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->i:Lcom/google/ads/interactivemedia/v3/impl/a/e$b;

    .line 213
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 214
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 215
    const-string v1, "seconds"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->e:Lcom/google/ads/interactivemedia/v3/impl/aa;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/z;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/z$b;->f:Lcom/google/ads/interactivemedia/v3/impl/z$b;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/impl/z$c;->ac:Lcom/google/ads/interactivemedia/v3/impl/z$c;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/google/ads/interactivemedia/v3/impl/z;-><init>(Lcom/google/ads/interactivemedia/v3/impl/z$b;Lcom/google/ads/interactivemedia/v3/impl/z$c;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/aa;->b(Lcom/google/ads/interactivemedia/v3/impl/z;)V

    .line 224
    :cond_1
    :goto_0
    invoke-virtual {p0, v6}, Lcom/google/ads/interactivemedia/v3/impl/a/e;->setVisibility(I)V

    .line 225
    return-void

    .line 219
    :cond_2
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/a/e$b;->a:Lcom/google/ads/interactivemedia/v3/impl/a/e$b;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->i:Lcom/google/ads/interactivemedia/v3/impl/a/e$b;

    .line 220
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->a:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->a:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/impl/a/e$a;)V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/impl/z$c;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 112
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/a/e$2;->a:[I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/z$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 114
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/google/ads/interactivemedia/v3/impl/a/e;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/google/ads/interactivemedia/v3/impl/a/e;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :pswitch_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->j:Lcom/google/ads/interactivemedia/v3/impl/a/b;

    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/impl/a/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :pswitch_3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->j:Lcom/google/ads/interactivemedia/v3/impl/a/b;

    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/impl/a/b;->a(Ljava/lang/String;)V

    .line 124
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/a/e$b;->c:Lcom/google/ads/interactivemedia/v3/impl/a/e$b;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->i:Lcom/google/ads/interactivemedia/v3/impl/a/e$b;

    .line 125
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/a/e$a;

    .line 126
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/impl/a/e$a;->b()V

    goto :goto_1

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->a:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->i:Lcom/google/ads/interactivemedia/v3/impl/a/e$b;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/a/e$b;->c:Lcom/google/ads/interactivemedia/v3/impl/a/e$b;

    if-ne v0, v1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/a/e$a;

    .line 271
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/impl/a/e$a;->c()V

    goto :goto_0

    .line 274
    :cond_0
    return-void
.end method
