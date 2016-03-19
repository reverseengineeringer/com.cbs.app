.class public Lcom/visualon/OSMPUtils/voOSSrcBAThreshold;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private nLower:I

.field private nUpper:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v0, p0, Lcom/visualon/OSMPUtils/voOSSrcBAThreshold;->nUpper:I

    .line 9
    iput v0, p0, Lcom/visualon/OSMPUtils/voOSSrcBAThreshold;->nLower:I

    return-void
.end method


# virtual methods
.method public getLower()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSrcBAThreshold;->nLower:I

    return v0
.end method

.method public getUpper()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSrcBAThreshold;->nUpper:I

    return v0
.end method

.method public setLower(I)I
    .locals 1

    .prologue
    .line 53
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSSrcBAThreshold;->nLower:I

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public setUpper(I)I
    .locals 1

    .prologue
    .line 40
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSSrcBAThreshold;->nUpper:I

    .line 41
    const/4 v0, 0x0

    return v0
.end method
