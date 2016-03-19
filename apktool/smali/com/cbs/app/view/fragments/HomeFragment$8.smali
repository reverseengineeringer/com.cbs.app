.class final Lcom/cbs/app/view/fragments/HomeFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 775
    iput-object p1, p0, Lcom/cbs/app/view/fragments/HomeFragment$8;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 780
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment$8;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/HomeFragment;->f(Lcom/cbs/app/view/fragments/HomeFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment$8;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/HomeFragment;->g(Lcom/cbs/app/view/fragments/HomeFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment$8;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/HomeFragment;->h(Lcom/cbs/app/view/fragments/HomeFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment$8;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/HomeFragment;->h(Lcom/cbs/app/view/fragments/HomeFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/view/fragments/HomeFragment$8;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/HomeFragment;->h(Lcom/cbs/app/view/fragments/HomeFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 782
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment$8;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/HomeFragment;->e(Lcom/cbs/app/view/fragments/HomeFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/view/fragments/HomeFragment$8;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/HomeFragment;->d(Lcom/cbs/app/view/fragments/HomeFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 785
    :cond_0
    return-void
.end method
