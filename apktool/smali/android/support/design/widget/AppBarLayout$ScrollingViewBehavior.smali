.class public Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;
.super Landroid/support/design/widget/HeaderScrollingViewBehavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollingViewBehavior"
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1135
    invoke-direct {p0}, Landroid/support/design/widget/HeaderScrollingViewBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 1138
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/HeaderScrollingViewBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1140
    sget-object v0, Landroid/support/design/R$styleable;->ScrollingViewBehavior_Params:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1142
    sget v1, Landroid/support/design/R$styleable;->ScrollingViewBehavior_Params_behavior_overlapTop:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->a:I

    .line 1144
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1145
    return-void
.end method

.method private c(Landroid/view/View;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1178
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$d;

    .line 3288
    iget-object v0, v0, Landroid/support/design/widget/CoordinatorLayout$d;->a:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    .line 1180
    instance-of v2, v0, Landroid/support/design/widget/AppBarLayout$Behavior;

    if-eqz v2, :cond_0

    .line 1182
    check-cast v0, Landroid/support/design/widget/AppBarLayout$Behavior;

    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout$Behavior;->a()I

    move-result v0

    .line 1183
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v0

    .line 4191
    iget v3, p0, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->a:I

    if-eqz v3, :cond_2

    instance-of v3, p1, Landroid/support/design/widget/AppBarLayout;

    if-eqz v3, :cond_2

    .line 4192
    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    .line 4193
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->a()I

    move-result v3

    .line 4194
    invoke-static {p1}, Landroid/support/design/widget/AppBarLayout;->b(Landroid/support/design/widget/AppBarLayout;)I

    move-result v4

    .line 4196
    if-eqz v4, :cond_1

    add-int v5, v3, v0

    if-gt v5, v4, :cond_1

    move v0, v1

    .line 1183
    :goto_0
    sub-int v0, v2, v0

    .line 5132
    invoke-super {p0, v0}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->a(I)Z

    .line 1185
    const/4 v1, 0x1

    .line 1187
    :cond_0
    return v1

    .line 4200
    :cond_1
    sub-int/2addr v3, v4

    .line 4201
    if-eqz v3, :cond_2

    .line 4203
    int-to-float v0, v0

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 4204
    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v0, v3

    iget v3, p0, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->a:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v3, p0, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->a:I

    invoke-static {v0, v1, v3}, Landroid/support/design/widget/k;->a(III)I

    move-result v0

    goto :goto_0

    .line 4209
    :cond_2
    iget v0, p0, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->a:I

    goto :goto_0
.end method


# virtual methods
.method final a(Ljava/util/List;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 1230
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 1231
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1232
    instance-of v3, v0, Landroid/support/design/widget/AppBarLayout;

    if-eqz v3, :cond_0

    .line 1236
    :goto_1
    return-object v0

    .line 1230
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1236
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final bridge synthetic a(I)Z
    .locals 1

    .prologue
    .line 1132
    invoke-super {p0, p1}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->a(I)Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 4

    .prologue
    .line 1156
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    .line 1160
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->c(Landroid/view/View;)Ljava/util/List;

    move-result-object v2

    .line 1161
    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 1162
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1161
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1167
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 1

    .prologue
    .line 1132
    invoke-super/range {p0 .. p6}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v0

    return v0
.end method

.method public final a_(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1150
    instance-of v0, p1, Landroid/support/design/widget/AppBarLayout;

    return v0
.end method

.method public final bridge synthetic b()I
    .locals 1

    .prologue
    .line 1132
    invoke-super {p0}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->b()I

    move-result v0

    return v0
.end method

.method final b(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1241
    instance-of v0, p1, Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_0

    .line 1242
    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->a()I

    move-result v0

    .line 1244
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->b(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public final b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1173
    invoke-direct {p0, p3}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->c(Landroid/view/View;)Z

    .line 1174
    const/4 v0, 0x0

    return v0
.end method
