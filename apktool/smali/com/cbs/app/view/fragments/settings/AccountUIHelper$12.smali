.class final Lcom/cbs/app/view/fragments/settings/AccountUIHelper$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$12;->a:Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$12;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    .prologue
    const v3, 0x7f0f0159

    .line 298
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$12;->a:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 299
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$12;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->h(Landroid/content/Context;)V

    .line 304
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b()V

    .line 306
    return-void
.end method
