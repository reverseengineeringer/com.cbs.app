.class public Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;
.super Lcom/cbs/app/view/AbstractAsyncFragment;
.source "SourceFile"


# static fields
.field private static final h:Ljava/lang/String;


# instance fields
.field private i:Landroid/view/View;

.field private j:Lcom/cbs/app/view/model/DeviceCast;

.field private k:Z

.field private l:Lcom/cbs/app/view/model/Show;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;->i:Landroid/view/View;

    .line 27
    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;->j:Lcom/cbs/app/view/model/DeviceCast;

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;->k:Z

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;->m:Z

    .line 35
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const v5, 0x7f0f00ec

    const/4 v2, 0x1

    const/4 v4, 0x0

    const v3, 0x7f0f00eb

    .line 41
    iput-boolean v2, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;->m:Z

    .line 42
    const v0, 0x7f03002c

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;->i:Landroid/view/View;

    .line 44
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 45
    const-string v0, "showImage"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;->k:Z

    .line 46
    const-string v0, "show"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/Show;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;->l:Lcom/cbs/app/view/model/Show;

    .line 47
    const-string v0, "deviceCast"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    check-cast v0, Lcom/cbs/app/view/model/DeviceCast;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;->j:Lcom/cbs/app/view/model/DeviceCast;

    .line 1087
    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;->j:Lcom/cbs/app/view/model/DeviceCast;

    if-eqz v0, :cond_0

    .line 1090
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;->i:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1092
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;->i:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1094
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1096
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1097
    const-string v1, "deviceCast"

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;->j:Lcom/cbs/app/view/model/DeviceCast;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1098
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 1099
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 1101
    iget-boolean v2, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;->k:Z

    if-eqz v2, :cond_1

    .line 1102
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;->i:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1103
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1104
    new-instance v2, Lcom/cbs/app/view/fragments/show/cast/CastMemberImageFragment;

    invoke-direct {v2}, Lcom/cbs/app/view/fragments/show/cast/CastMemberImageFragment;-><init>()V

    .line 1106
    invoke-virtual {v2, v0}, Lcom/cbs/app/view/fragments/show/cast/CastMemberImageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1107
    invoke-virtual {v1, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1113
    :goto_0
    new-instance v2, Lcom/cbs/app/view/fragments/show/cast/CastMemberBioFragment;

    invoke-direct {v2}, Lcom/cbs/app/view/fragments/show/cast/CastMemberBioFragment;-><init>()V

    .line 1114
    invoke-virtual {v2, v0}, Lcom/cbs/app/view/fragments/show/cast/CastMemberBioFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1115
    invoke-virtual {v1, v5, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1116
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;->i:Landroid/view/View;

    return-object v0

    .line 1109
    :cond_1
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;->i:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1110
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onDetach()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;->i:Landroid/view/View;

    .line 80
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onPause()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;->m:Z

    .line 73
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    :cond_0
    sget-object v0, Lcom/cbs/app/analytics/Action;->D:Lcom/cbs/app/analytics/Action;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;->d:Lcom/cbs/app/analytics/Action;

    .line 59
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;->l:Lcom/cbs/app/view/model/Show;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;->l:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;->e:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;->l:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;->f:Ljava/lang/String;

    .line 64
    :cond_1
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onResume()V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;->m:Z

    .line 67
    return-void
.end method
