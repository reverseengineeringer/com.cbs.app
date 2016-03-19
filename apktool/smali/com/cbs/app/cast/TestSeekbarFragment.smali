.class public Lcom/cbs/app/cast/TestSeekbarFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# instance fields
.field a:Landroid/os/Handler;

.field b:I

.field private c:Lcom/cbs/app/cast/ChromecastSeekBar;

.field private d:Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;

.field private e:Ljava/util/Timer;

.field private f:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 36
    new-instance v0, Lcom/cbs/app/cast/TestSeekbarFragment$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/cast/TestSeekbarFragment$1;-><init>(Lcom/cbs/app/cast/TestSeekbarFragment;)V

    iput-object v0, p0, Lcom/cbs/app/cast/TestSeekbarFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;

    .line 92
    new-instance v0, Lcom/cbs/app/cast/TestSeekbarFragment$2;

    invoke-direct {v0, p0}, Lcom/cbs/app/cast/TestSeekbarFragment$2;-><init>(Lcom/cbs/app/cast/TestSeekbarFragment;)V

    iput-object v0, p0, Lcom/cbs/app/cast/TestSeekbarFragment;->a:Landroid/os/Handler;

    .line 130
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/cast/TestSeekbarFragment;->e:Ljava/util/Timer;

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/cbs/app/cast/TestSeekbarFragment;->b:I

    .line 133
    new-instance v0, Lcom/cbs/app/cast/TestSeekbarFragment$3;

    invoke-direct {v0, p0}, Lcom/cbs/app/cast/TestSeekbarFragment$3;-><init>(Lcom/cbs/app/cast/TestSeekbarFragment;)V

    iput-object v0, p0, Lcom/cbs/app/cast/TestSeekbarFragment;->f:Ljava/util/TimerTask;

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/cast/TestSeekbarFragment;)Lcom/cbs/app/cast/ChromecastSeekBar;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cbs/app/cast/TestSeekbarFragment;->c:Lcom/cbs/app/cast/ChromecastSeekBar;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const/4 v0, 0x1

    const v1, 0x7f0b01a4

    invoke-virtual {p0, v0, v1}, Lcom/cbs/app/cast/TestSeekbarFragment;->setStyle(II)V

    .line 56
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 167
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    .line 62
    const v0, 0x7f03004e

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 64
    invoke-virtual {p0}, Lcom/cbs/app/cast/TestSeekbarFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 65
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 66
    const-wide/16 v0, 0x0

    .line 67
    if-eqz v2, :cond_2

    .line 68
    const-string v0, "ads"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 71
    instance-of v3, v0, Lcom/cbs/app/pid/CBSAd;

    if-eqz v3, :cond_0

    .line 72
    check-cast v0, Lcom/cbs/app/pid/CBSAd;

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "ad: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cbs/app/pid/CBSAd;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " st: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/cbs/app/pid/CBSAd;->getStartTime()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " dur: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/cbs/app/pid/CBSAd;->getDuration()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    :cond_1
    const-string v0, "duration"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    move-wide v2, v0

    .line 82
    :goto_1
    const v0, 0x7f0f0164

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/cast/ChromecastSeekBar;

    iput-object v0, p0, Lcom/cbs/app/cast/TestSeekbarFragment;->c:Lcom/cbs/app/cast/ChromecastSeekBar;

    .line 84
    iget-object v0, p0, Lcom/cbs/app/cast/TestSeekbarFragment;->c:Lcom/cbs/app/cast/ChromecastSeekBar;

    long-to-int v1, v2

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/cbs/app/cast/ChromecastSeekBar;->setMax(I)V

    .line 85
    iget-object v0, p0, Lcom/cbs/app/cast/TestSeekbarFragment;->c:Lcom/cbs/app/cast/ChromecastSeekBar;

    invoke-virtual {v0, v5}, Lcom/cbs/app/cast/ChromecastSeekBar;->setAds(Ljava/util/List;)V

    .line 87
    return-object v4

    :cond_2
    move-wide v2, v0

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 173
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    .line 175
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->getVideoCastManager()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/cbs/app/cast/TestSeekbarFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b(Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;)V

    .line 178
    iget-object v0, p0, Lcom/cbs/app/cast/TestSeekbarFragment;->e:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 179
    iget-object v0, p0, Lcom/cbs/app/cast/TestSeekbarFragment;->e:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 181
    iput-object v2, p0, Lcom/cbs/app/cast/TestSeekbarFragment;->e:Ljava/util/Timer;

    .line 183
    iput-object v2, p0, Lcom/cbs/app/cast/TestSeekbarFragment;->f:Ljava/util/TimerTask;

    .line 185
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3e8

    .line 151
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 154
    iget-object v0, p0, Lcom/cbs/app/cast/TestSeekbarFragment;->c:Lcom/cbs/app/cast/ChromecastSeekBar;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/cbs/app/cast/TestSeekbarFragment;->e:Ljava/util/Timer;

    iget-object v1, p0, Lcom/cbs/app/cast/TestSeekbarFragment;->f:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 157
    :cond_0
    return-void
.end method
