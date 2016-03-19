.class final Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


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
    .line 111
    iput-object p1, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$3;->a:Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTabChanged(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 114
    invoke-static {}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->a()Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$3;->a:Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->i:Landroid/widget/TabHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$3;->a:Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->j:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 116
    invoke-static {}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->a()Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$3;->a:Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->i:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    .line 118
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$3;->a:Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->j:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 119
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$3;->a:Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;

    invoke-virtual {v1, v0}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->a(I)V

    .line 121
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$3;->a:Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->a(Z)V

    .line 124
    :cond_0
    return-void

    .line 121
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
