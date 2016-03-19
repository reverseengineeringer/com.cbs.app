.class final Lcom/cbs/app/view/fragments/TOUDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/TOUDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/TOUDialogFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/TOUDialogFragment;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/cbs/app/view/fragments/TOUDialogFragment$1;->a:Lcom/cbs/app/view/fragments/TOUDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/cbs/app/view/fragments/TOUDialogFragment$1;->a:Lcom/cbs/app/view/fragments/TOUDialogFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/TOUDialogFragment;->a(Lcom/cbs/app/view/fragments/TOUDialogFragment;)V

    .line 57
    :cond_0
    return-void
.end method
