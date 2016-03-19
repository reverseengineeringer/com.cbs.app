.class public Lcom/cbs/app/androiddata/model/rest/AuthEndpointResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private a:Z
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
.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/rest/AuthEndpointResponse;->a:Z

    .line 38
    return-void
.end method
