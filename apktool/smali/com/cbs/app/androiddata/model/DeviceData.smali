.class public Lcom/cbs/app/androiddata/model/DeviceData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:D

.field private c:D

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/cbs/app/androiddata/model/DeviceData;->f:I

    .line 19
    const/4 v0, 0x4

    iput v0, p0, Lcom/cbs/app/androiddata/model/DeviceData;->h:I

    .line 27
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    const-string v1, "{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, " \"deviceId\": \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-object v1, p0, Lcom/cbs/app/androiddata/model/DeviceData;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, "\", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget-wide v2, p0, Lcom/cbs/app/androiddata/model/DeviceData;->b:D

    cmpl-double v1, v2, v4

    if-nez v1, :cond_1

    iget-wide v2, p0, Lcom/cbs/app/androiddata/model/DeviceData;->c:D

    cmpl-double v1, v2, v4

    if-nez v1, :cond_1

    .line 129
    const-string v1, " \"ip\": \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object v1, p0, Lcom/cbs/app/androiddata/model/DeviceData;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, "\", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :goto_0
    const-string v1, " \"locationAge\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget v1, p0, Lcom/cbs/app/androiddata/model/DeviceData;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string v1, " \"locationAccuracy\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget v1, p0, Lcom/cbs/app/androiddata/model/DeviceData;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string v1, " \"deviceType\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget v1, p0, Lcom/cbs/app/androiddata/model/DeviceData;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-object v1, p0, Lcom/cbs/app/androiddata/model/DeviceData;->i:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cbs/app/androiddata/model/DeviceData;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    const-string v1, " \"MVPDId\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cbs/app/androiddata/model/DeviceData;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_0
    const-string v1, " \"isPhone\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget v1, p0, Lcom/cbs/app/androiddata/model/DeviceData;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 133
    :cond_1
    const-string v1, " \"latitude\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-wide v2, p0, Lcom/cbs/app/androiddata/model/DeviceData;->b:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 135
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, " \"longitude\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget-wide v2, p0, Lcom/cbs/app/androiddata/model/DeviceData;->c:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 138
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/cbs/app/androiddata/model/DeviceData;->h:I

    return v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceData;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getIsPhone()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/cbs/app/androiddata/model/DeviceData;->f:I

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/DeviceData;->b:D

    return-wide v0
.end method

.method public getLocationAccuracy()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/cbs/app/androiddata/model/DeviceData;->d:I

    return v0
.end method

.method public getLocationAge()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/cbs/app/androiddata/model/DeviceData;->e:I

    return v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/DeviceData;->c:D

    return-wide v0
.end method

.method public getMVPDId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceData;->i:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/DeviceData;->a:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setDeviceType(I)V
    .locals 0

    .prologue
    .line 110
    iput p1, p0, Lcom/cbs/app/androiddata/model/DeviceData;->h:I

    .line 111
    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/DeviceData;->g:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setIsPhone(I)V
    .locals 0

    .prologue
    .line 94
    iput p1, p0, Lcom/cbs/app/androiddata/model/DeviceData;->f:I

    .line 95
    return-void
.end method

.method public setLatitude(D)V
    .locals 1

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/DeviceData;->b:D

    .line 63
    return-void
.end method

.method public setLocationAccuracy(I)V
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Lcom/cbs/app/androiddata/model/DeviceData;->d:I

    .line 79
    return-void
.end method

.method public setLocationAge(I)V
    .locals 0

    .prologue
    .line 86
    iput p1, p0, Lcom/cbs/app/androiddata/model/DeviceData;->e:I

    .line 87
    return-void
.end method

.method public setLongitude(D)V
    .locals 1

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/DeviceData;->c:D

    .line 71
    return-void
.end method

.method public setMVPDId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/DeviceData;->i:Ljava/lang/String;

    .line 119
    return-void
.end method
