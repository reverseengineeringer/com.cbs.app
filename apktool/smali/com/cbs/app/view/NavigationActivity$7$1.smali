.class final Lcom/cbs/app/view/NavigationActivity$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/NavigationActivity$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/NavigationActivity$7;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/NavigationActivity$7;)V
    .locals 0

    .prologue
    .line 739
    iput-object p1, p0, Lcom/cbs/app/view/NavigationActivity$7$1;->a:Lcom/cbs/app/view/NavigationActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 741
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity$7$1;->a:Lcom/cbs/app/view/NavigationActivity$7;

    iget-object v0, v0, Lcom/cbs/app/view/NavigationActivity$7;->a:Lcom/cbs/app/view/NavigationActivity;

    invoke-static {v0}, Lcom/cbs/app/view/NavigationActivity;->d(Lcom/cbs/app/view/NavigationActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/view/NavigationActivity$7$1;->a:Lcom/cbs/app/view/NavigationActivity$7;

    iget-object v1, v1, Lcom/cbs/app/view/NavigationActivity$7;->a:Lcom/cbs/app/view/NavigationActivity;

    invoke-static {v1}, Lcom/cbs/app/view/NavigationActivity;->c(Lcom/cbs/app/view/NavigationActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 742
    return-void
.end method
