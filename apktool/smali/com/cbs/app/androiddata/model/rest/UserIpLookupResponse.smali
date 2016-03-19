.class public Lcom/cbs/app/androiddata/model/rest/UserIpLookupResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/UserIpLookupResponse;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/UserIpLookupResponse;->b:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/rest/UserIpLookupResponse;->a:Z

    .line 22
    return-void
.end method
