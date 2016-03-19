.class final Lcom/cbs/app/cast/CBSVideoCastControllerFragment$ErrorDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/cast/CBSVideoCastControllerFragment$ErrorDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$ErrorDialogFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/cast/CBSVideoCastControllerFragment$ErrorDialogFragment;)V
    .locals 0

    .prologue
    .line 691
    iput-object p1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$ErrorDialogFragment$1;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$ErrorDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 695
    invoke-static {}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d()Z

    .line 696
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$ErrorDialogFragment$1;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$ErrorDialogFragment;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$ErrorDialogFragment;->a(Lcom/cbs/app/cast/CBSVideoCastControllerFragment$ErrorDialogFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->b()V

    .line 697
    return-void
.end method
