.class final Lcom/cbs/app/manager/StatusManager$UpgradeDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/manager/StatusManager$UpgradeDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/cbs/app/manager/StatusManager$UpgradeDialogFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/manager/StatusManager$UpgradeDialogFragment;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/cbs/app/manager/StatusManager$UpgradeDialogFragment$1;->b:Lcom/cbs/app/manager/StatusManager$UpgradeDialogFragment;

    iput-object p2, p0, Lcom/cbs/app/manager/StatusManager$UpgradeDialogFragment$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/cbs/app/manager/StatusManager$UpgradeDialogFragment$1;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 172
    return-void
.end method
