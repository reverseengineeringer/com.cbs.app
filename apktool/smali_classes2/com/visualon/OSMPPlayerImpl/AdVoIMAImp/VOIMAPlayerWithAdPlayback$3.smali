.class Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer$PlayerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->init(Lcom/visualon/OSMPPlayer/VOCommonPlayer;Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$3;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 207
    const-string v0, "@@@VOIMAPlayerWithAdPlayback"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mIsAdDisplayed  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$3;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mIsAdDisplayed:Z
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$3;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mIsAdDisplayed:Z
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$3;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mAdCallbacks:Ljava/util/List;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->access$200(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/a/d$a;

    .line 210
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/a/d$a;->d()V

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$3;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mOnContentCompleteListener:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$OnContentCompleteListener;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->access$300(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;)Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$OnContentCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$3;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mOnContentCompleteListener:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$OnContentCompleteListener;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->access$300(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;)Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$OnContentCompleteListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$OnContentCompleteListener;->onContentComplete()V

    .line 217
    :cond_1
    const-string v0, "@@@VOIMAPlayerWithAdPlayback"

    const-string v1, "onCompleted mIsContentComplete becomes to true\n"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$3;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    # setter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mIsContentComplete:Z
    invoke-static {v0, v4}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->access$402(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;Z)Z

    .line 219
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$3;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    iget-boolean v0, v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mbUsedContendEnd:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$3;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mIsContentComplete:Z
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->access$400(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$3;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mIsSendWholeEnd:Z
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->access$500(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 222
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$3;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    invoke-virtual {v0, v4}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->setAdsComplete(Z)V

    .line 225
    :cond_2
    return-void
.end method

.method public onError()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$3;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mIsAdDisplayed:Z
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$3;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mAdCallbacks:Ljava/util/List;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->access$200(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/a/d$a;

    .line 200
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/a/d$a;->e()V

    goto :goto_0

    .line 203
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$3;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mIsAdDisplayed:Z
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$3;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mAdCallbacks:Ljava/util/List;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->access$200(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/a/d$a;

    .line 182
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/a/d$a;->b()V

    goto :goto_0

    .line 185
    :cond_0
    return-void
.end method

.method public onPlay()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$3;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mIsAdDisplayed:Z
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$3;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mAdCallbacks:Ljava/util/List;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->access$200(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/a/d$a;

    .line 173
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/a/d$a;->a()V

    goto :goto_0

    .line 176
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$3;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mIsAdDisplayed:Z
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$3;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mAdCallbacks:Ljava/util/List;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->access$200(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/a/d$a;

    .line 191
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/a/d$a;->c()V

    goto :goto_0

    .line 194
    :cond_0
    return-void
.end method
