.class public Lcom/cbs/app/service/TonightServiceImpl;
.super Lcom/cbs/app/service/CBSBaseService;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/service/TonightService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/cbs/app/service/CBSBaseService;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/cbs/app/androiddata/ResponseModelListener;)V
    .locals 6

    .prologue
    .line 11
    const-string v3, "/tonight.json"

    .line 12
    const-string v2, "v2.0"

    const-class v5, Lcom/cbs/app/view/model/rest/TonightEndpointResponse;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/cbs/app/service/TonightServiceImpl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;Ljava/lang/Class;)V

    .line 14
    return-void
.end method
