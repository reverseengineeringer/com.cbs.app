.class public Lcom/cbs/app/view/model/rest/AuthEndpointResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x59e48a8b349cefaeL


# instance fields
.field private success:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "success"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public isSuccess()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/cbs/app/view/model/rest/AuthEndpointResponse;->success:Z

    return v0
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/cbs/app/view/model/rest/AuthEndpointResponse;->success:Z

    .line 38
    return-void
.end method
