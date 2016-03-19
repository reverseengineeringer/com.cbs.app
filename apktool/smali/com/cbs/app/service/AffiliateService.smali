.class public Lcom/cbs/app/service/AffiliateService;
.super Lcom/cbs/app/service/CBSBaseService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/cbs/app/service/CBSBaseService;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Lcom/cbs/app/androiddata/ResponseModel;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "/ext/v2.0/cbs/affiliate/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".json"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    const-class v4, Lcom/cbs/app/view/model/rest/AffiliateEndpointResponse;

    .line 1200
    invoke-static {p1, v3, v0}, Lcom/cbs/app/service/CBSBaseService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1202
    const-wide/16 v6, 0xe10

    move-object v0, p1

    move v5, v1

    move v8, v1

    invoke-static/range {v0 .. v8}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;ZLjava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;Ljava/lang/Class;ZJZ)Lcom/cbs/app/androiddata/ResponseModel;

    move-result-object v0

    .line 21
    return-object v0
.end method
