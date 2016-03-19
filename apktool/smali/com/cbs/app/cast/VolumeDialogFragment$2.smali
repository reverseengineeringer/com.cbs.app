.class final Lcom/cbs/app/cast/VolumeDialogFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/cast/VolumeDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

.field final synthetic b:Lcom/cbs/app/cast/VolumeDialogFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/cast/VolumeDialogFragment;Lcom/google/android/libraries/cast/companionlibrary/cast/c;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/cbs/app/cast/VolumeDialogFragment$2;->b:Lcom/cbs/app/cast/VolumeDialogFragment;

    iput-object p2, p0, Lcom/cbs/app/cast/VolumeDialogFragment$2;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    .prologue
    .line 89
    iget-object v0, p0, Lcom/cbs/app/cast/VolumeDialogFragment$2;->b:Lcom/cbs/app/cast/VolumeDialogFragment;

    iput-boolean p3, v0, Lcom/cbs/app/cast/VolumeDialogFragment;->a:Z

    .line 90
    if-eqz p3, :cond_0

    .line 91
    int-to-float v0, p2

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/cbs/app/cast/VolumeDialogFragment$2;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    float-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/cbs/app/cast/VolumeDialogFragment$2;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    float-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/cast/VolumeDialogFragment$2;->b:Lcom/cbs/app/cast/VolumeDialogFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/cbs/app/cast/VolumeDialogFragment;->a:Z

    .line 114
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
