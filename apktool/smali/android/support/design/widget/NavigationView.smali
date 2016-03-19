.class public Landroid/support/design/widget/NavigationView;
.super Landroid/support/design/internal/ScrimInsetsFrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/NavigationView$SavedState;,
        Landroid/support/design/widget/NavigationView$a;
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:[I


# instance fields
.field private final c:Landroid/support/design/internal/a;

.field private final d:Landroid/support/design/internal/b;

.field private e:Landroid/support/design/widget/NavigationView$a;

.field private f:I

.field private g:Landroid/view/MenuInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    new-array v0, v3, [I

    const v1, 0x10100a0

    aput v1, v0, v2

    sput-object v0, Landroid/support/design/widget/NavigationView;->a:[I

    .line 77
    new-array v0, v3, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Landroid/support/design/widget/NavigationView;->b:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 98
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/internal/ScrimInsetsFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    new-instance v0, Landroid/support/design/internal/b;

    invoke-direct {v0}, Landroid/support/design/internal/b;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/NavigationView;->d:Landroid/support/design/internal/b;

    .line 100
    invoke-static {p1}, Landroid/support/design/widget/p;->a(Landroid/content/Context;)V

    .line 103
    new-instance v0, Landroid/support/design/internal/a;

    invoke-direct {v0, p1}, Landroid/support/design/internal/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/NavigationView;->c:Landroid/support/design/internal/a;

    .line 106
    sget-object v0, Landroid/support/design/R$styleable;->NavigationView:[I

    sget v1, Landroid/support/design/R$style;->Widget_Design_NavigationView:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 111
    sget v0, Landroid/support/design/R$styleable;->NavigationView_android_background:I

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/NavigationView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    sget v0, Landroid/support/design/R$styleable;->NavigationView_elevation:I

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    sget v0, Landroid/support/design/R$styleable;->NavigationView_elevation:I

    invoke-virtual {v6, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 116
    :cond_0
    sget v0, Landroid/support/design/R$styleable;->NavigationView_android_fitsSystemWindows:I

    invoke-virtual {v6, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 119
    sget v0, Landroid/support/design/R$styleable;->NavigationView_android_maxWidth:I

    invoke-virtual {v6, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/NavigationView;->f:I

    .line 122
    sget v0, Landroid/support/design/R$styleable;->NavigationView_itemIconTint:I

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 123
    sget v0, Landroid/support/design/R$styleable;->NavigationView_itemIconTint:I

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 130
    :goto_0
    sget v1, Landroid/support/design/R$styleable;->NavigationView_itemTextAppearance:I

    invoke-virtual {v6, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 131
    sget v1, Landroid/support/design/R$styleable;->NavigationView_itemTextAppearance:I

    invoke-virtual {v6, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    move v3, v4

    .line 135
    :goto_1
    const/4 v5, 0x0

    .line 136
    sget v7, Landroid/support/design/R$styleable;->NavigationView_itemTextColor:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 137
    sget v5, Landroid/support/design/R$styleable;->NavigationView_itemTextColor:I

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 140
    :cond_1
    if-nez v3, :cond_2

    if-nez v5, :cond_2

    .line 142
    const v5, 0x1010036

    invoke-direct {p0, v5}, Landroid/support/design/widget/NavigationView;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 145
    :cond_2
    sget v7, Landroid/support/design/R$styleable;->NavigationView_itemBackground:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 147
    iget-object v8, p0, Landroid/support/design/widget/NavigationView;->c:Landroid/support/design/internal/a;

    new-instance v9, Landroid/support/design/widget/NavigationView$1;

    invoke-direct {v9, p0}, Landroid/support/design/widget/NavigationView$1;-><init>(Landroid/support/design/widget/NavigationView;)V

    invoke-virtual {v8, v9}, Landroid/support/design/internal/a;->setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 156
    iget-object v8, p0, Landroid/support/design/widget/NavigationView;->d:Landroid/support/design/internal/b;

    invoke-virtual {v8}, Landroid/support/design/internal/b;->a()V

    .line 157
    iget-object v8, p0, Landroid/support/design/widget/NavigationView;->d:Landroid/support/design/internal/b;

    iget-object v9, p0, Landroid/support/design/widget/NavigationView;->c:Landroid/support/design/internal/a;

    invoke-virtual {v8, p1, v9}, Landroid/support/design/internal/b;->initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 158
    iget-object v8, p0, Landroid/support/design/widget/NavigationView;->d:Landroid/support/design/internal/b;

    invoke-virtual {v8, v0}, Landroid/support/design/internal/b;->a(Landroid/content/res/ColorStateList;)V

    .line 159
    if-eqz v3, :cond_3

    .line 160
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->d:Landroid/support/design/internal/b;

    invoke-virtual {v0, v1}, Landroid/support/design/internal/b;->b(I)V

    .line 162
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->d:Landroid/support/design/internal/b;

    invoke-virtual {v0, v5}, Landroid/support/design/internal/b;->b(Landroid/content/res/ColorStateList;)V

    .line 163
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->d:Landroid/support/design/internal/b;

    invoke-virtual {v0, v7}, Landroid/support/design/internal/b;->a(Landroid/graphics/drawable/Drawable;)V

    .line 164
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->c:Landroid/support/design/internal/a;

    iget-object v1, p0, Landroid/support/design/widget/NavigationView;->d:Landroid/support/design/internal/b;

    invoke-virtual {v0, v1}, Landroid/support/design/internal/a;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    .line 165
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->d:Landroid/support/design/internal/b;

    invoke-virtual {v0, p0}, Landroid/support/design/internal/b;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/NavigationView;->addView(Landroid/view/View;)V

    .line 167
    sget v0, Landroid/support/design/R$styleable;->NavigationView_menu:I

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 168
    sget v0, Landroid/support/design/R$styleable;->NavigationView_menu:I

    invoke-virtual {v6, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 1230
    iget-object v1, p0, Landroid/support/design/widget/NavigationView;->d:Landroid/support/design/internal/b;

    invoke-virtual {v1, v4}, Landroid/support/design/internal/b;->a(Z)V

    .line 1391
    iget-object v1, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/view/MenuInflater;

    if-nez v1, :cond_4

    .line 1392
    new-instance v1, Landroid/support/v7/view/SupportMenuInflater;

    invoke-virtual {p0}, Landroid/support/design/widget/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/support/v7/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/view/MenuInflater;

    .line 1394
    :cond_4
    iget-object v1, p0, Landroid/support/design/widget/NavigationView;->g:Landroid/view/MenuInflater;

    .line 1231
    iget-object v3, p0, Landroid/support/design/widget/NavigationView;->c:Landroid/support/design/internal/a;

    invoke-virtual {v1, v0, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1232
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->d:Landroid/support/design/internal/b;

    invoke-virtual {v0, v2}, Landroid/support/design/internal/b;->a(Z)V

    .line 1233
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->d:Landroid/support/design/internal/b;

    invoke-virtual {v0, v2}, Landroid/support/design/internal/b;->updateMenuView(Z)V

    .line 171
    :cond_5
    sget v0, Landroid/support/design/R$styleable;->NavigationView_headerLayout:I

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 172
    sget v0, Landroid/support/design/R$styleable;->NavigationView_headerLayout:I

    invoke-virtual {v6, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 2250
    iget-object v1, p0, Landroid/support/design/widget/NavigationView;->d:Landroid/support/design/internal/b;

    invoke-virtual {v1, v0}, Landroid/support/design/internal/b;->a(I)Landroid/view/View;

    .line 175
    :cond_6
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 176
    return-void

    .line 125
    :cond_7
    const v0, 0x1010038

    invoke-direct {p0, v0}, Landroid/support/design/widget/NavigationView;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    move v1, v2

    move v3, v2

    goto/16 :goto_1
.end method

.method private a(I)Landroid/content/res/ColorStateList;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 398
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 399
    invoke-virtual {p0}, Landroid/support/design/widget/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, p1, v1, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-object v0

    .line 402
    :cond_1
    invoke-virtual {p0}, Landroid/support/design/widget/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 403
    invoke-virtual {p0}, Landroid/support/design/widget/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Landroid/support/design/R$attr;->colorPrimary:I

    invoke-virtual {v3, v4, v1, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 406
    iget v1, v1, Landroid/util/TypedValue;->data:I

    .line 407
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    .line 408
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v4, v6, [[I

    sget-object v5, Landroid/support/design/widget/NavigationView;->b:[I

    aput-object v5, v4, v8

    sget-object v5, Landroid/support/design/widget/NavigationView;->a:[I

    aput-object v5, v4, v7

    sget-object v5, Landroid/support/design/widget/NavigationView;->EMPTY_STATE_SET:[I

    aput-object v5, v4, v9

    new-array v5, v6, [I

    sget-object v6, Landroid/support/design/widget/NavigationView;->b:[I

    invoke-virtual {v2, v6, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    aput v2, v5, v8

    aput v1, v5, v7

    aput v3, v5, v9

    invoke-direct {v0, v4, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/design/widget/NavigationView;)Landroid/support/design/widget/NavigationView$a;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->e:Landroid/support/design/widget/NavigationView$a;

    return-object v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 205
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 218
    :goto_0
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->onMeasure(II)V

    .line 219
    return-void

    .line 210
    :sswitch_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/NavigationView;->f:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 214
    :sswitch_2
    iget v0, p0, Landroid/support/design/widget/NavigationView;->f:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 205
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 189
    check-cast p1, Landroid/support/design/widget/NavigationView$SavedState;

    .line 190
    invoke-virtual {p1}, Landroid/support/design/widget/NavigationView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 191
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->c:Landroid/support/design/internal/a;

    iget-object v1, p1, Landroid/support/design/widget/NavigationView$SavedState;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/support/design/internal/a;->restorePresenterStates(Landroid/os/Bundle;)V

    .line 192
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 180
    invoke-super {p0}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 181
    new-instance v1, Landroid/support/design/widget/NavigationView$SavedState;

    invoke-direct {v1, v0}, Landroid/support/design/widget/NavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 182
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Landroid/support/design/widget/NavigationView$SavedState;->a:Landroid/os/Bundle;

    .line 183
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->c:Landroid/support/design/internal/a;

    iget-object v2, v1, Landroid/support/design/widget/NavigationView$SavedState;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/support/design/internal/a;->savePresenterStates(Landroid/os/Bundle;)V

    .line 184
    return-object v1
.end method

.method public setCheckedItem(I)V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->c:Landroid/support/design/internal/a;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/a;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 376
    if-eqz v0, :cond_0

    .line 377
    iget-object v1, p0, Landroid/support/design/widget/NavigationView;->d:Landroid/support/design/internal/b;

    check-cast v0, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v1, v0}, Landroid/support/design/internal/b;->a(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 379
    :cond_0
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->d:Landroid/support/design/internal/b;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/b;->a(Landroid/graphics/drawable/Drawable;)V

    .line 367
    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 1

    .prologue
    .line 356
    invoke-virtual {p0}, Landroid/support/design/widget/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/NavigationView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 357
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->d:Landroid/support/design/internal/b;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/b;->a(Landroid/content/res/ColorStateList;)V

    .line 312
    return-void
.end method

.method public setItemTextAppearance(I)V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->d:Landroid/support/design/internal/b;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/b;->b(I)V

    .line 388
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->d:Landroid/support/design/internal/b;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/b;->b(Landroid/content/res/ColorStateList;)V

    .line 335
    return-void
.end method

.method public setNavigationItemSelectedListener(Landroid/support/design/widget/NavigationView$a;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Landroid/support/design/widget/NavigationView;->e:Landroid/support/design/widget/NavigationView$a;

    .line 201
    return-void
.end method
