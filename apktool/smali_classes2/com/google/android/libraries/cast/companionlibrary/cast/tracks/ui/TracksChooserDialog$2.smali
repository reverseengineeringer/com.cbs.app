.class final Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 80
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog$2;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog$2;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 83
    return-void
.end method
