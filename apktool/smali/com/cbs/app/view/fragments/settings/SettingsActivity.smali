.class public Lcom/cbs/app/view/fragments/settings/SettingsActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/cbs/app/view/fragments/settings/SettingsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/settings/SettingsActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 25
    new-instance v0, Lcom/cbs/app/view/fragments/settings/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/settings/SettingsActivity$1;-><init>(Lcom/cbs/app/view/fragments/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsActivity;->b:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/cbs/app/view/fragments/settings/SettingsActivity;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/cbs/app/view/LogoKeeper;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/LogoKeeper;-><init>(Landroid/content/Context;)V

    .line 83
    invoke-static {p0}, Lcom/cbs/app/view/LogoKeeper;->a(Landroid/content/Context;)V

    .line 84
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/settings/SettingsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 66
    const-string v1, "settings_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/settings/SettingsActivity;->finish()V

    .line 73
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 35
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/settings/SettingsActivity;->setContentView(I)V

    .line 38
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsActivity;->b:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;)V

    .line 40
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/settings/SettingsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    const-string v1, "Settings"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 44
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 45
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 46
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/settings/SettingsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 53
    new-instance v1, Lcom/cbs/app/view/fragments/settings/SettingsFragment;

    invoke-direct {v1}, Lcom/cbs/app/view/fragments/settings/SettingsFragment;-><init>()V

    .line 54
    const v2, 0x7f0f00a6

    const-string v3, "settings_fragment"

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 55
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 57
    const-string v0, "settings_fragment"

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1104
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/settings/SettingsActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1105
    const-class v1, Lcom/cbs/app/view/fragments/AdFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 1106
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1107
    const-string v3, "tag"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1109
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/settings/SettingsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x1020002

    const-string v3, "ad_fragment"

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 59
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 78
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsActivity;->b:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;)V

    .line 79
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 89
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 97
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 100
    :goto_0
    return v0

    .line 93
    :pswitch_0
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/settings/SettingsActivity;->finish()V

    .line 94
    const/4 v0, 0x1

    .line 95
    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
