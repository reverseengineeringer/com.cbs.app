.class final Lcom/cbs/app/view/fragments/HomeFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/HomeFragment;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/HomeFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/HomeFragment;)V
    .locals 0

    .prologue
    .line 732
    iput-object p1, p0, Lcom/cbs/app/view/fragments/HomeFragment$6;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 752
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 735
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 3

    .prologue
    .line 739
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment$6;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/HomeFragment;->c(Lcom/cbs/app/view/fragments/HomeFragment;)Lcom/cbs/app/adapter/HomeMarqueeFragmentAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/adapter/HomeMarqueeFragmentAdapter;->getDeviceHomeCount()I

    move-result v0

    .line 740
    if-eqz v0, :cond_0

    .line 741
    rem-int v0, p1, v0

    .line 743
    iget-object v1, p0, Lcom/cbs/app/view/fragments/HomeFragment$6;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/HomeFragment;->c(Lcom/cbs/app/view/fragments/HomeFragment;)Lcom/cbs/app/adapter/HomeMarqueeFragmentAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/cbs/app/adapter/HomeMarqueeFragmentAdapter;->a(I)Lcom/cbs/app/view/model/DeviceHome;

    move-result-object v1

    .line 744
    if-eqz v1, :cond_0

    .line 745
    iget-object v2, p0, Lcom/cbs/app/view/fragments/HomeFragment$6;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-virtual {v2, v0, v1}, Lcom/cbs/app/view/fragments/HomeFragment;->a(ILcom/cbs/app/view/model/DeviceHome;)V

    .line 748
    :cond_0
    return-void
.end method
