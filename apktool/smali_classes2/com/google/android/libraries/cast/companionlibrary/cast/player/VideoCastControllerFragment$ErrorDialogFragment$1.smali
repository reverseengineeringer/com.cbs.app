.class final Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$ErrorDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$ErrorDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$ErrorDialogFragment;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$ErrorDialogFragment;)V
    .locals 0

    .prologue
    .line 592
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$ErrorDialogFragment$1;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$ErrorDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 596
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->e()Z

    .line 597
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$ErrorDialogFragment$1;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$ErrorDialogFragment;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$ErrorDialogFragment;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$ErrorDialogFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->b()V

    .line 598
    return-void
.end method
