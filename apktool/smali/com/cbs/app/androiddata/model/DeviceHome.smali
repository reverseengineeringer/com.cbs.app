.class public Lcom/cbs/app/androiddata/model/DeviceHome;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/cbs/app/androiddata/model/DeviceHome;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cbs/app/androiddata/model/DeviceHome;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "type"
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "target"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "appId"
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "action"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "device"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath"
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "k"
    .end annotation
.end field

.field private i:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "display_order"
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "pid"
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "optional_id"
    .end annotation
.end field

.field private l:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "liveDate"
    .end annotation
.end field

.field private m:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "expiresDate"
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "user_state"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "svod_flag"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/cbs/app/androiddata/model/DeviceHome$1;

    invoke-direct {v0}, Lcom/cbs/app/androiddata/model/DeviceHome$1;-><init>()V

    sput-object v0, Lcom/cbs/app/androiddata/model/DeviceHome;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->e:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->c:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->o:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->n:Ljava/util/List;

    .line 1218
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->a:J

    .line 1219
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->b:Ljava/lang/String;

    .line 1220
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->d:Ljava/lang/String;

    .line 1221
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->f:Ljava/lang/String;

    .line 1222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->g:Ljava/lang/String;

    .line 1223
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->h:Ljava/lang/String;

    .line 1224
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->i:I

    .line 1225
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->j:Ljava/lang/String;

    .line 1227
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->k:Ljava/lang/String;

    .line 1228
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->l:J

    .line 1229
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->m:J

    .line 1230
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->e:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 1231
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->c:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 1232
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->o:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 1233
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->n:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 70
    return-void
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 13
    check-cast p1, Lcom/cbs/app/androiddata/model/DeviceHome;

    .line 2194
    iget v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Lcom/cbs/app/androiddata/model/DeviceHome;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    .line 13
    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 199
    instance-of v1, p1, Lcom/cbs/app/androiddata/model/DeviceHome;

    if-eqz v1, :cond_0

    .line 200
    check-cast p1, Lcom/cbs/app/androiddata/model/DeviceHome;

    .line 201
    invoke-virtual {p1}, Lcom/cbs/app/androiddata/model/DeviceHome;->getId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/cbs/app/androiddata/model/DeviceHome;->getId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 202
    const/4 v0, 0x1

    .line 205
    :cond_0
    return v0
.end method

.method public getAction()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->e:Ljava/util/List;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplay_order()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->i:I

    return v0
.end method

.method public getExpiresDate()J
    .locals 2

    .prologue
    .line 177
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->m:J

    return-wide v0
.end method

.method public getFilepath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->a:J

    return-wide v0
.end method

.method public getK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveDate()J
    .locals 2

    .prologue
    .line 169
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->l:J

    return-wide v0
.end method

.method public getOptional_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getSvod_flag()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->o:Ljava/util/List;

    return-object v0
.end method

.method public getTarget()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->c:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_state()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->n:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 209
    const/16 v0, 0x2c

    return v0
.end method

.method public setAction(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->e:Ljava/util/List;

    .line 118
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->d:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->f:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setDisplay_order(I)V
    .locals 0

    .prologue
    .line 149
    iput p1, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->i:I

    .line 150
    return-void
.end method

.method public setExpiresDate(J)V
    .locals 1

    .prologue
    .line 181
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->m:J

    .line 182
    return-void
.end method

.method public setFilepath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->g:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->a:J

    .line 78
    return-void
.end method

.method public setK(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->h:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setLiveDate(J)V
    .locals 1

    .prologue
    .line 173
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->l:J

    .line 174
    return-void
.end method

.method public setOptional_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->k:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->j:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setSvod_flag(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->o:Ljava/util/List;

    .line 190
    return-void
.end method

.method public setTarget(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->c:Ljava/util/List;

    .line 102
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->b:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setUser_state(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->n:Ljava/util/List;

    .line 94
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 238
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 239
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    iget v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->l:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 248
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->m:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 249
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->e:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 250
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->c:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 251
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->o:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 252
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceHome;->n:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 253
    return-void
.end method
