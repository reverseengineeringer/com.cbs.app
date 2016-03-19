.class final Lcom/cbs/app/view/fragments/settings/AccountUIHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$3;->a:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$3;->b:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$3;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$3;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 478
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->h()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 479
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->h()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 480
    const/4 v0, 0x0

    .line 482
    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$3;->a:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 483
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$3;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 485
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$3;->b:Landroid/widget/EditText;

    const-string v2, "password field"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 486
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$3;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 487
    if-eqz v1, :cond_0

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$3;->c:Landroid/content/Context;

    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 489
    iget-object v3, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$3;->b:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 490
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$3;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$3;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    :goto_1
    return-void

    .line 492
    :cond_0
    const-string v0, "You must provide an email address and a password."

    .line 493
    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$3;->c:Landroid/content/Context;

    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->g()Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/app/Dialog;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method
