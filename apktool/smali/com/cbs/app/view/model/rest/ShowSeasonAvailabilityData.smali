.class public Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityData;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x522622a23c0b0f51L


# instance fields
.field private action:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "action"
    .end annotation
.end field

.field private itemCount:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "itemCount"
    .end annotation
.end field

.field private resultSize:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "resultSize"
    .end annotation
.end field

.field private seasonAvailabilityItems:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "itemList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityData;->itemCount:I

    return v0
.end method

.method public getResultSize()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityData;->resultSize:I

    return v0
.end method

.method public getSeasonAvailabilityItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityData;->seasonAvailabilityItems:Ljava/util/List;

    return-object v0
.end method

.method public setItemCount(I)V
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityData;->itemCount:I

    .line 35
    return-void
.end method

.method public setResultSize(I)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityData;->resultSize:I

    .line 43
    return-void
.end method

.method public setSeasonAvailabilityItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityData;->seasonAvailabilityItems:Ljava/util/List;

    .line 51
    return-void
.end method
