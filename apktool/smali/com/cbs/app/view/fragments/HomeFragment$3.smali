.class final Lcom/cbs/app/view/fragments/HomeFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/HomeFragment;
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
    .line 208
    iput-object p1, p0, Lcom/cbs/app/view/fragments/HomeFragment$3;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 212
    invoke-static {}, Lcom/cbs/app/view/fragments/HomeFragment;->f()Ljava/lang/String;

    .line 213
    iget-object v1, p0, Lcom/cbs/app/view/fragments/HomeFragment$3;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-virtual {v1}, Lcom/cbs/app/view/fragments/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->a(Landroid/app/Activity;)Z

    .line 214
    iget-object v1, p0, Lcom/cbs/app/view/fragments/HomeFragment$3;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-virtual {v1}, Lcom/cbs/app/view/fragments/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "homeMarquee"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 215
    if-eqz v3, :cond_1

    .line 216
    iget-object v1, p0, Lcom/cbs/app/view/fragments/HomeFragment$3;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    array-length v2, v3

    new-array v2, v2, [Lcom/cbs/app/view/model/DeviceHome;

    invoke-static {v1, v2}, Lcom/cbs/app/view/fragments/HomeFragment;->a(Lcom/cbs/app/view/fragments/HomeFragment;[Lcom/cbs/app/view/model/DeviceHome;)[Lcom/cbs/app/view/model/DeviceHome;

    .line 218
    array-length v4, v3

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    .line 219
    iget-object v5, p0, Lcom/cbs/app/view/fragments/HomeFragment$3;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-static {v5}, Lcom/cbs/app/view/fragments/HomeFragment;->b(Lcom/cbs/app/view/fragments/HomeFragment;)[Lcom/cbs/app/view/model/DeviceHome;

    move-result-object v5

    check-cast v0, Lcom/cbs/app/view/model/DeviceHome;

    aput-object v0, v5, v2

    .line 220
    add-int/lit8 v2, v2, 0x1

    .line 218
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment$3;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    new-instance v1, Lcom/cbs/app/adapter/HomeMarqueeFragmentAdapter;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/HomeFragment$3;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-virtual {v2}, Lcom/cbs/app/view/fragments/HomeFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/view/fragments/HomeFragment$3;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-static {v3}, Lcom/cbs/app/view/fragments/HomeFragment;->b(Lcom/cbs/app/view/fragments/HomeFragment;)[Lcom/cbs/app/view/model/DeviceHome;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/cbs/app/adapter/HomeMarqueeFragmentAdapter;-><init>(Landroid/support/v4/app/FragmentManager;[Lcom/cbs/app/view/model/DeviceHome;)V

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/HomeFragment;->a(Lcom/cbs/app/view/fragments/HomeFragment;Lcom/cbs/app/adapter/HomeMarqueeFragmentAdapter;)Lcom/cbs/app/adapter/HomeMarqueeFragmentAdapter;

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment$3;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/HomeFragment;->e()V

    .line 225
    return-void
.end method
