.class final Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment$1;->a:Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/util/ArrayList;Z)Z
    .locals 1
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
    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Z)Z
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;->a()Ljava/lang/String;

    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment$1;->a:Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;

    invoke-virtual {v1}, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/cbs/app/adobepass/MvpdLogoutActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 58
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment$1;->a:Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;

    invoke-virtual {v1}, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    const/16 v2, 0x1f42

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public final b(Z)Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method
