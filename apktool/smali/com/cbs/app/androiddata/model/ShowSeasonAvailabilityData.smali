.class public Lcom/cbs/app/androiddata/model/ShowSeasonAvailabilityData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private a:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "itemCount"
    .end annotation
.end field

.field private b:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "resultSize"
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "itemList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/ShowSeasonAvailabilityItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/cbs/app/androiddata/model/ShowSeasonAvailabilityData;->a:I

    return v0
.end method

.method public getResultSize()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/cbs/app/androiddata/model/ShowSeasonAvailabilityData;->b:I

    return v0
.end method

.method public getSeasonAvailabilityItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/ShowSeasonAvailabilityItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowSeasonAvailabilityData;->c:Ljava/util/List;

    return-object v0
.end method

.method public setItemCount(I)V
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lcom/cbs/app/androiddata/model/ShowSeasonAvailabilityData;->a:I

    .line 31
    return-void
.end method

.method public setResultSize(I)V
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/cbs/app/androiddata/model/ShowSeasonAvailabilityData;->b:I

    .line 39
    return-void
.end method

.method public setSeasonAvailabilityItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/ShowSeasonAvailabilityItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowSeasonAvailabilityData;->c:Ljava/util/List;

    .line 47
    return-void
.end method
