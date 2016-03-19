.class public Lcom/cbs/app/cast/VolumeDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# instance fields
.field a:Z

.field private b:Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;

.field private c:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 31
    new-instance v0, Lcom/cbs/app/cast/VolumeDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/cast/VolumeDialogFragment$1;-><init>(Lcom/cbs/app/cast/VolumeDialogFragment;)V

    iput-object v0, p0, Lcom/cbs/app/cast/VolumeDialogFragment;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/cast/VolumeDialogFragment;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cbs/app/cast/VolumeDialogFragment;->c:Landroid/widget/SeekBar;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const/4 v0, 0x1

    const v1, 0x7f0b01a4

    invoke-virtual {p0, v0, v1}, Lcom/cbs/app/cast/VolumeDialogFragment;->setStyle(II)V

    .line 58
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    .line 64
    const v0, 0x7f03004d

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 66
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->getVideoCastManager()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v5

    .line 68
    iget-object v0, p0, Lcom/cbs/app/cast/VolumeDialogFragment;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;

    invoke-virtual {v5, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;)V

    .line 70
    const-wide/16 v0, 0x0

    .line 72
    :try_start_0
    invoke-virtual {v5}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->K()D
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/a; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v0

    move-wide v2, v0

    .line 81
    :goto_0
    const v0, 0x7f0f0164

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/cbs/app/cast/VolumeDialogFragment;->c:Landroid/widget/SeekBar;

    .line 82
    iget-object v0, p0, Lcom/cbs/app/cast/VolumeDialogFragment;->c:Landroid/widget/SeekBar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 83
    iget-object v0, p0, Lcom/cbs/app/cast/VolumeDialogFragment;->c:Landroid/widget/SeekBar;

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 85
    iget-object v0, p0, Lcom/cbs/app/cast/VolumeDialogFragment;->c:Landroid/widget/SeekBar;

    new-instance v1, Lcom/cbs/app/cast/VolumeDialogFragment$2;

    invoke-direct {v1, p0, v5}, Lcom/cbs/app/cast/VolumeDialogFragment$2;-><init>(Lcom/cbs/app/cast/VolumeDialogFragment;Lcom/google/android/libraries/cast/companionlibrary/cast/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 117
    return-object v4

    .line 73
    :catch_0
    move-exception v2

    .line 74
    const-string v3, "VolumeDialogFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "transientNetworkDisconnectionException: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/b/d;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v0

    .line 79
    goto :goto_0

    .line 75
    :catch_1
    move-exception v2

    .line 76
    const-string v3, "VolumeDialogFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "noConnectionException: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/b/b;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v0

    .line 79
    goto :goto_0

    .line 77
    :catch_2
    move-exception v2

    .line 78
    const-string v3, "VolumeDialogFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "CastException: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/b/a;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    .line 137
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->getVideoCastManager()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/cbs/app/cast/VolumeDialogFragment;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b(Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;)V

    .line 140
    return-void
.end method
