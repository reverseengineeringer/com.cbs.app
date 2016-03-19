.class final Landroid/support/design/internal/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/internal/b;


# direct methods
.method constructor <init>(Landroid/support/design/internal/b;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Landroid/support/design/internal/b$1;->a:Landroid/support/design/internal/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 305
    check-cast p1, Landroid/support/design/internal/NavigationMenuItemView;

    .line 306
    iget-object v0, p0, Landroid/support/design/internal/b$1;->a:Landroid/support/design/internal/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/internal/b;->a(Z)V

    .line 307
    invoke-virtual {p1}, Landroid/support/design/internal/NavigationMenuItemView;->getItemData()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v0

    .line 308
    iget-object v1, p0, Landroid/support/design/internal/b$1;->a:Landroid/support/design/internal/b;

    invoke-static {v1}, Landroid/support/design/internal/b;->a(Landroid/support/design/internal/b;)Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/design/internal/b$1;->a:Landroid/support/design/internal/b;

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroid/support/v7/view/menu/MenuPresenter;I)Z

    move-result v1

    .line 309
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 310
    iget-object v1, p0, Landroid/support/design/internal/b$1;->a:Landroid/support/design/internal/b;

    invoke-static {v1}, Landroid/support/design/internal/b;->b(Landroid/support/design/internal/b;)Landroid/support/design/internal/b$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/design/internal/b$b;->a(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 312
    :cond_0
    iget-object v0, p0, Landroid/support/design/internal/b$1;->a:Landroid/support/design/internal/b;

    invoke-virtual {v0, v3}, Landroid/support/design/internal/b;->a(Z)V

    .line 313
    iget-object v0, p0, Landroid/support/design/internal/b$1;->a:Landroid/support/design/internal/b;

    invoke-virtual {v0, v3}, Landroid/support/design/internal/b;->updateMenuView(Z)V

    .line 314
    return-void
.end method
