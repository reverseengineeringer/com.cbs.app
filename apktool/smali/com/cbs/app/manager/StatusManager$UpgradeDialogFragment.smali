.class public Lcom/cbs/app/manager/StatusManager$UpgradeDialogFragment;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/manager/StatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpgradeDialogFragment"
.end annotation


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/manager/StatusManager$UpgradeDialogFragment;->a:Z

    .line 157
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cbs/app/manager/StatusManager$UpgradeDialogFragment;->setCancelable(Z)V

    .line 163
    invoke-virtual {p0}, Lcom/cbs/app/manager/StatusManager$UpgradeDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 164
    new-instance v1, Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    const v3, 0x7f0b00e9

    invoke-direct {v2, v0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 165
    const-string v2, "CBS"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 166
    iget-boolean v2, p0, Lcom/cbs/app/manager/StatusManager$UpgradeDialogFragment;->a:Z

    if-eqz v2, :cond_0

    .line 167
    const v2, 0x7f0801bf

    invoke-virtual {p0, v2}, Lcom/cbs/app/manager/StatusManager$UpgradeDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Ok"

    new-instance v4, Lcom/cbs/app/manager/StatusManager$UpgradeDialogFragment$1;

    invoke-direct {v4, p0, v0}, Lcom/cbs/app/manager/StatusManager$UpgradeDialogFragment$1;-><init>(Lcom/cbs/app/manager/StatusManager$UpgradeDialogFragment;Landroid/app/Activity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 187
    :goto_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 175
    :cond_0
    const v2, 0x7f08027b

    invoke-virtual {p0, v2}, Lcom/cbs/app/manager/StatusManager$UpgradeDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Download"

    new-instance v4, Lcom/cbs/app/manager/StatusManager$UpgradeDialogFragment$2;

    invoke-direct {v4, p0, v0}, Lcom/cbs/app/manager/StatusManager$UpgradeDialogFragment$2;-><init>(Lcom/cbs/app/manager/StatusManager$UpgradeDialogFragment;Landroid/app/Activity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
