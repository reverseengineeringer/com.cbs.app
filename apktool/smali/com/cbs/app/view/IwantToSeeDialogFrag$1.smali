.class final Lcom/cbs/app/view/IwantToSeeDialogFrag$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/IwantToSeeDialogFrag;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/IwantToSeeDialogFrag;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/IwantToSeeDialogFrag;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/cbs/app/view/IwantToSeeDialogFrag$1;->a:Lcom/cbs/app/view/IwantToSeeDialogFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cbs/app/view/IwantToSeeDialogFrag$1;->a:Lcom/cbs/app/view/IwantToSeeDialogFrag;

    invoke-static {v0}, Lcom/cbs/app/view/IwantToSeeDialogFrag;->a(Lcom/cbs/app/view/IwantToSeeDialogFrag;)Lcom/cbs/app/view/IwantToSeeDialogFrag$IwantToSeeResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/cbs/app/view/IwantToSeeDialogFrag$1;->a:Lcom/cbs/app/view/IwantToSeeDialogFrag;

    invoke-static {v0}, Lcom/cbs/app/view/IwantToSeeDialogFrag;->a(Lcom/cbs/app/view/IwantToSeeDialogFrag;)Lcom/cbs/app/view/IwantToSeeDialogFrag$IwantToSeeResponse;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/cbs/app/view/IwantToSeeDialogFrag$IwantToSeeResponse;->b(I)V

    .line 64
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/view/IwantToSeeDialogFrag$1;->a:Lcom/cbs/app/view/IwantToSeeDialogFrag;

    invoke-virtual {v0}, Lcom/cbs/app/view/IwantToSeeDialogFrag;->dismiss()V

    .line 65
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/IwantToSeeDialogFrag$1;->a:Lcom/cbs/app/view/IwantToSeeDialogFrag;

    invoke-static {v0}, Lcom/cbs/app/view/IwantToSeeDialogFrag;->b(Lcom/cbs/app/view/IwantToSeeDialogFrag;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lost focus please try again"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
