.class final Lcom/cbs/app/view/SplashActivity2$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/SplashActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/SplashActivity2;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/SplashActivity2;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/cbs/app/view/SplashActivity2$4;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$4;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-static {v0}, Lcom/cbs/app/view/SplashActivity2;->a(Lcom/cbs/app/view/SplashActivity2;)Z

    .line 184
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 5

    .prologue
    .line 148
    instance-of v0, p1, Lcom/cbs/app/view/model/rest/HomeEndpointResponse;

    if-eqz v0, :cond_4

    .line 149
    check-cast p1, Lcom/cbs/app/view/model/rest/HomeEndpointResponse;

    .line 151
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/HomeEndpointResponse;->getMarqueeResponse()Lcom/cbs/app/view/model/rest/MarqueeResponse;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/MarqueeResponse;->getDeviceHomeList()Ljava/util/List;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_0

    .line 155
    iget-object v1, p0, Lcom/cbs/app/view/SplashActivity2$4;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/cbs/app/view/model/DeviceHome;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cbs/app/view/model/DeviceHome;

    invoke-static {v1, v0}, Lcom/cbs/app/view/SplashActivity2;->a(Lcom/cbs/app/view/SplashActivity2;[Lcom/cbs/app/view/model/DeviceHome;)[Lcom/cbs/app/view/model/DeviceHome;

    .line 158
    :cond_0
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/HomeEndpointResponse;->getScheduleResponse()Lcom/cbs/app/view/model/rest/ScheduleResponse;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/ScheduleResponse;->getScheduleList()Ljava/util/List;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_1

    .line 162
    iget-object v1, p0, Lcom/cbs/app/view/SplashActivity2$4;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/cbs/app/view/model/Episode;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cbs/app/view/model/Episode;

    invoke-static {v1, v0}, Lcom/cbs/app/view/SplashActivity2;->a(Lcom/cbs/app/view/SplashActivity2;[Lcom/cbs/app/view/model/Episode;)[Lcom/cbs/app/view/model/Episode;

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$4;->a:Lcom/cbs/app/view/SplashActivity2;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cbs/app/view/SplashActivity2;->b:Z

    .line 166
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$4;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 167
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$4;->a:Lcom/cbs/app/view/SplashActivity2;

    iget-object v1, p0, Lcom/cbs/app/view/SplashActivity2$4;->a:Lcom/cbs/app/view/SplashActivity2;

    .line 2017
    new-instance v2, Lcom/cbs/app/service/MyCBSService;

    invoke-direct {v2}, Lcom/cbs/app/service/MyCBSService;-><init>()V

    .line 2018
    new-instance v3, Lcom/cbs/app/view/SplashActivity2$3;

    invoke-direct {v3, v0, v1}, Lcom/cbs/app/view/SplashActivity2$3;-><init>(Lcom/cbs/app/view/SplashActivity2;Landroid/content/Context;)V

    invoke-virtual {v2, v1, v3}, Lcom/cbs/app/service/MyCBSService;->a(Landroid/content/Context;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 177
    :cond_2
    :goto_0
    return-void

    .line 169
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$4;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-virtual {v0}, Lcom/cbs/app/view/SplashActivity2;->b()V

    goto :goto_0

    .line 173
    :cond_4
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$4;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-static {v0}, Lcom/cbs/app/view/SplashActivity2;->a(Lcom/cbs/app/view/SplashActivity2;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$4;->a:Lcom/cbs/app/view/SplashActivity2;

    const-string v1, "Refresh"

    iget-object v2, p0, Lcom/cbs/app/view/SplashActivity2$4;->a:Lcom/cbs/app/view/SplashActivity2;

    iget-object v2, v2, Lcom/cbs/app/view/SplashActivity2;->j:Landroid/content/DialogInterface$OnClickListener;

    const-string v3, "Exit"

    iget-object v4, p0, Lcom/cbs/app/view/SplashActivity2$4;->a:Lcom/cbs/app/view/SplashActivity2;

    iget-object v4, v4, Lcom/cbs/app/view/SplashActivity2;->e:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cbs/app/view/UnableToConnectDialogHelper;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method
