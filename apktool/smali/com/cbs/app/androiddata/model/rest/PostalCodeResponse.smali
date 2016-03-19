.class public Lcom/cbs/app/androiddata/model/rest/PostalCodeResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/rest/PostalCodeResponse;->a:Z

    .line 19
    return-void
.end method
