.class public Lcom/cbs/app/view/fragments/settings/MenuFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/view/View;

.field private c:Lcom/cbs/app/view/fragments/settings/MenuAdapter;

.field private d:Landroid/widget/AdapterView$OnItemClickListener;

.field private e:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/cbs/app/view/fragments/settings/MenuFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/settings/MenuFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 32
    new-instance v0, Lcom/cbs/app/view/fragments/settings/MenuFragment$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/settings/MenuFragment$1;-><init>(Lcom/cbs/app/view/fragments/settings/MenuFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/settings/MenuFragment;->d:Landroid/widget/AdapterView$OnItemClickListener;

    .line 47
    new-instance v0, Lcom/cbs/app/view/fragments/settings/MenuFragment$2;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/settings/MenuFragment$2;-><init>(Lcom/cbs/app/view/fragments/settings/MenuFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/settings/MenuFragment;->e:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/settings/MenuFragment;)Lcom/cbs/app/view/fragments/settings/MenuAdapter;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/MenuFragment;->c:Lcom/cbs/app/view/fragments/settings/MenuAdapter;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/cbs/app/view/fragments/settings/MenuFragment;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/MenuFragment;->c:Lcom/cbs/app/view/fragments/settings/MenuAdapter;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->notifyDataSetChanged()V

    .line 97
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/settings/MenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 62
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 66
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/MenuFragment;->e:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;)V

    .line 69
    const v0, 0x7f0300dc

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/settings/MenuFragment;->b:Landroid/view/View;

    .line 1101
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/settings/MenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    .line 1102
    new-instance v1, Lcom/cbs/app/view/fragments/settings/MenuAdapter;

    invoke-direct {v1, v0}, Lcom/cbs/app/view/fragments/settings/MenuAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cbs/app/view/fragments/settings/MenuFragment;->c:Lcom/cbs/app/view/fragments/settings/MenuAdapter;

    .line 1103
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/settings/MenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 1104
    const-string v2, "settings_fragment"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 1105
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/cbs/app/view/fragments/settings/SettingsFragment;

    if-eqz v2, :cond_0

    .line 1107
    check-cast v1, Lcom/cbs/app/view/fragments/settings/SettingsFragment;

    .line 1108
    invoke-virtual {v1}, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->getMenuItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 1109
    if-eqz v1, :cond_0

    .line 1110
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;

    .line 1111
    iget-object v3, p0, Lcom/cbs/app/view/fragments/settings/MenuFragment;->c:Lcom/cbs/app/view/fragments/settings/MenuAdapter;

    invoke-virtual {v3, v1}, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 1115
    :cond_0
    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/MenuFragment;->b:Landroid/view/View;

    const v2, 0x7f0f0323

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1116
    if-eqz v1, :cond_3

    instance-of v2, v1, Landroid/widget/ListView;

    if-eqz v2, :cond_3

    .line 1118
    check-cast v1, Landroid/widget/ListView;

    .line 1120
    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030064

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1121
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "list view footer count:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1122
    invoke-virtual {v1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 1124
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 1125
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 1127
    :cond_1
    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/MenuFragment;->c:Lcom/cbs/app/view/fragments/settings/MenuAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1128
    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/MenuFragment;->d:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1129
    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->i(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1130
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/MenuFragment;->c:Lcom/cbs/app/view/fragments/settings/MenuAdapter;

    invoke-virtual {v0, v5}, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->setSelected(I)V

    .line 71
    :cond_3
    const-string v0, ""

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->setEmailCache(Ljava/lang/String;)V

    .line 72
    const-string v0, ""

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->setPasswordCache(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/MenuFragment;->b:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 86
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/MenuFragment;->e:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;)V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/settings/MenuFragment;->b:Landroid/view/View;

    .line 88
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 92
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 2096
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/MenuFragment;->c:Lcom/cbs/app/view/fragments/settings/MenuAdapter;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->notifyDataSetChanged()V

    .line 81
    return-void
.end method
