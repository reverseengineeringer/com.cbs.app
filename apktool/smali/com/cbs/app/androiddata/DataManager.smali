.class public Lcom/cbs/app/androiddata/DataManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/cbs/app/androiddata/DataManager;


# instance fields
.field private b:Lcom/cbs/app/androiddata/DataManagerConfiguration;

.field private c:Lcom/cbs/app/androiddata/model/DeviceData;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static getInstance()Lcom/cbs/app/androiddata/DataManager;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/cbs/app/androiddata/DataManager;->a:Lcom/cbs/app/androiddata/DataManager;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/cbs/app/androiddata/DataManager;

    invoke-direct {v0}, Lcom/cbs/app/androiddata/DataManager;-><init>()V

    sput-object v0, Lcom/cbs/app/androiddata/DataManager;->a:Lcom/cbs/app/androiddata/DataManager;

    .line 26
    :cond_0
    sget-object v0, Lcom/cbs/app/androiddata/DataManager;->a:Lcom/cbs/app/androiddata/DataManager;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/cbs/app/androiddata/DataManagerConfiguration;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/cbs/app/androiddata/DataManager;->b:Lcom/cbs/app/androiddata/DataManagerConfiguration;

    .line 32
    return-void
.end method

.method public getConfiguration()Lcom/cbs/app/androiddata/DataManagerConfiguration;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/cbs/app/androiddata/DataManager;->b:Lcom/cbs/app/androiddata/DataManagerConfiguration;

    return-object v0
.end method

.method public getDeviceData()Lcom/cbs/app/androiddata/model/DeviceData;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cbs/app/androiddata/DataManager;->c:Lcom/cbs/app/androiddata/model/DeviceData;

    return-object v0
.end method

.method public setConfiguration(Lcom/cbs/app/androiddata/DataManagerConfiguration;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/cbs/app/androiddata/DataManager;->b:Lcom/cbs/app/androiddata/DataManagerConfiguration;

    .line 126
    return-void
.end method

.method public setSyncbakDeviceData(Lcom/cbs/app/androiddata/model/DeviceData;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/cbs/app/androiddata/DataManager;->c:Lcom/cbs/app/androiddata/model/DeviceData;

    .line 36
    return-void
.end method
