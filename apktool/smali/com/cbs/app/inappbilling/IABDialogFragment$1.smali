.class final Lcom/cbs/app/inappbilling/IABDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/inappbilling/IABDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/inappbilling/IABDialogFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/inappbilling/IABDialogFragment;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/cbs/app/inappbilling/IABDialogFragment$1;->a:Lcom/cbs/app/inappbilling/IABDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABDialogFragment$1;->a:Lcom/cbs/app/inappbilling/IABDialogFragment;

    invoke-virtual {v0}, Lcom/cbs/app/inappbilling/IABDialogFragment;->dismiss()V

    .line 51
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABDialogFragment$1;->a:Lcom/cbs/app/inappbilling/IABDialogFragment;

    invoke-static {v0}, Lcom/cbs/app/inappbilling/IABDialogFragment;->a(Lcom/cbs/app/inappbilling/IABDialogFragment;)Lcom/cbs/app/inappbilling/IABDialogFragment$IABDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABDialogFragment$1;->a:Lcom/cbs/app/inappbilling/IABDialogFragment;

    invoke-static {v0}, Lcom/cbs/app/inappbilling/IABDialogFragment;->a(Lcom/cbs/app/inappbilling/IABDialogFragment;)Lcom/cbs/app/inappbilling/IABDialogFragment$IABDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/cbs/app/inappbilling/IABDialogFragment$IABDialogListener;->b()V

    .line 54
    :cond_0
    return-void
.end method
