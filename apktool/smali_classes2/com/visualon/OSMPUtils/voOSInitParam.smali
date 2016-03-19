.class public Lcom/visualon/OSMPUtils/voOSInitParam;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field Duration:J

.field FileSize:J

.field IOApiName:Ljava/lang/String;

.field IOFileName:Ljava/lang/String;

.field LibOP:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSInitParam;->LibOP:I

    .line 129
    iput-object v1, p0, Lcom/visualon/OSMPUtils/voOSInitParam;->IOFileName:Ljava/lang/String;

    .line 131
    iput-object v1, p0, Lcom/visualon/OSMPUtils/voOSInitParam;->IOApiName:Ljava/lang/String;

    .line 133
    iput-wide v2, p0, Lcom/visualon/OSMPUtils/voOSInitParam;->FileSize:J

    .line 135
    iput-wide v2, p0, Lcom/visualon/OSMPUtils/voOSInitParam;->Duration:J

    .line 136
    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/visualon/OSMPUtils/voOSInitParam;->Duration:J

    return-wide v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/visualon/OSMPUtils/voOSInitParam;->FileSize:J

    return-wide v0
.end method

.method public getIOApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSInitParam;->IOApiName:Ljava/lang/String;

    return-object v0
.end method

.method public getIOFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSInitParam;->IOFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLibOP()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSInitParam;->LibOP:I

    return v0
.end method

.method public setDuration(J)V
    .locals 1

    .prologue
    .line 117
    iput-wide p1, p0, Lcom/visualon/OSMPUtils/voOSInitParam;->Duration:J

    .line 119
    return-void
.end method

.method public setFileSize(J)V
    .locals 1

    .prologue
    .line 101
    iput-wide p1, p0, Lcom/visualon/OSMPUtils/voOSInitParam;->FileSize:J

    .line 102
    return-void
.end method

.method public setIOApiName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voOSInitParam;->IOApiName:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setIOFileName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voOSInitParam;->IOFileName:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setLibOP(I)V
    .locals 0

    .prologue
    .line 80
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSInitParam;->LibOP:I

    .line 81
    return-void
.end method
