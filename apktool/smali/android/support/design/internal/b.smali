.class public final Landroid/support/design/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/internal/b$c;,
        Landroid/support/design/internal/b$e;,
        Landroid/support/design/internal/b$f;,
        Landroid/support/design/internal/b$d;,
        Landroid/support/design/internal/b$b;,
        Landroid/support/design/internal/b$a;,
        Landroid/support/design/internal/b$h;,
        Landroid/support/design/internal/b$i;,
        Landroid/support/design/internal/b$g;,
        Landroid/support/design/internal/b$j;
    }
.end annotation


# instance fields
.field private a:Landroid/support/design/internal/NavigationMenuView;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/support/v7/view/menu/MenuPresenter$Callback;

.field private d:Landroid/support/v7/view/menu/MenuBuilder;

.field private e:I

.field private f:Landroid/support/design/internal/b$b;

.field private g:Landroid/view/LayoutInflater;

.field private h:I

.field private i:Z

.field private j:Landroid/content/res/ColorStateList;

.field private k:Landroid/content/res/ColorStateList;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:I

.field private n:I

.field private final o:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    new-instance v0, Landroid/support/design/internal/b$1;

    invoke-direct {v0, p0}, Landroid/support/design/internal/b$1;-><init>(Landroid/support/design/internal/b;)V

    iput-object v0, p0, Landroid/support/design/internal/b;->o:Landroid/view/View$OnClickListener;

    .line 637
    return-void
.end method

.method static synthetic a(Landroid/support/design/internal/b;)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Landroid/support/design/internal/b;->d:Landroid/support/v7/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic b(Landroid/support/design/internal/b;)Landroid/support/design/internal/b$b;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Landroid/support/design/internal/b;->f:Landroid/support/design/internal/b$b;

    return-object v0
.end method

.method static synthetic c(Landroid/support/design/internal/b;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Landroid/support/design/internal/b;->g:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic d(Landroid/support/design/internal/b;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Landroid/support/design/internal/b;->o:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic e(Landroid/support/design/internal/b;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Landroid/support/design/internal/b;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic f(Landroid/support/design/internal/b;)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Landroid/support/design/internal/b;->k:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic g(Landroid/support/design/internal/b;)Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Landroid/support/design/internal/b;->i:Z

    return v0
.end method

.method static synthetic h(Landroid/support/design/internal/b;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Landroid/support/design/internal/b;->h:I

    return v0
.end method

.method static synthetic i(Landroid/support/design/internal/b;)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Landroid/support/design/internal/b;->j:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic j(Landroid/support/design/internal/b;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Landroid/support/design/internal/b;->l:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic k(Landroid/support/design/internal/b;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Landroid/support/design/internal/b;->n:I

    return v0
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 190
    iget-object v0, p0, Landroid/support/design/internal/b;->g:Landroid/view/LayoutInflater;

    iget-object v1, p0, Landroid/support/design/internal/b;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1196
    iget-object v1, p0, Landroid/support/design/internal/b;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1198
    iget-object v1, p0, Landroid/support/design/internal/b;->a:Landroid/support/design/internal/NavigationMenuView;

    iget-object v2, p0, Landroid/support/design/internal/b;->a:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v2}, Landroid/support/design/internal/NavigationMenuView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/support/design/internal/NavigationMenuView;->setPadding(IIII)V

    .line 192
    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/design/internal/b;->e:I

    .line 156
    return-void
.end method

.method public final a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 222
    iput-object p1, p0, Landroid/support/design/internal/b;->k:Landroid/content/res/ColorStateList;

    .line 223
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/b;->updateMenuView(Z)V

    .line 224
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Landroid/support/design/internal/b;->l:Landroid/graphics/drawable/Drawable;

    .line 248
    return-void
.end method

.method public final a(Landroid/support/v7/view/menu/MenuItemImpl;)V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Landroid/support/design/internal/b;->f:Landroid/support/design/internal/b$b;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/b$b;->a(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 187
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Landroid/support/design/internal/b;->f:Landroid/support/design/internal/b$b;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Landroid/support/design/internal/b;->f:Landroid/support/design/internal/b$b;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/b$b;->a(Z)V

    .line 254
    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 237
    iput p1, p0, Landroid/support/design/internal/b;->h:I

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/internal/b;->i:Z

    .line 239
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/b;->updateMenuView(Z)V

    .line 240
    return-void
.end method

.method public final b(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 232
    iput-object p1, p0, Landroid/support/design/internal/b;->j:Landroid/content/res/ColorStateList;

    .line 233
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/b;->updateMenuView(Z)V

    .line 234
    return-void
.end method

.method public final collapseItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public final expandItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public final flagActionItems()Z
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public final getId()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Landroid/support/design/internal/b;->e:I

    return v0
.end method

.method public final getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 96
    iget-object v0, p0, Landroid/support/design/internal/b;->a:Landroid/support/design/internal/NavigationMenuView;

    if-nez v0, :cond_1

    .line 97
    iget-object v0, p0, Landroid/support/design/internal/b;->g:Landroid/view/LayoutInflater;

    sget v1, Landroid/support/design/R$layout;->design_navigation_menu:I

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/NavigationMenuView;

    iput-object v0, p0, Landroid/support/design/internal/b;->a:Landroid/support/design/internal/NavigationMenuView;

    .line 99
    iget-object v0, p0, Landroid/support/design/internal/b;->f:Landroid/support/design/internal/b$b;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Landroid/support/design/internal/b$b;

    invoke-direct {v0, p0}, Landroid/support/design/internal/b$b;-><init>(Landroid/support/design/internal/b;)V

    iput-object v0, p0, Landroid/support/design/internal/b;->f:Landroid/support/design/internal/b$b;

    .line 102
    :cond_0
    iget-object v0, p0, Landroid/support/design/internal/b;->g:Landroid/view/LayoutInflater;

    sget v1, Landroid/support/design/R$layout;->design_navigation_item_header:I

    iget-object v2, p0, Landroid/support/design/internal/b;->a:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/support/design/internal/b;->b:Landroid/widget/LinearLayout;

    .line 105
    iget-object v0, p0, Landroid/support/design/internal/b;->a:Landroid/support/design/internal/NavigationMenuView;

    iget-object v1, p0, Landroid/support/design/internal/b;->f:Landroid/support/design/internal/b$b;

    invoke-virtual {v0, v1}, Landroid/support/design/internal/NavigationMenuView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 107
    :cond_1
    iget-object v0, p0, Landroid/support/design/internal/b;->a:Landroid/support/design/internal/NavigationMenuView;

    return-object v0
.end method

.method public final initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 2

    .prologue
    .line 85
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/internal/b;->g:Landroid/view/LayoutInflater;

    .line 86
    iput-object p2, p0, Landroid/support/design/internal/b;->d:Landroid/support/v7/view/menu/MenuBuilder;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 88
    sget v1, Landroid/support/design/R$dimen;->design_navigation_padding_top_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Landroid/support/design/internal/b;->m:I

    .line 90
    sget v1, Landroid/support/design/R$dimen;->design_navigation_separator_vertical_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/internal/b;->n:I

    .line 92
    return-void
.end method

.method public final onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Landroid/support/design/internal/b;->c:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Landroid/support/design/internal/b;->c:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V

    .line 132
    :cond_0
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 174
    check-cast p1, Landroid/os/Bundle;

    .line 175
    const-string v0, "android:menu:list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_0

    .line 177
    iget-object v1, p0, Landroid/support/design/internal/b;->a:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v1, v0}, Landroid/support/design/internal/NavigationMenuView;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 179
    :cond_0
    const-string v0, "android:menu:adapter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_1

    .line 181
    iget-object v1, p0, Landroid/support/design/internal/b;->f:Landroid/support/design/internal/b$b;

    invoke-virtual {v1, v0}, Landroid/support/design/internal/b$b;->a(Landroid/os/Bundle;)V

    .line 183
    :cond_1
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 160
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 161
    iget-object v1, p0, Landroid/support/design/internal/b;->a:Landroid/support/design/internal/NavigationMenuView;

    if-eqz v1, :cond_0

    .line 162
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 163
    iget-object v2, p0, Landroid/support/design/internal/b;->a:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v2, v1}, Landroid/support/design/internal/NavigationMenuView;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 164
    const-string v2, "android:menu:list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 166
    :cond_0
    iget-object v1, p0, Landroid/support/design/internal/b;->f:Landroid/support/design/internal/b$b;

    if-eqz v1, :cond_1

    .line 167
    const-string v1, "android:menu:adapter"

    iget-object v2, p0, Landroid/support/design/internal/b;->f:Landroid/support/design/internal/b$b;

    invoke-virtual {v2}, Landroid/support/design/internal/b$b;->b()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 169
    :cond_1
    return-object v0
.end method

.method public final onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public final setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Landroid/support/design/internal/b;->c:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .line 120
    return-void
.end method

.method public final updateMenuView(Z)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Landroid/support/design/internal/b;->f:Landroid/support/design/internal/b$b;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Landroid/support/design/internal/b;->f:Landroid/support/design/internal/b$b;

    invoke-virtual {v0}, Landroid/support/design/internal/b$b;->a()V

    .line 115
    :cond_0
    return-void
.end method
