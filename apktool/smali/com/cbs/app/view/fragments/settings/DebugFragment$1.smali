.class final Lcom/cbs/app/view/fragments/settings/DebugFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/settings/DebugFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/settings/DebugFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$1;->a:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 102
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$1;->a:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    invoke-virtual {v1}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/cbs/app/adobepass/MvpdLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$1;->a:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    invoke-virtual {v1}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    const/16 v2, 0x2329

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/util/ArrayList;Z)Z
    .locals 3
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
    .line 118
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$1;->a:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    invoke-virtual {v1}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/cbs/app/adobepass/MvpdPickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    const-string v1, "mvpd_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 120
    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$1;->a:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    invoke-virtual {v1}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    const/16 v2, 0x232b

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Z)Z
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$1;->a:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/cbs/app/view/fragments/settings/DebugFragment$1$1;

    invoke-direct {v1, p0, p1}, Lcom/cbs/app/view/fragments/settings/DebugFragment$1$1;-><init>(Lcom/cbs/app/view/fragments/settings/DebugFragment$1;Z)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 110
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$1;->a:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    invoke-virtual {v1}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/cbs/app/adobepass/MvpdLogoutActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$1;->a:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    invoke-virtual {v1}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    const/16 v2, 0x232a

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public final b(Z)Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x1

    return v0
.end method
