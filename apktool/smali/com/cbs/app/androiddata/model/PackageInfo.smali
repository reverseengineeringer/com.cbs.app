.class public Lcom/cbs/app/androiddata/model/PackageInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "packageCode"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "packageStatus"
    .end annotation
.end field

.field private c:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "endDate"
    .end annotation
.end field

.field private d:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "createdDate"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "packageHoldingState"
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
.method public getCreatedDate()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/PackageInfo;->d:J

    return-wide v0
.end method

.method public getEndDate()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/PackageInfo;->c:J

    return-wide v0
.end method

.method public getPackageCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/PackageInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageHoldingState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/PackageInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/PackageInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setCreatedDate(J)V
    .locals 1

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/PackageInfo;->d:J

    .line 67
    return-void
.end method

.method public setEndDate(J)V
    .locals 1

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/PackageInfo;->c:J

    .line 51
    return-void
.end method

.method public setPackageCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/PackageInfo;->a:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setPackageHoldingState(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/PackageInfo;->e:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setPackageStatus(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/PackageInfo;->b:Ljava/lang/String;

    .line 43
    return-void
.end method
