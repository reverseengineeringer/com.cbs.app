.class public final Landroid/support/design/internal/c;
.super Landroid/support/v7/view/menu/SubMenuBuilder;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/design/internal/a;Landroid/support/v7/view/menu/MenuItemImpl;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 34
    return-void
.end method


# virtual methods
.method public final onItemsChanged(Z)V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/support/v7/view/menu/SubMenuBuilder;->onItemsChanged(Z)V

    .line 39
    invoke-virtual {p0}, Landroid/support/design/internal/c;->getParentMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 40
    return-void
.end method
