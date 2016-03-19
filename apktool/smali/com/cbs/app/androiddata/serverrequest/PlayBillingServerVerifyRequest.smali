.class public Lcom/cbs/app/androiddata/serverrequest/PlayBillingServerVerifyRequest;
.super Lcom/cbs/app/androiddata/serverrequest/BaseServerRequest;
.source "SourceFile"


# virtual methods
.method public getHttpMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "POST"

    return-object v0
.end method

.method public getMappingClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/cbs/app/androiddata/ResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    const-class v0, Lcom/cbs/app/androiddata/model/rest/PlayBillingResponse;

    return-object v0
.end method

.method public getPostBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cbs/app/androiddata/serverrequest/PlayBillingServerVerifyRequest;->b:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/cbs/app/androiddata/Util;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPostBodyMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "application/x-www-form-urlencoded"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cbs/app/androiddata/serverrequest/PlayBillingServerVerifyRequest;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/apps-api/v2.0/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/androiddata/serverrequest/PlayBillingServerVerifyRequest;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/googleplay/purchase.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
