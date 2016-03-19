.class final Lcom/cbs/app/view/fragments/settings/AccountUIHelper$46;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic d:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$46;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$46;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$46;->c:Landroid/content/DialogInterface$OnClickListener;

    iput-object p4, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$46;->d:Landroid/content/DialogInterface$OnCancelListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 412
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 413
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$46;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->h(Landroid/content/Context;)V

    .line 415
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$46;->a:Landroid/content/Context;

    const-string v1, "Sign Into CBS"

    const-string v2, "There was a problem connecting to our servers. Please try again later."

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 4

    .prologue
    .line 399
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 400
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$46;->a:Landroid/content/Context;

    const v3, 0x7f0b00e9

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 401
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$46;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Sign Into CBS"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Ok"

    iget-object v3, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$46;->c:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 405
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 406
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->f()Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$46;->d:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 407
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->f()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 408
    return-void
.end method
