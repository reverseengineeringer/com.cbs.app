.class final Lcom/cbs/app/dialog/ErrorDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/dialog/ErrorDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/dialog/ErrorDialog;


# direct methods
.method constructor <init>(Lcom/cbs/app/dialog/ErrorDialog;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/cbs/app/dialog/ErrorDialog$1;->a:Lcom/cbs/app/dialog/ErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cbs/app/dialog/ErrorDialog$1;->a:Lcom/cbs/app/dialog/ErrorDialog;

    invoke-static {v0}, Lcom/cbs/app/dialog/ErrorDialog;->a(Lcom/cbs/app/dialog/ErrorDialog;)Lcom/cbs/app/dialog/ErrorDialog$ErrorDialogListener;

    .line 50
    return-void
.end method
