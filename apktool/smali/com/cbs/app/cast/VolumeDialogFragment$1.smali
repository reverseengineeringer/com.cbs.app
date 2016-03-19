.class final Lcom/cbs/app/cast/VolumeDialogFragment$1;
.super Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/cast/VolumeDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/cast/VolumeDialogFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/cast/VolumeDialogFragment;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/cbs/app/cast/VolumeDialogFragment$1;->a:Lcom/cbs/app/cast/VolumeDialogFragment;

    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(DZ)V
    .locals 5

    .prologue
    .line 34
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;->a(DZ)V

    .line 35
    iget-object v0, p0, Lcom/cbs/app/cast/VolumeDialogFragment$1;->a:Lcom/cbs/app/cast/VolumeDialogFragment;

    iget-boolean v0, v0, Lcom/cbs/app/cast/VolumeDialogFragment;->a:Z

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/cbs/app/cast/VolumeDialogFragment$1;->a:Lcom/cbs/app/cast/VolumeDialogFragment;

    invoke-static {v0}, Lcom/cbs/app/cast/VolumeDialogFragment;->a(Lcom/cbs/app/cast/VolumeDialogFragment;)Landroid/widget/SeekBar;

    move-result-object v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 38
    :cond_0
    return-void
.end method

.method public final c(I)V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;->c(I)V

    .line 44
    iget-object v0, p0, Lcom/cbs/app/cast/VolumeDialogFragment$1;->a:Lcom/cbs/app/cast/VolumeDialogFragment;

    invoke-virtual {v0}, Lcom/cbs/app/cast/VolumeDialogFragment;->dismiss()V

    .line 45
    return-void
.end method
