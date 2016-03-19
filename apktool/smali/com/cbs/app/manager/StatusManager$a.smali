.class final Lcom/cbs/app/manager/StatusManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/manager/StatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/cbs/app/manager/StatusManager$StatusResponseListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cbs/app/manager/StatusManager$StatusResponseListener;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object v0, p0, Lcom/cbs/app/manager/StatusManager$a;->a:Landroid/content/Context;

    .line 99
    iput-object v0, p0, Lcom/cbs/app/manager/StatusManager$a;->b:Lcom/cbs/app/manager/StatusManager$StatusResponseListener;

    .line 102
    iput-object p2, p0, Lcom/cbs/app/manager/StatusManager$a;->b:Lcom/cbs/app/manager/StatusManager$StatusResponseListener;

    .line 103
    iput-object p1, p0, Lcom/cbs/app/manager/StatusManager$a;->a:Landroid/content/Context;

    .line 104
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cbs/app/manager/StatusManager;->b:Z

    .line 149
    iget-object v0, p0, Lcom/cbs/app/manager/StatusManager$a;->b:Lcom/cbs/app/manager/StatusManager$StatusResponseListener;

    invoke-interface {v0}, Lcom/cbs/app/manager/StatusManager$StatusResponseListener;->b()V

    .line 150
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 108
    instance-of v0, p1, Lcom/cbs/app/view/model/rest/StatusEndpointResponse;

    if-eqz v0, :cond_4

    .line 109
    check-cast p1, Lcom/cbs/app/view/model/rest/StatusEndpointResponse;

    .line 111
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/StatusEndpointResponse;->getStatus()Lcom/cbs/app/view/model/Status;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lcom/cbs/app/view/model/Status;->isUpgradeAvailable()Z

    move-result v1

    .line 114
    invoke-virtual {v0}, Lcom/cbs/app/view/model/Status;->isActive()Z

    move-result v0

    .line 116
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/cbs/app/manager/StatusManager$a;->b:Lcom/cbs/app/manager/StatusManager$StatusResponseListener;

    invoke-interface {v0}, Lcom/cbs/app/manager/StatusManager$StatusResponseListener;->c()V

    .line 133
    :goto_0
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/StatusEndpointResponse;->getAppConfig()Lcom/cbs/app/view/model/AppConfig;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Lcom/cbs/app/view/model/AppConfig;->getAdServerOverride()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/manager/StatusManager;->a:Ljava/lang/String;

    .line 143
    :cond_0
    :goto_1
    sput-boolean v2, Lcom/cbs/app/manager/StatusManager;->b:Z

    .line 144
    return-void

    .line 119
    :cond_1
    if-nez v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/cbs/app/manager/StatusManager$a;->b:Lcom/cbs/app/manager/StatusManager$StatusResponseListener;

    invoke-interface {v0}, Lcom/cbs/app/manager/StatusManager$StatusResponseListener;->d()V

    goto :goto_0

    .line 122
    :cond_2
    if-eqz v1, :cond_3

    .line 124
    iget-object v0, p0, Lcom/cbs/app/manager/StatusManager$a;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;Z)V

    .line 125
    iget-object v0, p0, Lcom/cbs/app/manager/StatusManager$a;->b:Lcom/cbs/app/manager/StatusManager$StatusResponseListener;

    invoke-interface {v0}, Lcom/cbs/app/manager/StatusManager$StatusResponseListener;->a()V

    goto :goto_0

    .line 127
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/manager/StatusManager$a;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;Z)V

    .line 128
    iget-object v0, p0, Lcom/cbs/app/manager/StatusManager$a;->b:Lcom/cbs/app/manager/StatusManager$StatusResponseListener;

    invoke-interface {v0}, Lcom/cbs/app/manager/StatusManager$StatusResponseListener;->a()V

    goto :goto_0

    .line 141
    :cond_4
    iget-object v0, p0, Lcom/cbs/app/manager/StatusManager$a;->b:Lcom/cbs/app/manager/StatusManager$StatusResponseListener;

    invoke-interface {v0}, Lcom/cbs/app/manager/StatusManager$StatusResponseListener;->b()V

    goto :goto_1
.end method
