.class public Lcom/cbs/app/service/HomeServiceImpl;
.super Lcom/cbs/app/service/CBSBaseService;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/service/HomeService;


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:[Lcom/cbs/app/view/model/DeviceHome;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/cbs/app/service/HomeService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/service/HomeServiceImpl;->b:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/cbs/app/service/HomeServiceImpl;->c:[Lcom/cbs/app/view/model/DeviceHome;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/cbs/app/service/CBSBaseService;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V
    .locals 6

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/home.json?userState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&includeAssets=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 22
    const-string v2, "v3.0"

    const-class v5, Lcom/cbs/app/view/model/rest/HomeEndpointResponse;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/cbs/app/service/HomeServiceImpl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;Ljava/lang/Class;)V

    .line 25
    return-void
.end method

.method public getHomePhotoData()[Lcom/cbs/app/view/model/DeviceHome;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/cbs/app/service/HomeServiceImpl;->c:[Lcom/cbs/app/view/model/DeviceHome;

    return-object v0
.end method

.method public setHomePhotoData([Lcom/cbs/app/view/model/DeviceHome;)V
    .locals 2

    .prologue
    .line 32
    if-eqz p1, :cond_0

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Home Photo list NOT null : size :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    :cond_0
    sput-object p1, Lcom/cbs/app/service/HomeServiceImpl;->c:[Lcom/cbs/app/view/model/DeviceHome;

    .line 36
    return-void
.end method
