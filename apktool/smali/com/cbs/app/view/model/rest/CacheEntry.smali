.class public Lcom/cbs/app/view/model/rest/CacheEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private entered:J

.field private responseModel:Lcom/cbs/app/view/model/rest/ResponseModel;

.field private showIfExpired:Z

.field size:I

.field private timeToLive:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/cbs/app/view/model/rest/CacheEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/model/rest/CacheEntry;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cbs/app/view/model/rest/CacheEntry;-><init>(Lcom/cbs/app/view/model/rest/ResponseModel;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/cbs/app/view/model/rest/ResponseModel;)V
    .locals 4

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/cbs/app/view/model/rest/CacheEntry;->size:I

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cbs/app/view/model/rest/CacheEntry;->entered:J

    .line 29
    const-wide/16 v0, 0xe10

    iput-wide v0, p0, Lcom/cbs/app/view/model/rest/CacheEntry;->timeToLive:J

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/model/rest/CacheEntry;->showIfExpired:Z

    .line 40
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/CacheEntry;->responseModel:Lcom/cbs/app/view/model/rest/ResponseModel;

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/cbs/app/view/model/rest/CacheEntry;->entered:J

    .line 42
    return-void
.end method


# virtual methods
.method public getEntered()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/cbs/app/view/model/rest/CacheEntry;->entered:J

    return-wide v0
.end method

.method public getResponseModel()Lcom/cbs/app/view/model/rest/ResponseModel;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/CacheEntry;->responseModel:Lcom/cbs/app/view/model/rest/ResponseModel;

    return-object v0
.end method

.method public getSize()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 50
    iget v0, p0, Lcom/cbs/app/view/model/rest/CacheEntry;->size:I

    if-ne v0, v2, :cond_1

    .line 53
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 57
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 59
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 60
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 61
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 62
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 63
    array-length v0, v0

    iput v0, p0, Lcom/cbs/app/view/model/rest/CacheEntry;->size:I
    :try_end_0
    .catch Ljava/io/NotSerializableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 71
    :goto_0
    iget v0, p0, Lcom/cbs/app/view/model/rest/CacheEntry;->size:I

    if-ne v0, v2, :cond_0

    .line 72
    iput v3, p0, Lcom/cbs/app/view/model/rest/CacheEntry;->size:I

    .line 74
    :cond_0
    iget v0, p0, Lcom/cbs/app/view/model/rest/CacheEntry;->size:I

    .line 78
    :goto_1
    return v0

    .line 65
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/NotSerializableException;->printStackTrace()V

    goto :goto_0

    .line 68
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 69
    iput v3, p0, Lcom/cbs/app/view/model/rest/CacheEntry;->size:I

    goto :goto_0

    .line 76
    :cond_1
    iget v0, p0, Lcom/cbs/app/view/model/rest/CacheEntry;->size:I

    goto :goto_1
.end method

.method public getTimeToLive()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/cbs/app/view/model/rest/CacheEntry;->timeToLive:J

    return-wide v0
.end method

.method public isValid()Z
    .locals 8

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 116
    iget-wide v4, p0, Lcom/cbs/app/view/model/rest/CacheEntry;->entered:J

    iget-wide v6, p0, Lcom/cbs/app/view/model/rest/CacheEntry;->timeToLive:J

    sub-long/2addr v2, v6

    cmp-long v1, v4, v2

    if-ltz v1, :cond_0

    .line 119
    const/4 v0, 0x1

    .line 121
    :cond_0
    return v0
.end method

.method public setEntered(J)V
    .locals 1

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/cbs/app/view/model/rest/CacheEntry;->entered:J

    .line 87
    return-void
.end method

.method public setResponseModel(Lcom/cbs/app/view/model/rest/ResponseModel;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/CacheEntry;->responseModel:Lcom/cbs/app/view/model/rest/ResponseModel;

    .line 103
    return-void
.end method

.method public setShowIfExpired(Z)V
    .locals 0

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/cbs/app/view/model/rest/CacheEntry;->showIfExpired:Z

    .line 111
    return-void
.end method

.method public setTimeToLive(J)V
    .locals 1

    .prologue
    .line 94
    iput-wide p1, p0, Lcom/cbs/app/view/model/rest/CacheEntry;->timeToLive:J

    .line 95
    return-void
.end method

.method public showIfExpired()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/cbs/app/view/model/rest/CacheEntry;->showIfExpired:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 125
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v0, 0x400

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 126
    const-string v0, "{\n \"size\": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    iget v0, p0, Lcom/cbs/app/view/model/rest/CacheEntry;->size:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 128
    const-string v0, ",\n \"showIfExpired\": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    iget-boolean v0, p0, Lcom/cbs/app/view/model/rest/CacheEntry;->showIfExpired:Z

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    const-string v0, ",\n \"entered\": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    iget-wide v2, p0, Lcom/cbs/app/view/model/rest/CacheEntry;->entered:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 132
    const-string v0, ",\n \"timeToLive\": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    iget-wide v2, p0, Lcom/cbs/app/view/model/rest/CacheEntry;->timeToLive:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 134
    const-string v0, ",\n \"responseModel\": \""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/CacheEntry;->responseModel:Lcom/cbs/app/view/model/rest/ResponseModel;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    const-string v0, "\"\n}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 129
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
