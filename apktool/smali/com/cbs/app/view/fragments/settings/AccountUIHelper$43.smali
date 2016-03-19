.class final Lcom/cbs/app/view/fragments/settings/AccountUIHelper$43;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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

.field final synthetic b:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$43;->a:Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$43;->b:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 351
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e()Landroid/app/AlertDialog;

    move-result-object v0

    const v1, 0x7f0f0159

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 352
    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$43;->a:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 353
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 354
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_0

    .line 356
    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$43;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    :cond_0
    return-void
.end method
