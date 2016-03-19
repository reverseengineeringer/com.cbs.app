.class final Lcom/cbs/app/view/fragments/settings/AccountUIHelper$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/settings/AccountUIHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/cbs/app/view/fragments/settings/DoneListener;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cbs/app/view/fragments/settings/DoneListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2800
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2801
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$a;->a:Landroid/content/Context;

    .line 2802
    iput-object p2, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$a;->b:Lcom/cbs/app/view/fragments/settings/DoneListener;

    .line 2803
    iput-object p3, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$a;->c:Ljava/lang/String;

    .line 2804
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 2879
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d()Ljava/lang/String;

    .line 2881
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b()V

    .line 2882
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$a;->b:Lcom/cbs/app/view/fragments/settings/DoneListener;

    if-eqz v0, :cond_0

    .line 2883
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$a;->b:Lcom/cbs/app/view/fragments/settings/DoneListener;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$a;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/cbs/app/view/fragments/settings/DoneListener;->a(Ljava/lang/String;)V

    .line 2887
    :goto_0
    return-void

    .line 2885
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cbs/app/view/SVODPopupHelper;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2808
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d()Ljava/lang/String;

    .line 2809
    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/cbs/app/view/model/rest/HomeEndpointResponse;

    if-eqz v0, :cond_1

    .line 2810
    check-cast p1, Lcom/cbs/app/view/model/rest/HomeEndpointResponse;

    .line 2837
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/HomeEndpointResponse;->getMarqueeResponse()Lcom/cbs/app/view/model/rest/MarqueeResponse;

    move-result-object v0

    .line 2838
    if-eqz v0, :cond_3

    .line 2839
    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/MarqueeResponse;->getDeviceHomeList()Ljava/util/List;

    move-result-object v0

    .line 2840
    if-eqz v0, :cond_3

    .line 2841
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/cbs/app/view/model/DeviceHome;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cbs/app/view/model/DeviceHome;

    move-object v1, v0

    .line 2844
    :goto_0
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/HomeEndpointResponse;->getScheduleResponse()Lcom/cbs/app/view/model/rest/ScheduleResponse;

    move-result-object v0

    .line 2845
    if-eqz v0, :cond_0

    .line 2846
    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/ScheduleResponse;->getScheduleList()Ljava/util/List;

    move-result-object v0

    .line 2847
    if-eqz v0, :cond_0

    .line 2848
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/cbs/app/view/model/Episode;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cbs/app/view/model/Episode;

    move-object v2, v0

    .line 2852
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$a;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 2853
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$a;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 2854
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2855
    if-eqz v0, :cond_1

    .line 2857
    const-string v3, "homeMarquee"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 2858
    const-string v3, "episodeSchedule"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 2861
    const-string v3, "homeMarquee"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2862
    const-string v1, "episodeSchedule"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2868
    :cond_1
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b()V

    .line 2870
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$a;->b:Lcom/cbs/app/view/fragments/settings/DoneListener;

    if-eqz v0, :cond_2

    .line 2871
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$a;->b:Lcom/cbs/app/view/fragments/settings/DoneListener;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$a;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/cbs/app/view/fragments/settings/DoneListener;->a(Ljava/lang/String;)V

    .line 2875
    :goto_1
    return-void

    .line 2873
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cbs/app/view/SVODPopupHelper;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v1, v2

    goto :goto_0
.end method
