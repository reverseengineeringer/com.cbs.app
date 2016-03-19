.class public Lcom/cbs/app/androiddata/CacheEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:J

.field private c:J

.field private d:Lcom/cbs/app/androiddata/ResponseModel;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/cbs/app/androiddata/CacheEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/androiddata/CacheEntry;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cbs/app/androiddata/CacheEntry;-><init>(Lcom/cbs/app/androiddata/ResponseModel;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 4

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/CacheEntry;->b:J

    .line 26
    const-wide/16 v0, 0xe10

    iput-wide v0, p0, Lcom/cbs/app/androiddata/CacheEntry;->c:J

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/androiddata/CacheEntry;->e:Z

    .line 37
    iput-object p1, p0, Lcom/cbs/app/androiddata/CacheEntry;->d:Lcom/cbs/app/androiddata/ResponseModel;

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/cbs/app/androiddata/CacheEntry;->b:J

    .line 39
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 8

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 77
    iget-wide v4, p0, Lcom/cbs/app/androiddata/CacheEntry;->b:J

    iget-wide v6, p0, Lcom/cbs/app/androiddata/CacheEntry;->c:J

    sub-long/2addr v2, v6

    cmp-long v1, v4, v2

    if-ltz v1, :cond_0

    .line 80
    const/4 v0, 0x1

    .line 82
    :cond_0
    return v0
.end method

.method public getEntered()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/cbs/app/androiddata/CacheEntry;->b:J

    return-wide v0
.end method

.method public getResponseModel()Lcom/cbs/app/androiddata/ResponseModel;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cbs/app/androiddata/CacheEntry;->d:Lcom/cbs/app/androiddata/ResponseModel;

    return-object v0
.end method

.method public getTimeToLive()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/cbs/app/androiddata/CacheEntry;->c:J

    return-wide v0
.end method

.method public setEntered(J)V
    .locals 1

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/cbs/app/androiddata/CacheEntry;->b:J

    .line 48
    return-void
.end method

.method public setResponseModel(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/cbs/app/androiddata/CacheEntry;->d:Lcom/cbs/app/androiddata/ResponseModel;

    .line 64
    return-void
.end method

.method public setShowIfExpired(Z)V
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/CacheEntry;->e:Z

    .line 72
    return-void
.end method

.method public setTimeToLive(J)V
    .locals 1

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/cbs/app/androiddata/CacheEntry;->c:J

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    const-string v0, "{\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v0, " \"showIfExpired\": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-boolean v0, p0, Lcom/cbs/app/androiddata/CacheEntry;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v0, ",\n \"entered\": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-wide v2, p0, Lcom/cbs/app/androiddata/CacheEntry;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 92
    const-string v0, ",\n \"timeToLive\": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-wide v2, p0, Lcom/cbs/app/androiddata/CacheEntry;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 94
    const-string v0, ",\n \"responseModel\": \""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-object v0, p0, Lcom/cbs/app/androiddata/CacheEntry;->d:Lcom/cbs/app/androiddata/ResponseModel;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v0, "\"\n}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 89
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
