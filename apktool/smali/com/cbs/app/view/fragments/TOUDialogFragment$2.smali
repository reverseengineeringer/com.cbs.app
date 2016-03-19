.class final Lcom/cbs/app/view/fragments/TOUDialogFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/TOUDialogFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Lcom/cbs/app/view/fragments/TOUDialogFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/TOUDialogFragment;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/cbs/app/view/fragments/TOUDialogFragment$2;->b:Lcom/cbs/app/view/fragments/TOUDialogFragment;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/TOUDialogFragment$2;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    iget-object v0, p0, Lcom/cbs/app/view/fragments/TOUDialogFragment$2;->a:Landroid/app/AlertDialog;

    const v1, 0x7f0f03c3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 82
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    invoke-static {v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->setTermsDialogIsShowing(Z)V

    .line 84
    iget-object v0, p0, Lcom/cbs/app/view/fragments/TOUDialogFragment$2;->b:Lcom/cbs/app/view/fragments/TOUDialogFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/TOUDialogFragment;->b(Lcom/cbs/app/view/fragments/TOUDialogFragment;)Lcom/cbs/app/view/fragments/TOUDialogFragment$TOUDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/cbs/app/view/fragments/TOUDialogFragment$2;->b:Lcom/cbs/app/view/fragments/TOUDialogFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/TOUDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/cbs/app/view/utils/Preferences;->c(Landroid/content/Context;Z)V

    .line 86
    iget-object v0, p0, Lcom/cbs/app/view/fragments/TOUDialogFragment$2;->b:Lcom/cbs/app/view/fragments/TOUDialogFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/TOUDialogFragment;->b(Lcom/cbs/app/view/fragments/TOUDialogFragment;)Lcom/cbs/app/view/fragments/TOUDialogFragment$TOUDialogListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/cbs/app/view/fragments/TOUDialogFragment$TOUDialogListener;->a(Z)V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/TOUDialogFragment$2;->b:Lcom/cbs/app/view/fragments/TOUDialogFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/TOUDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const-string v1, "You need to accept our terms in order to continue."

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/app/Dialog;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/cbs/app/view/fragments/TOUDialogFragment$2;->b:Lcom/cbs/app/view/fragments/TOUDialogFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/TOUDialogFragment;->b(Lcom/cbs/app/view/fragments/TOUDialogFragment;)Lcom/cbs/app/view/fragments/TOUDialogFragment$TOUDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/cbs/app/view/fragments/TOUDialogFragment$2;->b:Lcom/cbs/app/view/fragments/TOUDialogFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/TOUDialogFragment;->b(Lcom/cbs/app/view/fragments/TOUDialogFragment;)Lcom/cbs/app/view/fragments/TOUDialogFragment$TOUDialogListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/cbs/app/view/fragments/TOUDialogFragment$TOUDialogListener;->a(Z)V

    goto :goto_0
.end method
