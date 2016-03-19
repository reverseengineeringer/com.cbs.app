.class final Lcom/cbs/app/view/NavigationActivity$6;
.super Landroid/support/v7/app/ActionBarDrawerToggle;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/NavigationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/NavigationActivity;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/NavigationActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;)V
    .locals 2

    .prologue
    .line 547
    iput-object p1, p0, Lcom/cbs/app/view/NavigationActivity$6;->a:Lcom/cbs/app/view/NavigationActivity;

    const v0, 0x7f08011d

    const v1, 0x7f08011c

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V

    return-void
.end method


# virtual methods
.method public final onDrawerClosed(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity$6;->a:Lcom/cbs/app/view/NavigationActivity;

    iget-object v0, v0, Lcom/cbs/app/view/NavigationActivity;->b:Ljava/lang/String;

    const-string v1, "Home"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity$6;->a:Lcom/cbs/app/view/NavigationActivity;

    invoke-static {v0}, Lcom/cbs/app/view/NavigationActivity;->a(Lcom/cbs/app/view/NavigationActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 550
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity$6;->a:Lcom/cbs/app/view/NavigationActivity;

    invoke-virtual {v0}, Lcom/cbs/app/view/NavigationActivity;->f()V

    .line 554
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity$6;->a:Lcom/cbs/app/view/NavigationActivity;

    invoke-static {v0}, Lcom/cbs/app/view/NavigationActivity;->b(Lcom/cbs/app/view/NavigationActivity;)Lcom/cbs/app/view/menu/DrawerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity$6;->a:Lcom/cbs/app/view/NavigationActivity;

    invoke-static {v0}, Lcom/cbs/app/view/NavigationActivity;->b(Lcom/cbs/app/view/NavigationActivity;)Lcom/cbs/app/view/menu/DrawerStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/cbs/app/view/menu/DrawerStatusListener;->b()V

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity$6;->a:Lcom/cbs/app/view/NavigationActivity;

    invoke-virtual {v0}, Lcom/cbs/app/view/NavigationActivity;->invalidateOptionsMenu()V

    .line 559
    return-void

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity$6;->a:Lcom/cbs/app/view/NavigationActivity;

    invoke-virtual {v0}, Lcom/cbs/app/view/NavigationActivity;->e()V

    goto :goto_0
.end method

.method public final onDrawerOpened(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity$6;->a:Lcom/cbs/app/view/NavigationActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->a(Landroid/app/Activity;)Z

    .line 564
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity$6;->a:Lcom/cbs/app/view/NavigationActivity;

    invoke-static {v0}, Lcom/cbs/app/view/NavigationActivity;->b(Lcom/cbs/app/view/NavigationActivity;)Lcom/cbs/app/view/menu/DrawerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity$6;->a:Lcom/cbs/app/view/NavigationActivity;

    invoke-static {v0}, Lcom/cbs/app/view/NavigationActivity;->b(Lcom/cbs/app/view/NavigationActivity;)Lcom/cbs/app/view/menu/DrawerStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/cbs/app/view/menu/DrawerStatusListener;->a()V

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity$6;->a:Lcom/cbs/app/view/NavigationActivity;

    invoke-virtual {v0}, Lcom/cbs/app/view/NavigationActivity;->f()V

    .line 569
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity$6;->a:Lcom/cbs/app/view/NavigationActivity;

    invoke-virtual {v0}, Lcom/cbs/app/view/NavigationActivity;->invalidateOptionsMenu()V

    .line 570
    return-void
.end method
