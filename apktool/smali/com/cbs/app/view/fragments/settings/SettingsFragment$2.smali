.class final Lcom/cbs/app/view/fragments/settings/SettingsFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/BackButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/settings/SettingsFragment;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment$2;->a:Lcom/cbs/app/view/fragments/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 7

    .prologue
    const v1, 0x7f0f02e3

    const/4 v6, 0x1

    .line 63
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->f()Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    .line 65
    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment$2;->a:Lcom/cbs/app/view/fragments/settings/SettingsFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->a(Lcom/cbs/app/view/fragments/settings/SettingsFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment$2;->a:Lcom/cbs/app/view/fragments/settings/SettingsFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->b(Lcom/cbs/app/view/fragments/settings/SettingsFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment$2;->a:Lcom/cbs/app/view/fragments/settings/SettingsFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->c(Lcom/cbs/app/view/fragments/settings/SettingsFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->i(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment$2;->a:Lcom/cbs/app/view/fragments/settings/SettingsFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->d(Lcom/cbs/app/view/fragments/settings/SettingsFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->j(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 67
    :cond_0
    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment$2;->a:Lcom/cbs/app/view/fragments/settings/SettingsFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->e(Lcom/cbs/app/view/fragments/settings/SettingsFragment;)I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 68
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment$2;->a:Lcom/cbs/app/view/fragments/settings/SettingsFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->f(Lcom/cbs/app/view/fragments/settings/SettingsFragment;)I

    .line 69
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 70
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment$2;->a:Lcom/cbs/app/view/fragments/settings/SettingsFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->g(Lcom/cbs/app/view/fragments/settings/SettingsFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment$2;->a:Lcom/cbs/app/view/fragments/settings/SettingsFragment;

    const-string v2, "settingsaccount_fragment"

    const-class v4, Lcom/cbs/app/view/fragments/settings/AccountFragment;

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->a(ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/Class;Ljava/lang/String;)V

    :goto_0
    move v0, v6

    .line 97
    :cond_1
    :goto_1
    return v0

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment$2;->a:Lcom/cbs/app/view/fragments/settings/SettingsFragment;

    const-string v2, "settingsappversion_fragment"

    const-class v4, Lcom/cbs/app/view/fragments/settings/AppVersionFragment;

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->a(ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_3
    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment$2;->a:Lcom/cbs/app/view/fragments/settings/SettingsFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->h(Lcom/cbs/app/view/fragments/settings/SettingsFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment$2;->a:Lcom/cbs/app/view/fragments/settings/SettingsFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->i(Lcom/cbs/app/view/fragments/settings/SettingsFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v1, :cond_1

    .line 78
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment$2;->a:Lcom/cbs/app/view/fragments/settings/SettingsFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->j(Lcom/cbs/app/view/fragments/settings/SettingsFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    .line 79
    invoke-virtual {v0}, Lcom/cbs/app/view/NavigationActivity;->k()V

    move v0, v6

    .line 81
    goto :goto_1

    .line 84
    :cond_4
    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment$2;->a:Lcom/cbs/app/view/fragments/settings/SettingsFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->e(Lcom/cbs/app/view/fragments/settings/SettingsFragment;)I

    move-result v2

    if-ne v2, v6, :cond_5

    .line 85
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment$2;->a:Lcom/cbs/app/view/fragments/settings/SettingsFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->f(Lcom/cbs/app/view/fragments/settings/SettingsFragment;)I

    .line 86
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment$2;->a:Lcom/cbs/app/view/fragments/settings/SettingsFragment;

    const-string v2, "settingsmenu_fragment"

    const/4 v3, 0x0

    const-class v4, Lcom/cbs/app/view/fragments/settings/MenuFragment;

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->a(ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/Class;Ljava/lang/String;)V

    move v0, v6

    .line 87
    goto :goto_1

    .line 89
    :cond_5
    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment$2;->a:Lcom/cbs/app/view/fragments/settings/SettingsFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->k(Lcom/cbs/app/view/fragments/settings/SettingsFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment$2;->a:Lcom/cbs/app/view/fragments/settings/SettingsFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->l(Lcom/cbs/app/view/fragments/settings/SettingsFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v1, :cond_1

    .line 90
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment$2;->a:Lcom/cbs/app/view/fragments/settings/SettingsFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->m(Lcom/cbs/app/view/fragments/settings/SettingsFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    .line 91
    invoke-virtual {v0}, Lcom/cbs/app/view/NavigationActivity;->k()V

    move v0, v6

    .line 92
    goto :goto_1
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
