.class public Lcom/cbs/app/view/model/rest/ShowAssetResponseV2;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x62b13fb49c5125beL


# instance fields
.field private showAssets:Lcom/cbs/app/view/model/AssetFilePathMap;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "results"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getShowAssets()Lcom/cbs/app/view/model/AssetFilePathMap;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/ShowAssetResponseV2;->showAssets:Lcom/cbs/app/view/model/AssetFilePathMap;

    return-object v0
.end method

.method public setShowAssets(Lcom/cbs/app/view/model/AssetFilePathMap;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/ShowAssetResponseV2;->showAssets:Lcom/cbs/app/view/model/AssetFilePathMap;

    .line 27
    return-void
.end method
