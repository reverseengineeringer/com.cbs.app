.class public final Landroid/support/design/widget/CoordinatorLayout$d;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field a:Landroid/support/design/widget/CoordinatorLayout$Behavior;

.field b:Z

.field public c:I

.field public d:I

.field public e:I

.field f:I

.field g:Landroid/view/View;

.field h:Landroid/view/View;

.field final i:Landroid/graphics/Rect;

.field j:Ljava/lang/Object;

.field private k:Z

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    const/4 v0, 0x0

    .line 2214
    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2174
    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->b:Z

    .line 2181
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->c:I

    .line 2187
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->d:I

    .line 2194
    iput v2, p0, Landroid/support/design/widget/CoordinatorLayout$d;->e:I

    .line 2200
    iput v2, p0, Landroid/support/design/widget/CoordinatorLayout$d;->f:I

    .line 2209
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->i:Landroid/graphics/Rect;

    .line 2215
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 2218
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2174
    iput-boolean v2, p0, Landroid/support/design/widget/CoordinatorLayout$d;->b:Z

    .line 2181
    iput v2, p0, Landroid/support/design/widget/CoordinatorLayout$d;->c:I

    .line 2187
    iput v2, p0, Landroid/support/design/widget/CoordinatorLayout$d;->d:I

    .line 2194
    iput v3, p0, Landroid/support/design/widget/CoordinatorLayout$d;->e:I

    .line 2200
    iput v3, p0, Landroid/support/design/widget/CoordinatorLayout$d;->f:I

    .line 2209
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->i:Landroid/graphics/Rect;

    .line 2220
    sget-object v0, Landroid/support/design/R$styleable;->CoordinatorLayout_LayoutParams:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2223
    sget v1, Landroid/support/design/R$styleable;->CoordinatorLayout_LayoutParams_android_layout_gravity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$d;->c:I

    .line 2226
    sget v1, Landroid/support/design/R$styleable;->CoordinatorLayout_LayoutParams_layout_anchor:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$d;->f:I

    .line 2228
    sget v1, Landroid/support/design/R$styleable;->CoordinatorLayout_LayoutParams_layout_anchorGravity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$d;->d:I

    .line 2232
    sget v1, Landroid/support/design/R$styleable;->CoordinatorLayout_LayoutParams_layout_keyline:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$d;->e:I

    .line 2235
    sget v1, Landroid/support/design/R$styleable;->CoordinatorLayout_LayoutParams_layout_behavior:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/design/widget/CoordinatorLayout$d;->b:Z

    .line 2237
    iget-boolean v1, p0, Landroid/support/design/widget/CoordinatorLayout$d;->b:Z

    if-eqz v1, :cond_0

    .line 2238
    sget v1, Landroid/support/design/R$styleable;->CoordinatorLayout_LayoutParams_layout_behavior:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/CoordinatorLayout$d;->a:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    .line 2242
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2243
    return-void
.end method

.method public constructor <init>(Landroid/support/design/widget/CoordinatorLayout$d;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 2246
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2174
    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->b:Z

    .line 2181
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->c:I

    .line 2187
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->d:I

    .line 2194
    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$d;->e:I

    .line 2200
    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$d;->f:I

    .line 2209
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->i:Landroid/graphics/Rect;

    .line 2247
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 2254
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2174
    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->b:Z

    .line 2181
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->c:I

    .line 2187
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->d:I

    .line 2194
    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$d;->e:I

    .line 2200
    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$d;->f:I

    .line 2209
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->i:Landroid/graphics/Rect;

    .line 2255
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 2250
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2174
    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->b:Z

    .line 2181
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->c:I

    .line 2187
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->d:I

    .line 2194
    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$d;->e:I

    .line 2200
    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$d;->f:I

    .line 2209
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->i:Landroid/graphics/Rect;

    .line 2251
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/design/widget/CoordinatorLayout$Behavior;)V
    .locals 1

    .prologue
    .line 2301
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->a:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    if-eq v0, p1, :cond_0

    .line 2302
    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout$d;->a:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    .line 2303
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->j:Ljava/lang/Object;

    .line 2304
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->b:Z

    .line 2306
    :cond_0
    return-void
.end method

.method final a(Z)V
    .locals 0

    .prologue
    .line 2383
    iput-boolean p1, p0, Landroid/support/design/widget/CoordinatorLayout$d;->l:Z

    .line 2384
    return-void
.end method

.method final a()Z
    .locals 1

    .prologue
    .line 2340
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->a:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    if-nez v0, :cond_0

    .line 2341
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->k:Z

    .line 2343
    :cond_0
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->k:Z

    return v0
.end method

.method final a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 2358
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->k:Z

    if-eqz v0, :cond_0

    .line 2359
    const/4 v0, 0x1

    .line 2362
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->k:Z

    or-int/lit8 v0, v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->k:Z

    goto :goto_0
.end method

.method final a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 2411
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->h:Landroid/view/View;

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->a:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->a:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v0, p3}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->a_(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b()V
    .locals 1

    .prologue
    .line 2375
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->k:Z

    .line 2376
    return-void
.end method

.method final b(Z)V
    .locals 0

    .prologue
    .line 2395
    iput-boolean p1, p0, Landroid/support/design/widget/CoordinatorLayout$d;->m:Z

    .line 2396
    return-void
.end method

.method final c()V
    .locals 1

    .prologue
    .line 2379
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->l:Z

    .line 2380
    return-void
.end method

.method final d()Z
    .locals 1

    .prologue
    .line 2387
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->l:Z

    return v0
.end method

.method final e()Z
    .locals 1

    .prologue
    .line 2391
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->m:Z

    return v0
.end method

.method final f()V
    .locals 1

    .prologue
    .line 2399
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;->m:Z

    .line 2400
    return-void
.end method
