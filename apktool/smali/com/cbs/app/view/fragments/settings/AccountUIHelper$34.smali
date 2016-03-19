.class final Lcom/cbs/app/view/fragments/settings/AccountUIHelper$34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$34;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$34;->b:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const v4, 0x7f0f0159

    const/4 v3, 0x0

    .line 329
    .line 330
    const/4 v1, 0x0

    .line 331
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 333
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 334
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 336
    :cond_0
    invoke-static {v1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 337
    :cond_1
    const/4 v2, 0x1

    .line 339
    :goto_0
    if-eqz v2, :cond_2

    .line 340
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e()Landroid/app/AlertDialog;

    move-result-object v0

    const-string v1, "You must provide a valid email."

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/app/Dialog;Ljava/lang/String;)V

    .line 346
    :goto_1
    return-void

    .line 342
    :cond_2
    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$34;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 343
    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$34;->b:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 344
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_0
.end method
