.class final Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog$3;
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
    .line 64
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog$3;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog$3;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;

    invoke-static {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;)Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a;->a()Lcom/google/android/gms/cast/h;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lcom/google/android/gms/cast/h;->a()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 70
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog$3;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;

    invoke-static {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->b(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;)Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a;->a()Lcom/google/android/gms/cast/h;

    move-result-object v1

    .line 73
    if-eqz v1, :cond_1

    .line 74
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog$3;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;

    invoke-static {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->c(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;)Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Ljava/util/List;)V

    .line 77
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog$3;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 78
    return-void
.end method
