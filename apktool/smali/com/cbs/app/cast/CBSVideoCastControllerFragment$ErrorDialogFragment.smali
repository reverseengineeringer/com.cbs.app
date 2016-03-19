.class public Lcom/cbs/app/cast/CBSVideoCastControllerFragment$ErrorDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/cast/CBSVideoCastControllerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorDialogFragment"
.end annotation


# instance fields
.field private a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 664
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/cbs/app/cast/CBSVideoCastControllerFragment$ErrorDialogFragment;
    .locals 3

    .prologue
    .line 670
    new-instance v0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$ErrorDialogFragment;

    invoke-direct {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$ErrorDialogFragment;-><init>()V

    .line 671
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 672
    const-string v2, "message"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    invoke-virtual {v0, v1}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$ErrorDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 674
    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/cast/CBSVideoCastControllerFragment$ErrorDialogFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$ErrorDialogFragment;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 679
    move-object v0, p1

    check-cast v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    iput-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$ErrorDialogFragment;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    .line 680
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 681
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$ErrorDialogFragment;->setCancelable(Z)V

    .line 682
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 687
    invoke-virtual {p0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$ErrorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 688
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$ErrorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0800b0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0800cd

    new-instance v2, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$ErrorDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$ErrorDialogFragment$1;-><init>(Lcom/cbs/app/cast/CBSVideoCastControllerFragment$ErrorDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
