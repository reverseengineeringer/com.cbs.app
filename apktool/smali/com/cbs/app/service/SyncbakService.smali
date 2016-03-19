.class public final Lcom/cbs/app/service/SyncbakService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const-class v0, Lcom/cbs/app/service/SyncbakService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/service/SyncbakService;->b:Ljava/lang/String;

    .line 90
    const-string v0, "http://cbsservice.aws.syncbak.com"

    sput-object v0, Lcom/cbs/app/service/SyncbakService;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/cbs/app/androiddata/ResponseModel;
    .locals 3

    .prologue
    .line 173
    const-string v0, "/v3/channels"

    const/4 v1, 0x0

    const-class v2, Lcom/cbs/app/view/model/rest/syncbak/SyncbakChannelsEndpointResponse;

    invoke-static {p0, v0, v1, v2}, Lcom/cbs/app/service/SyncbakService;->b(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;Ljava/lang/Class;)Lcom/cbs/app/androiddata/ResponseModel;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;IJI)Lcom/cbs/app/androiddata/ResponseModel;
    .locals 4

    .prologue
    .line 190
    const-wide/16 v0, 0x3e8

    div-long v0, p2, v0

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/v3/schedule?stationId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&startTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    const/4 v1, 0x0

    const-class v2, Lcom/cbs/app/view/model/rest/syncbak/SyncbakScheduleEndpointResponse;

    invoke-static {p0, v0, v1, v2}, Lcom/cbs/app/service/SyncbakService;->b(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;Ljava/lang/Class;)Lcom/cbs/app/androiddata/ResponseModel;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;IILcom/cbs/app/androiddata/ResponseModelListener;)V
    .locals 2

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/v3/streams?stationId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&mediaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    const-class v1, Lcom/cbs/app/view/model/rest/syncbak/SyncbakStreamsEndpointResponse;

    invoke-static {p0, v0, p3, v1}, Lcom/cbs/app/service/SyncbakService;->a(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;Ljava/lang/Class;)V

    .line 131
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/cbs/app/androiddata/ResponseModelListener;)V
    .locals 2

    .prologue
    .line 100
    const-string v0, "/v3/channels"

    const-class v1, Lcom/cbs/app/view/model/rest/syncbak/SyncbakChannelsEndpointResponse;

    invoke-static {p0, v0, p1, v1}, Lcom/cbs/app/service/SyncbakService;->a(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;Ljava/lang/Class;)V

    .line 101
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;Ljava/lang/Class;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/cbs/app/androiddata/ResponseModelListener;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/cbs/app/view/model/rest/syncbak/SyncbakEndpointResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/cbs/app/service/SyncbakService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 149
    const/4 v2, 0x0

    const-string v3, "GET"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0xe10

    const/4 v12, 0x1

    move-object v1, p0

    move-object v7, p2

    move-object/from16 v8, p3

    invoke-static/range {v1 .. v12}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;Ljava/lang/Class;ZJZ)V

    .line 153
    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/cbs/app/androiddata/ResponseModel;
    .locals 3

    .prologue
    .line 178
    const-string v0, "/v3/mvpds"

    const/4 v1, 0x0

    const-class v2, Lcom/cbs/app/view/model/rest/syncbak/SyncbakMvpdLocationEndpointResponse;

    invoke-static {p0, v0, v1, v2}, Lcom/cbs/app/service/SyncbakService;->b(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;Ljava/lang/Class;)Lcom/cbs/app/androiddata/ResponseModel;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;Ljava/lang/Class;)Lcom/cbs/app/androiddata/ResponseModel;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/cbs/app/androiddata/ResponseModelListener;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/cbs/app/view/model/rest/syncbak/SyncbakEndpointResponse;",
            ">;)",
            "Lcom/cbs/app/androiddata/ResponseModel;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cbs/app/service/SyncbakService;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 167
    const/4 v3, 0x0

    const-wide/16 v6, 0xe10

    const/4 v8, 0x1

    move-object v0, p0

    move-object v4, p3

    move v5, v1

    invoke-static/range {v0 .. v8}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;ZLjava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;Ljava/lang/Class;ZJZ)Lcom/cbs/app/androiddata/ResponseModel;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Lcom/cbs/app/androiddata/ResponseModelListener;)V
    .locals 2

    .prologue
    .line 105
    const-string v0, "/v3/mvpds"

    const-class v1, Lcom/cbs/app/view/model/rest/syncbak/SyncbakMvpdLocationEndpointResponse;

    invoke-static {p0, v0, p1, v1}, Lcom/cbs/app/service/SyncbakService;->a(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;Ljava/lang/Class;)V

    .line 106
    return-void
.end method
