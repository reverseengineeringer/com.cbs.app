.class final Lcom/cbs/app/dialog/ErrorDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 40
    iput-object p1, p0, Lcom/cbs/app/dialog/ErrorDialog$2;->a:Lcom/cbs/app/dialog/ErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cbs/app/dialog/ErrorDialog$2;->a:Lcom/cbs/app/dialog/ErrorDialog;

    invoke-static {v0}, Lcom/cbs/app/dialog/ErrorDialog;->a(Lcom/cbs/app/dialog/ErrorDialog;)Lcom/cbs/app/dialog/ErrorDialog$ErrorDialogListener;

    .line 43
    return-void
.end method
