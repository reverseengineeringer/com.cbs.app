.class public Lcom/cbs/app/dialog/ErrorDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/dialog/ErrorDialog$ErrorDialogListener;
    }
.end annotation


# instance fields
.field private a:Lcom/cbs/app/dialog/ErrorDialog$ErrorDialogListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/dialog/ErrorDialog;)Lcom/cbs/app/dialog/ErrorDialog$ErrorDialogListener;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/cbs/app/dialog/ErrorDialog;->a:Lcom/cbs/app/dialog/ErrorDialog$ErrorDialogListener;

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/cbs/app/dialog/ErrorDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-virtual {p0}, Lcom/cbs/app/dialog/ErrorDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/cbs/app/dialog/ErrorDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080072

    new-instance v2, Lcom/cbs/app/dialog/ErrorDialog$2;

    invoke-direct {v2, p0}, Lcom/cbs/app/dialog/ErrorDialog$2;-><init>(Lcom/cbs/app/dialog/ErrorDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/cbs/app/dialog/ErrorDialog$1;

    invoke-direct {v1, p0}, Lcom/cbs/app/dialog/ErrorDialog$1;-><init>(Lcom/cbs/app/dialog/ErrorDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public setListener(Lcom/cbs/app/dialog/ErrorDialog$ErrorDialogListener;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/cbs/app/dialog/ErrorDialog;->a:Lcom/cbs/app/dialog/ErrorDialog$ErrorDialogListener;

    .line 29
    return-void
.end method
