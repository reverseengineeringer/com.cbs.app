.class public Lcom/cbs/app/view/fragments/settings/AccountFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/cbs/app/view/fragments/settings/AccountFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/settings/AccountFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 24
    new-instance v0, Lcom/cbs/app/view/fragments/settings/AccountFragment$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/settings/AccountFragment$1;-><init>(Lcom/cbs/app/view/fragments/settings/AccountFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountFragment;->b:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/cbs/app/view/fragments/settings/AccountFragment;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/settings/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 55
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/settings/AccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 56
    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CBS_COM"

    invoke-static {v1, v2, v3}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    if-nez v2, :cond_2

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "not logged in"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    invoke-static {v4}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeeVideo(Lcom/cbs/app/view/model/VideoData;)V

    .line 68
    invoke-static {v4}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeeShow(Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 69
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeelUpsellAfterAuth(Z)V

    .line 72
    invoke-static {v1, v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 74
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "logged in"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    invoke-static {v1, v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Landroid/content/Context;Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountFragment;->b:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;)V

    .line 41
    const v0, 0x7f0300d8

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 82
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountFragment;->b:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;)V

    .line 83
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/settings/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->a(Landroid/app/Activity;)Z

    .line 84
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 49
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/settings/AccountFragment;->a()V

    .line 50
    return-void
.end method
