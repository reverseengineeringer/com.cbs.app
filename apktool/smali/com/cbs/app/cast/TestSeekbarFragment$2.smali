.class final Lcom/cbs/app/cast/TestSeekbarFragment$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/cast/TestSeekbarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/cast/TestSeekbarFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/cast/TestSeekbarFragment;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/cbs/app/cast/TestSeekbarFragment$2;->a:Lcom/cbs/app/cast/TestSeekbarFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 95
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleMessage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    iget-object v0, p0, Lcom/cbs/app/cast/TestSeekbarFragment$2;->a:Lcom/cbs/app/cast/TestSeekbarFragment;

    invoke-static {v0}, Lcom/cbs/app/cast/TestSeekbarFragment;->a(Lcom/cbs/app/cast/TestSeekbarFragment;)Lcom/cbs/app/cast/ChromecastSeekBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 102
    :pswitch_0
    iget-object v0, p0, Lcom/cbs/app/cast/TestSeekbarFragment$2;->a:Lcom/cbs/app/cast/TestSeekbarFragment;

    invoke-static {v0}, Lcom/cbs/app/cast/TestSeekbarFragment;->a(Lcom/cbs/app/cast/TestSeekbarFragment;)Lcom/cbs/app/cast/ChromecastSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/cast/ChromecastSeekBar;->getProgress()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/cbs/app/cast/TestSeekbarFragment$2;->a:Lcom/cbs/app/cast/TestSeekbarFragment;

    invoke-static {v2}, Lcom/cbs/app/cast/TestSeekbarFragment;->a(Lcom/cbs/app/cast/TestSeekbarFragment;)Lcom/cbs/app/cast/ChromecastSeekBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cbs/app/cast/ChromecastSeekBar;->getMax()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 104
    iget-object v1, p0, Lcom/cbs/app/cast/TestSeekbarFragment$2;->a:Lcom/cbs/app/cast/TestSeekbarFragment;

    invoke-static {v1}, Lcom/cbs/app/cast/TestSeekbarFragment;->a(Lcom/cbs/app/cast/TestSeekbarFragment;)Lcom/cbs/app/cast/ChromecastSeekBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cbs/app/cast/ChromecastSeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/cbs/app/cast/TestSeekbarFragment$2;->a:Lcom/cbs/app/cast/TestSeekbarFragment;

    invoke-static {v1}, Lcom/cbs/app/cast/TestSeekbarFragment;->a(Lcom/cbs/app/cast/TestSeekbarFragment;)Lcom/cbs/app/cast/ChromecastSeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cbs/app/cast/ChromecastSeekBar;->setProgress(I)V

    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/cast/TestSeekbarFragment$2;->a:Lcom/cbs/app/cast/TestSeekbarFragment;

    invoke-static {v0}, Lcom/cbs/app/cast/TestSeekbarFragment;->a(Lcom/cbs/app/cast/TestSeekbarFragment;)Lcom/cbs/app/cast/ChromecastSeekBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/cbs/app/cast/ChromecastSeekBar;->setProgress(I)V

    goto :goto_0

    .line 115
    :pswitch_1
    iget-object v0, p0, Lcom/cbs/app/cast/TestSeekbarFragment$2;->a:Lcom/cbs/app/cast/TestSeekbarFragment;

    invoke-static {v0}, Lcom/cbs/app/cast/TestSeekbarFragment;->a(Lcom/cbs/app/cast/TestSeekbarFragment;)Lcom/cbs/app/cast/ChromecastSeekBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/cbs/app/cast/ChromecastSeekBar;->setEnabled(Z)V

    goto :goto_0

    .line 119
    :pswitch_2
    iget-object v0, p0, Lcom/cbs/app/cast/TestSeekbarFragment$2;->a:Lcom/cbs/app/cast/TestSeekbarFragment;

    invoke-static {v0}, Lcom/cbs/app/cast/TestSeekbarFragment;->a(Lcom/cbs/app/cast/TestSeekbarFragment;)Lcom/cbs/app/cast/ChromecastSeekBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cbs/app/cast/ChromecastSeekBar;->setEnabled(Z)V

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
