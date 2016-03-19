.class final Lcom/cbs/app/view/fragments/settings/AccountUIHelper$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 309
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$23;->a:Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$23;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    .prologue
    const v3, 0x7f0f0159

    .line 312
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$23;->a:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 314
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$23;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->h(Landroid/content/Context;)V

    .line 319
    return-void
.end method
