.class final Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog$1;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog$1;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 89
    return-void
.end method
