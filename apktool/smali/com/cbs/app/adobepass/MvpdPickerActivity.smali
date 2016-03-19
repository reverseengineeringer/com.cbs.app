.class public Lcom/cbs/app/adobepass/MvpdPickerActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 29
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcom/cbs/app/adobepass/MvpdPickerActivity;->setContentView(I)V

    .line 33
    invoke-virtual {p0}, Lcom/cbs/app/adobepass/MvpdPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 34
    const-string v1, "mvpd_data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 36
    if-nez p1, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/cbs/app/adobepass/MvpdPickerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0f00a1

    invoke-virtual {p0}, Lcom/cbs/app/adobepass/MvpdPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "art_try_again"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v0, v3}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->a(Ljava/util/ArrayList;Z)Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/cbs/app/adobepass/MvpdPickerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 44
    const v1, 0x7f020128

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setLogo(I)V

    .line 45
    invoke-virtual {v0, v6}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 46
    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 47
    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 48
    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 49
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 53
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 58
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 55
    :pswitch_0
    invoke-virtual {p0}, Lcom/cbs/app/adobepass/MvpdPickerActivity;->finish()V

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
