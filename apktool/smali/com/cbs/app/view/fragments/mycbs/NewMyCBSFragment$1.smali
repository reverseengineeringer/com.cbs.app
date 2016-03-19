.class final Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/BackButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$1;->a:Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$1;->a:Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->d()V

    .line 64
    invoke-static {}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->a()Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$1;->a:Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->i:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$1;->a:Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->a(Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$1;->a:Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->b(Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$1;->a:Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->c(Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    .line 69
    invoke-virtual {v0}, Lcom/cbs/app/view/NavigationActivity;->k()V

    move v0, v1

    .line 82
    :goto_0
    return v0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$1;->a:Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->i:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 73
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$1;->a:Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 74
    const-string v3, "fragment_my_cbs"

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_1

    instance-of v3, v0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;

    if-eqz v3, :cond_1

    .line 76
    check-cast v0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;

    .line 1515
    iget-object v0, v0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->i:Landroid/widget/TabHost;

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 78
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$1;->a:Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;

    invoke-virtual {v0, v2}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->b(I)V

    move v0, v1

    .line 79
    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
