.class final Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


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
    .line 87
    iput-object p1, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$2;->a:Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 1

    .prologue
    .line 101
    invoke-static {}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->a()Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$2;->a:Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->i:Landroid/widget/TabHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$2;->a:Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->j:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 103
    invoke-static {}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->a()Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$2;->a:Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->i:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 105
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$2;->a:Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;

    invoke-virtual {v0, p1}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->b(I)V

    .line 108
    :cond_0
    return-void
.end method
