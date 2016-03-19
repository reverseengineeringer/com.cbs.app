.class final Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$1;
.super Lcom/cbs/app/livetv/callbacks/SyncbakCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$1;->a:Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;

    invoke-direct {p0}, Lcom/cbs/app/livetv/callbacks/SyncbakCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$1;->a:Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$1;->a:Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->a(Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;)Z

    .line 169
    packed-switch p1, :pswitch_data_0

    .line 180
    :pswitch_0
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$1;->a:Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;

    iget-object v0, v0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$1;->a:Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;

    iget-object v0, v0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v1, 0x7dc

    invoke-interface {v0, v1, p2}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 171
    :pswitch_1
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$1;->a:Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->c(Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;)V

    .line 172
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$1;->a:Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->f(Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;)Lcom/cbs/app/livetv/widget/ContentFlipper;

    move-result-object v0

    .line 1064
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    .line 173
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$1;->a:Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->g(Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;)V

    goto :goto_0

    .line 176
    :pswitch_2
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$1;->a:Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->c(Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;)V

    .line 177
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$1;->a:Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$1;->a:Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;

    invoke-virtual {v1}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->a(Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;Landroid/content/Context;)V

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x7d6
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$1;->a:Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-static {}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->b()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onChannelsAvailabilityChecked() called with: isAvailable = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$1;->a:Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->a(Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;)Z

    .line 147
    if-eqz p1, :cond_2

    .line 148
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$1;->a:Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->b(Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;)V

    goto :goto_0

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$1;->a:Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->c(Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;)V

    .line 151
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$1;->a:Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;

    iget-object v0, v0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$1;->a:Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->d(Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$1;->a:Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;

    iget-object v0, v0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v1, 0x7dc

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 157
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$1;->a:Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;

    iget-object v0, v0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v1, 0x3ea

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$1;->a:Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;

    invoke-static {v2}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->e(Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(ZZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 190
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$1;->a:Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-static {}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->b()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onMvpdSupported() called with: isSupported = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$1;->a:Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;

    iget-object v0, v0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    if-eqz v0, :cond_0

    .line 198
    if-eqz p2, :cond_3

    .line 200
    if-nez p1, :cond_2

    .line 202
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$1;->a:Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;

    iget-object v0, v0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v1, 0x3f5

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$1;->a:Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->h(Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;)Z

    .line 206
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$1;->a:Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->i(Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;)Lcom/cbs/app/livetv/controllers/SyncbakController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->f()V

    goto :goto_0

    .line 210
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$1;->a:Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;

    iget-object v0, v0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v1, 0x3f6

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    goto :goto_0
.end method
