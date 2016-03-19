.class public Lcom/cbs/app/livetv/fragment/LiveTvFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;
.implements Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;
.implements Lcom/cbs/app/view/BackButtonListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/livetv/fragment/LiveTvFragment$1;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/cbs/app/livetv/model/UserStatusEnum;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Landroid/support/v4/app/FragmentTransaction;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 61
    iput-boolean v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->a:Z

    .line 63
    iput-boolean v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->c:Z

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->d:Ljava/lang/String;

    return-void
.end method

.method private a(ILcom/cbs/app/view/model/MVPDConfig;)V
    .locals 4

    .prologue
    const v3, 0x7f0f01ee

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "displayCheckAvailabilityFragment() called with: mode = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "displayCheckAvailabilityFragment: selectedMvpdConfig = "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/cbs/app/view/model/MVPDConfig;->getAdobeId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 556
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-static {p2}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->a(Lcom/cbs/app/view/model/MVPDConfig;)Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;

    move-result-object v1

    const-string v2, "check_availability"

    invoke-virtual {v0, v3, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->f:Landroid/support/v4/app/FragmentTransaction;

    .line 566
    :goto_1
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 567
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->f:Landroid/support/v4/app/FragmentTransaction;

    const-string v1, "check_availability"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 571
    :cond_0
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->g()V

    .line 572
    return-void

    .line 553
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 560
    :cond_2
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-static {p1}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->a(I)Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;

    move-result-object v1

    const-string v2, "check_availability"

    invoke-virtual {v0, v3, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->f:Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1
.end method

.method private a(Lcom/cbs/app/view/model/syncbak/SyncbakChannel;Lcom/cbs/app/view/model/Affiliate;Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "displayScheduleFragment() called with channel = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], affiliate = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->h()V

    .line 608
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0f01ee

    invoke-static {p1, p2}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->a(Lcom/cbs/app/view/model/syncbak/SyncbakChannel;Lcom/cbs/app/view/model/Affiliate;)Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->f:Landroid/support/v4/app/FragmentTransaction;

    .line 612
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->f:Landroid/support/v4/app/FragmentTransaction;

    const-string v1, "schedule"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 615
    :cond_0
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->g()V

    .line 616
    return-void
.end method

.method public static b()Lcom/cbs/app/livetv/fragment/LiveTvFragment;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 70
    new-instance v1, Lcom/cbs/app/livetv/fragment/LiveTvFragment;

    invoke-direct {v1}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;-><init>()V

    .line 71
    invoke-virtual {v1, v0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->setArguments(Landroid/os/Bundle;)V

    .line 72
    return-object v1
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 450
    iget-boolean v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->a:Z

    if-eqz v0, :cond_0

    .line 451
    iput-boolean v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->c:Z

    .line 452
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->d:Ljava/lang/String;

    .line 460
    :goto_0
    return-void

    .line 455
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "TAG_LIVE_TV_UPSELL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->h()V

    goto :goto_0

    .line 458
    :cond_1
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private c(Z)V
    .locals 5

    .prologue
    const v4, 0x7f0f01ee

    .line 95
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getStatusEnum()Lcom/cbs/app/livetv/model/UserStatusEnum;

    move-result-object v0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "manageStatus() called with: isMVPDAuthenticationFlow = ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "manageStatus: isAuthorized = ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cbs/app/livetv/controllers/MVPDController;->i()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], CBS user status = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cbs/app/livetv/model/UserStatusEnum;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cbs/app/livetv/controllers/MVPDController;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cbs/app/livetv/controllers/MVPDController;->d()Z

    move-result v1

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "manageStatus: forceUserRegFlow = ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    sget-object v2, Lcom/cbs/app/livetv/fragment/LiveTvFragment$1;->a:[I

    invoke-virtual {v0}, Lcom/cbs/app/livetv/model/UserStatusEnum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 142
    :goto_0
    return-void

    .line 109
    :pswitch_0
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->e()V

    goto :goto_0

    .line 113
    :pswitch_1
    if-nez v1, :cond_0

    if-eqz p1, :cond_1

    .line 1637
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "displayAllAccessUpSellFragment() called with: forceUserRegFlow = ["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1638
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->h()V

    .line 1639
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cbs/app/livetv/controllers/MVPDController;->getSelectedMvpdConfig()Lcom/cbs/app/view/model/MVPDConfig;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->a(ZLcom/cbs/app/view/model/MVPDConfig;)Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;

    move-result-object v1

    const-string v2, "cbs_aa_upsell"

    invoke-virtual {v0, v4, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->f:Landroid/support/v4/app/FragmentTransaction;

    .line 1642
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->g()V

    goto :goto_0

    .line 117
    :cond_1
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->e()V

    goto :goto_0

    .line 123
    :cond_2
    sget-object v1, Lcom/cbs/app/livetv/fragment/LiveTvFragment$1;->a:[I

    invoke-virtual {v0}, Lcom/cbs/app/livetv/model/UserStatusEnum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 126
    :pswitch_2
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->a(ILcom/cbs/app/view/model/MVPDConfig;)V

    goto :goto_0

    .line 132
    :pswitch_3
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/MVPDController;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2629
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->h()V

    .line 2630
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-static {}, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->b()Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;

    move-result-object v1

    const-string v2, "not_supported"

    invoke-virtual {v0, v4, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->f:Landroid/support/v4/app/FragmentTransaction;

    .line 2633
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->g()V

    goto :goto_0

    .line 137
    :cond_3
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->d()V

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 123
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private d()V
    .locals 4

    .prologue
    .line 575
    const-string v0, "TAG_LIVE_TV_UPSELL"

    invoke-direct {p0, v0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->c(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0f01ee

    invoke-static {}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->b()Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;

    move-result-object v2

    const-string v3, "TAG_LIVE_TV_UPSELL"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->f:Landroid/support/v4/app/FragmentTransaction;

    .line 580
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->g()V

    .line 581
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 594
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->h()V

    .line 595
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0f01ee

    invoke-static {}, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->a()Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->f:Landroid/support/v4/app/FragmentTransaction;

    .line 598
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->g()V

    .line 599
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 620
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->h()V

    .line 621
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0f01ee

    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cbs/app/livetv/controllers/MVPDController;->getSelectedMvpdConfig()Lcom/cbs/app/view/model/MVPDConfig;

    move-result-object v2

    invoke-static {v2}, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->a(Lcom/cbs/app/view/model/MVPDConfig;)Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;

    move-result-object v2

    const-string v3, "not_supported"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->f:Landroid/support/v4/app/FragmentTransaction;

    .line 624
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->g()V

    .line 625
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 646
    iget-boolean v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->a:Z

    if-eqz v0, :cond_0

    .line 647
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->e:Z

    .line 652
    :goto_0
    return-void

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->f:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 650
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->f:Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method private h()V
    .locals 6

    .prologue
    .line 665
    iget-boolean v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->a:Z

    if-eqz v0, :cond_1

    .line 666
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->c:Z

    .line 673
    :cond_0
    return-void

    .line 669
    :cond_1
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    int-to-long v2, v0

    .line 670
    const/4 v0, 0x0

    :goto_0
    int-to-long v4, v0

    cmp-long v1, v4, v2

    if-gez v1, :cond_0

    .line 671
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 670
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 7

    .prologue
    const v4, 0x7f0f01ee

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 255
    sparse-switch p1, :sswitch_data_0

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 257
    :sswitch_0
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/MVPDController;->getAuthentication()V

    goto :goto_0

    .line 261
    :sswitch_1
    const-string v0, "no_location"

    invoke-direct {p0, v0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->c(Ljava/lang/String;)V

    .line 262
    if-eqz p2, :cond_0

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 263
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, v3}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->a(ILcom/cbs/app/view/model/MVPDConfig;)V

    goto :goto_0

    .line 269
    :sswitch_2
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Lcom/cbs/app/view/model/MVPDConfig;

    invoke-virtual {v1, v0}, Lcom/cbs/app/livetv/controllers/MVPDController;->setSelectedMVPDConfig(Lcom/cbs/app/view/model/MVPDConfig;)V

    .line 271
    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/cbs/app/view/model/MVPDConfig;

    if-eqz v0, :cond_0

    .line 272
    check-cast p2, Lcom/cbs/app/view/model/MVPDConfig;

    invoke-direct {p0, v6, p2}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->a(ILcom/cbs/app/view/model/MVPDConfig;)V

    goto :goto_0

    .line 276
    :sswitch_3
    const-string v0, "check_availability"

    invoke-direct {p0, v0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->c(Ljava/lang/String;)V

    .line 277
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 278
    if-nez v0, :cond_1

    .line 279
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-static {}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->b()Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "live_tv_available"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->f:Landroid/support/v4/app/FragmentTransaction;

    .line 280
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->g()V

    goto :goto_0

    .line 281
    :cond_1
    if-ne v0, v6, :cond_2

    .line 283
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/MVPDController;->getAuthorization()V

    goto :goto_0

    .line 284
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 285
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->e()V

    goto :goto_0

    .line 289
    :sswitch_4
    const-string v0, "check_availability"

    invoke-direct {p0, v0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->c(Ljava/lang/String;)V

    .line 290
    if-eqz p2, :cond_0

    instance-of v0, p2, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 291
    check-cast p2, Landroid/os/Bundle;

    .line 292
    const-string v0, "ARG_CHANNEL"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    .line 293
    const-string v1, "ARG_AFFILIATE"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/cbs/app/view/model/Affiliate;

    .line 5602
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->a(Lcom/cbs/app/view/model/syncbak/SyncbakChannel;Lcom/cbs/app/view/model/Affiliate;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 298
    :sswitch_5
    const-string v0, "check_availability"

    invoke-direct {p0, v0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->c(Ljava/lang/String;)V

    .line 299
    if-eqz p2, :cond_0

    instance-of v0, p2, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 300
    check-cast p2, Landroid/os/Bundle;

    .line 301
    const-string v0, "ARG_CHANNEL"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    .line 302
    const-string v1, "ARG_AFFILIATE"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/cbs/app/view/model/Affiliate;

    .line 303
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->a(Lcom/cbs/app/view/model/syncbak/SyncbakChannel;Lcom/cbs/app/view/model/Affiliate;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 307
    :sswitch_6
    const-string v0, "check_availability"

    invoke-direct {p0, v0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->c(Ljava/lang/String;)V

    .line 308
    if-eqz p2, :cond_0

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 309
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    .line 310
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-static {}, Lcom/cbs/app/livetv/fragment/LiveTvNotFoundFragment;->a()Lcom/cbs/app/livetv/fragment/LiveTvNotFoundFragment;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "live_tv_not_found"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->f:Landroid/support/v4/app/FragmentTransaction;

    .line 311
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->g()V

    goto/16 :goto_0

    .line 313
    :cond_3
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/MVPDController;->getSelectedMvpdConfig()Lcom/cbs/app/view/model/MVPDConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->a(Lcom/cbs/app/view/model/MVPDConfig;)Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;

    move-result-object v0

    .line 314
    invoke-virtual {v0, p0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->setListener(Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;)V

    .line 315
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "live_tv_not_found"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->f:Landroid/support/v4/app/FragmentTransaction;

    .line 316
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->g()V

    goto/16 :goto_0

    .line 322
    :sswitch_7
    const-string v0, "check_availability"

    invoke-direct {p0, v0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->c(Ljava/lang/String;)V

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fromFragment: object "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 324
    if-eqz p2, :cond_5

    instance-of v0, p2, Lcom/cbs/app/view/model/MVPDConfig;

    if-eqz v0, :cond_5

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fromFragment: MVPDController.getInstance().isAuthenticated() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cbs/app/livetv/controllers/MVPDController;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 326
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/MVPDController;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 327
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/MVPDController;->getAuthorization()V

    goto/16 :goto_0

    .line 329
    :cond_4
    check-cast p2, Lcom/cbs/app/view/model/MVPDConfig;

    .line 330
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/cbs/app/livetv/controllers/MVPDController;->setMVPDProviderToModifyAuth(Lcom/cbs/app/view/model/MVPDConfig;)V

    goto/16 :goto_0

    .line 333
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fromFragment: AuthStatusManager.isSubscriber() = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 334
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 335
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->e()V

    goto/16 :goto_0

    .line 338
    :cond_6
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->f()V

    goto/16 :goto_0

    .line 344
    :sswitch_8
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/MVPDController;->getSelectedMvpdConfig()Lcom/cbs/app/view/model/MVPDConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->a(Lcom/cbs/app/view/model/MVPDConfig;)Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;

    move-result-object v0

    .line 345
    invoke-virtual {v0, p0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->setListener(Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;)V

    .line 346
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "live_tv_not_found"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->f:Landroid/support/v4/app/FragmentTransaction;

    .line 347
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->g()V

    goto/16 :goto_0

    .line 350
    :sswitch_9
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->f()V

    goto/16 :goto_0

    .line 353
    :sswitch_a
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    .line 355
    invoke-virtual {v0}, Lcom/cbs/app/view/NavigationActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 358
    if-eqz p2, :cond_7

    instance-of v1, p2, Landroid/os/Bundle;

    if-eqz v1, :cond_7

    .line 359
    check-cast p2, Landroid/os/Bundle;

    .line 360
    const-string v1, "ARG_SHOW_REGISTER_LATER"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 366
    :goto_1
    invoke-static {v3}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeeVideo(Lcom/cbs/app/view/model/VideoData;)V

    .line 367
    invoke-static {v3}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeeShow(Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 368
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cbs/app/livetv/controllers/MVPDController;->getSelectedMvpdConfig()Lcom/cbs/app/view/model/MVPDConfig;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 369
    invoke-static {v2}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeelUpsellAfterAuth(Z)V

    .line 374
    :goto_2
    invoke-virtual {v0, v1}, Lcom/cbs/app/view/NavigationActivity;->a(Z)V

    .line 375
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->c()V

    goto/16 :goto_0

    :cond_7
    move v1, v2

    .line 362
    goto :goto_1

    .line 371
    :cond_8
    invoke-static {v6}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeelUpsellAfterAuth(Z)V

    goto :goto_2

    .line 380
    :sswitch_b
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    .line 382
    invoke-virtual {v0}, Lcom/cbs/app/view/NavigationActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 383
    if-eqz p2, :cond_a

    instance-of v1, p2, Landroid/os/Bundle;

    if-eqz v1, :cond_a

    .line 384
    check-cast p2, Landroid/os/Bundle;

    .line 385
    const-string v1, "ARG_FROM_UPSELL_TRIAL"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 386
    const-string v4, "ARG_SHOW_REGISTER_LATER"

    invoke-virtual {p2, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 387
    const-string v5, "ARG_SKU"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 390
    invoke-static {v3}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeeVideo(Lcom/cbs/app/view/model/VideoData;)V

    .line 391
    invoke-static {v3}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeeShow(Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 392
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cbs/app/livetv/controllers/MVPDController;->getSelectedMvpdConfig()Lcom/cbs/app/view/model/MVPDConfig;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 393
    invoke-static {v2}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeelUpsellAfterAuth(Z)V

    .line 397
    :goto_3
    invoke-virtual {v0, v1, v5, v4}, Lcom/cbs/app/view/NavigationActivity;->a(ZLjava/lang/String;Z)V

    .line 398
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->c()V

    goto/16 :goto_0

    .line 395
    :cond_9
    invoke-static {v6}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeelUpsellAfterAuth(Z)V

    goto :goto_3

    .line 6005
    :cond_a
    invoke-virtual {v0, v2, v3, v2}, Lcom/cbs/app/view/NavigationActivity;->a(ZLjava/lang/String;Z)V

    goto/16 :goto_0

    .line 408
    :sswitch_c
    instance-of v0, p2, Landroid/os/Bundle;

    if-eqz v0, :cond_b

    .line 409
    check-cast p2, Landroid/os/Bundle;

    .line 410
    sget-object v0, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 411
    const-string v1, "ARG_TRACKING_TYPE"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 413
    invoke-static {v0, v1}, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->a(Ljava/lang/String;I)Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;

    move-result-object v0

    .line 420
    :goto_4
    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "webview"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->f:Landroid/support/v4/app/FragmentTransaction;

    .line 422
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->g()V

    goto/16 :goto_0

    .line 414
    :cond_b
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 415
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_4

    :cond_c
    move-object v0, v3

    .line 417
    goto :goto_4

    .line 426
    :sswitch_d
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->e()V

    goto/16 :goto_0

    .line 429
    :sswitch_e
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 432
    :sswitch_f
    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/cbs/app/view/model/VideoData;

    if-eqz v0, :cond_0

    .line 433
    check-cast p2, Lcom/cbs/app/view/model/VideoData;

    .line 434
    invoke-virtual {p2}, Lcom/cbs/app/view/model/VideoData;->getCbsShowId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->a(J)Lcom/cbs/app/view/fragments/show/model/ShowItem;

    move-result-object v0

    .line 435
    if-eqz v0, :cond_d

    .line 436
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2, v0}, Lcom/cbs/app/view/utils/VideoUtil;->a(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    goto/16 :goto_0

    .line 438
    :cond_d
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "error loading the video"

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 255
    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_3
        0x3ea -> :sswitch_6
        0x3f5 -> :sswitch_7
        0x3f6 -> :sswitch_8
        0x44e -> :sswitch_a
        0x44f -> :sswitch_b
        0x450 -> :sswitch_0
        0x451 -> :sswitch_c
        0x452 -> :sswitch_1
        0x453 -> :sswitch_2
        0x454 -> :sswitch_d
        0x456 -> :sswitch_f
        0x457 -> :sswitch_e
        0x459 -> :sswitch_4
        0x45a -> :sswitch_5
        0x7dc -> :sswitch_9
    .end sparse-switch
.end method

.method public final a()Z
    .locals 4

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0f01ee

    invoke-static {}, Lcom/cbs/app/livetv/fragment/ConnectWithTvProviderFragment;->b()Lcom/cbs/app/livetv/fragment/ConnectWithTvProviderFragment;

    move-result-object v2

    const-string v3, "connecting"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "connecting"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->f:Landroid/support/v4/app/FragmentTransaction;

    .line 506
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->g()V

    .line 507
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0f01ee

    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cbs/app/livetv/controllers/MVPDController;->getSelectedMvpdConfig()Lcom/cbs/app/view/model/MVPDConfig;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/cbs/app/livetv/fragment/MvpdLoginFragment;->a(Ljava/lang/String;Lcom/cbs/app/view/model/MVPDConfig;)Lcom/cbs/app/livetv/fragment/MvpdLoginFragment;

    move-result-object v2

    const-string v3, "login"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "login"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->f:Landroid/support/v4/app/FragmentTransaction;

    .line 470
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->g()V

    .line 471
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/util/ArrayList;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/MVPDConfig;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 489
    const-string v0, "picker"

    invoke-direct {p0, v0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->c(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0f01ee

    invoke-static {p1, p2}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->a(Ljava/util/ArrayList;Z)Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;

    move-result-object v2

    const-string v3, "picker"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "picker"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->f:Landroid/support/v4/app/FragmentTransaction;

    .line 495
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->g()V

    .line 496
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Z)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleAuthenticationChanged: isAuthenticated = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isUserInitiatedAuthenticationInProgress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cbs/app/livetv/controllers/MVPDController;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 514
    if-eqz p1, :cond_1

    .line 515
    const-string v0, "logout"

    invoke-direct {p0, v0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->c(Ljava/lang/String;)V

    .line 516
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/MVPDController;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/MVPDController;->getAuthorization()V

    .line 533
    :goto_0
    return v2

    .line 520
    :cond_0
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/MVPDController;->getSelectedMvpdConfig()Lcom/cbs/app/view/model/MVPDConfig;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->a(ILcom/cbs/app/view/model/MVPDConfig;)V

    goto :goto_0

    .line 523
    :cond_1
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 524
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->a(ILcom/cbs/app/view/model/MVPDConfig;)V

    goto :goto_0

    .line 528
    :cond_2
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->d()V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0f01ee

    invoke-static {p1}, Lcom/cbs/app/livetv/fragment/MvpdLogoutFragment;->a(Ljava/lang/String;)Lcom/cbs/app/livetv/fragment/MvpdLogoutFragment;

    move-result-object v2

    const-string v3, "logout"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "logout"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->f:Landroid/support/v4/app/FragmentTransaction;

    .line 481
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->g()V

    .line 482
    const/4 v0, 0x1

    return v0
.end method

.method public final b(Z)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleAuthorizationChanged() called with: isAuthorized = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->h()V

    .line 544
    invoke-direct {p0, v2}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->c(Z)V

    .line 546
    return v2
.end method

.method public final c()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 229
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 230
    if-lez v0, :cond_4

    .line 233
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0f01ee

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_1

    .line 235
    instance-of v1, v0, Lcom/cbs/app/livetv/fragment/MvpdLoginFragment;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;

    if-eqz v1, :cond_2

    .line 236
    :cond_0
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/MVPDController;->g()V

    .line 243
    :cond_1
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 248
    :goto_0
    return v2

    .line 238
    :cond_2
    instance-of v1, v0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;

    if-nez v1, :cond_3

    instance-of v0, v0, Lcom/cbs/app/livetv/fragment/LiveTvNotFoundFragment;

    if-eqz v0, :cond_1

    .line 239
    :cond_3
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    invoke-virtual {v0}, Lcom/cbs/app/view/NavigationActivity;->k()V

    goto :goto_0

    .line 247
    :cond_4
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    invoke-virtual {v0}, Lcom/cbs/app/view/NavigationActivity;->k()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cbs/app/livetv/controllers/MVPDController;->setMVPDCallbacks(Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;)V

    .line 79
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/MVPDController;->h()V

    .line 80
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 86
    const v0, 0x7f030078

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 223
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/controllers/MVPDController;->setMVPDCallbacks(Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;)V

    .line 224
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 225
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 209
    .line 5162
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v0, :cond_0

    .line 5163
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    .line 5164
    invoke-virtual {v0, p0}, Lcom/cbs/app/view/NavigationActivity;->b(Lcom/cbs/app/view/BackButtonListener;)V

    .line 210
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->a:Z

    .line 211
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 212
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 172
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 3154
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v0, :cond_0

    .line 3155
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    .line 3156
    invoke-virtual {v0, p0}, Lcom/cbs/app/view/NavigationActivity;->a(Lcom/cbs/app/view/BackButtonListener;)V

    .line 174
    :cond_0
    iput-boolean v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->a:Z

    .line 175
    iget-boolean v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->c:Z

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->d:Ljava/lang/String;

    .line 3655
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3656
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->h()V

    .line 3660
    :goto_0
    iput-boolean v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->c:Z

    .line 3661
    const-string v0, ""

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->d:Ljava/lang/String;

    .line 179
    :cond_1
    iget-boolean v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->e:Z

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->f:Landroid/support/v4/app/FragmentTransaction;

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->f:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 183
    iput-boolean v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->e:Z

    .line 4197
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "refreshCbsUserStatus: cached status = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->b:Lcom/cbs/app/livetv/model/UserStatusEnum;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", currentStatus = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getStatusEnum()Lcom/cbs/app/livetv/model/UserStatusEnum;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4198
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->b:Lcom/cbs/app/livetv/model/UserStatusEnum;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->b:Lcom/cbs/app/livetv/model/UserStatusEnum;

    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getStatusEnum()Lcom/cbs/app/livetv/model/UserStatusEnum;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cbs/app/livetv/model/UserStatusEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    .line 4201
    :goto_1
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getStatusEnum()Lcom/cbs/app/livetv/model/UserStatusEnum;

    move-result-object v2

    iput-object v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->b:Lcom/cbs/app/livetv/model/UserStatusEnum;

    .line 186
    if-eqz v0, :cond_3

    .line 187
    invoke-direct {p0, v1}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->c(Z)V

    .line 5145
    :cond_3
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 5147
    if-eqz v0, :cond_4

    instance-of v1, v0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v1, :cond_4

    .line 5148
    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    .line 5149
    invoke-virtual {v0}, Lcom/cbs/app/view/NavigationActivity;->i()V

    .line 191
    :cond_4
    return-void

    .line 3658
    :cond_5
    invoke-direct {p0, v0}, Lcom/cbs/app/livetv/fragment/LiveTvFragment;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move v0, v1

    .line 4198
    goto :goto_1
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 217
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 218
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 92
    return-void
.end method
