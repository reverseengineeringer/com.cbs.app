.class public Lcom/cbs/app/inappbilling/IABDialogFragment;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/inappbilling/IABDialogFragment$IABDialogListener;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/cbs/app/inappbilling/IABDialogFragment$IABDialogListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/inappbilling/IABDialogFragment;)Lcom/cbs/app/inappbilling/IABDialogFragment$IABDialogListener;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABDialogFragment;->c:Lcom/cbs/app/inappbilling/IABDialogFragment$IABDialogListener;

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 70
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABDialogFragment;->c:Lcom/cbs/app/inappbilling/IABDialogFragment$IABDialogListener;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABDialogFragment;->c:Lcom/cbs/app/inappbilling/IABDialogFragment$IABDialogListener;

    invoke-interface {v0}, Lcom/cbs/app/inappbilling/IABDialogFragment$IABDialogListener;->b()V

    .line 73
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 33
    new-instance v1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/cbs/app/inappbilling/IABDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0b00e9

    invoke-direct {v1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 34
    const v0, 0x7f03009c

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 37
    if-nez p1, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/cbs/app/inappbilling/IABDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 40
    :cond_0
    const-string v0, "main_text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/inappbilling/IABDialogFragment;->a:Ljava/lang/String;

    .line 41
    const-string v0, "dialog_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/inappbilling/IABDialogFragment;->b:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABDialogFragment;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 44
    const v0, 0x7f0f026f

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 45
    iget-object v2, p0, Lcom/cbs/app/inappbilling/IABDialogFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    const v0, 0x7f0f0270

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/cbs/app/inappbilling/IABDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/cbs/app/inappbilling/IABDialogFragment$1;-><init>(Lcom/cbs/app/inappbilling/IABDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/inappbilling/IABDialogFragment;->c:Lcom/cbs/app/inappbilling/IABDialogFragment$IABDialogListener;

    .line 78
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 79
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 63
    const-string v0, "main_text"

    iget-object v1, p0, Lcom/cbs/app/inappbilling/IABDialogFragment;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v0, "dialog_title"

    iget-object v1, p0, Lcom/cbs/app/inappbilling/IABDialogFragment;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public setListener(Lcom/cbs/app/inappbilling/IABDialogFragment$IABDialogListener;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/cbs/app/inappbilling/IABDialogFragment;->c:Lcom/cbs/app/inappbilling/IABDialogFragment$IABDialogListener;

    .line 29
    return-void
.end method
