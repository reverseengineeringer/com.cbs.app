.class public Lcom/cbs/app/view/model/registration/PackageInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private createdDate:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "createdDate"
    .end annotation
.end field

.field private endDate:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "endDate"
    .end annotation
.end field

.field private packageCode:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "packageCode"
    .end annotation
.end field

.field private packageHoldingState:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "packageHoldingState"
    .end annotation
.end field

.field private packageStatus:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "packageStatus"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreatedDate()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/cbs/app/view/model/registration/PackageInfo;->createdDate:J

    return-wide v0
.end method

.method public getEndDate()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/cbs/app/view/model/registration/PackageInfo;->endDate:J

    return-wide v0
.end method

.method public getPackageCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cbs/app/view/model/registration/PackageInfo;->packageCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageHoldingState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cbs/app/view/model/registration/PackageInfo;->packageHoldingState:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cbs/app/view/model/registration/PackageInfo;->packageStatus:Ljava/lang/String;

    return-object v0
.end method

.method public setCreatedDate(J)V
    .locals 1

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/cbs/app/view/model/registration/PackageInfo;->createdDate:J

    .line 69
    return-void
.end method

.method public setEndDate(J)V
    .locals 1

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/cbs/app/view/model/registration/PackageInfo;->endDate:J

    .line 53
    return-void
.end method

.method public setPackageCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/cbs/app/view/model/registration/PackageInfo;->packageCode:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setPackageHoldingState(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/cbs/app/view/model/registration/PackageInfo;->packageHoldingState:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setPackageStatus(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/cbs/app/view/model/registration/PackageInfo;->packageStatus:Ljava/lang/String;

    .line 45
    return-void
.end method
