.class public Lcom/cbs/app/view/model/DeviceHome;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/cbs/app/view/model/DeviceHome;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cbs/app/view/model/DeviceHome;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x625d11927ef2c08fL


# instance fields
.field private action:Ljava/util/List;
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

.field private appId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "appId"
    .end annotation
.end field

.field private device:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "device"
    .end annotation
.end field

.field private display_order:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "display_order"
    .end annotation
.end field

.field private expiresDate:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "expiresDate"
    .end annotation
.end field

.field private filepath:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath"
    .end annotation
.end field

.field private id:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "k"
    .end annotation
.end field

.field private liveDate:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "liveDate"
    .end annotation
.end field

.field private optional_id:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "optional_id"
    .end annotation
.end field

.field private pid:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "pid"
    .end annotation
.end field

.field private svod_flag:Ljava/util/List;
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

.field private target:Ljava/util/List;
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

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "type"
    .end annotation
.end field

.field private user_state:Ljava/util/List;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/cbs/app/view/model/DeviceHome$1;

    invoke-direct {v0}, Lcom/cbs/app/view/model/DeviceHome$1;-><init>()V

    sput-object v0, Lcom/cbs/app/view/model/DeviceHome;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/model/DeviceHome;->action:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/model/DeviceHome;->target:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/model/DeviceHome;->svod_flag:Ljava/util/List;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/model/DeviceHome;->user_state:Ljava/util/List;

    .line 101
    invoke-direct {p0, p1}, Lcom/cbs/app/view/model/DeviceHome;->readFromParcel(Landroid/os/Parcel;)V

    .line 102
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/DeviceHome;->id:J

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/DeviceHome;->type:Ljava/lang/String;

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/DeviceHome;->appId:Ljava/lang/String;

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/DeviceHome;->device:Ljava/lang/String;

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/DeviceHome;->filepath:Ljava/lang/String;

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/DeviceHome;->k:Ljava/lang/String;

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/view/model/DeviceHome;->display_order:I

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/DeviceHome;->pid:Ljava/lang/String;

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/DeviceHome;->optional_id:Ljava/lang/String;

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/DeviceHome;->liveDate:J

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/DeviceHome;->expiresDate:J

    .line 262
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceHome;->action:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 263
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceHome;->target:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 264
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceHome;->svod_flag:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 265
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceHome;->user_state:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 266
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/cbs/app/view/model/DeviceHome;)I
    .locals 2

    .prologue
    .line 226
    iget v0, p0, Lcom/cbs/app/view/model/DeviceHome;->display_order:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Lcom/cbs/app/view/model/DeviceHome;->display_order:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 16
    check-cast p1, Lcom/cbs/app/view/model/DeviceHome;

    invoke-virtual {p0, p1}, Lcom/cbs/app/view/model/DeviceHome;->compareTo(Lcom/cbs/app/view/model/DeviceHome;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 230
    const/4 v0, 0x0

    .line 231
    instance-of v1, p1, Lcom/cbs/app/view/model/DeviceHome;

    if-eqz v1, :cond_0

    .line 232
    check-cast p1, Lcom/cbs/app/view/model/DeviceHome;

    .line 233
    invoke-virtual {p1}, Lcom/cbs/app/view/model/DeviceHome;->getId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/cbs/app/view/model/DeviceHome;->getId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 234
    const/4 v0, 0x1

    .line 237
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
    .line 145
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceHome;->action:Ljava/util/List;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceHome;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceHome;->device:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplay_order()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/cbs/app/view/model/DeviceHome;->display_order:I

    return v0
.end method

.method public getExpiresDate()J
    .locals 2

    .prologue
    .line 209
    iget-wide v0, p0, Lcom/cbs/app/view/model/DeviceHome;->expiresDate:J

    return-wide v0
.end method

.method public getFilepath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceHome;->filepath:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/cbs/app/view/model/DeviceHome;->id:J

    return-wide v0
.end method

.method public getK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceHome;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveDate()J
    .locals 2

    .prologue
    .line 201
    iget-wide v0, p0, Lcom/cbs/app/view/model/DeviceHome;->liveDate:J

    return-wide v0
.end method

.method public getOptional_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceHome;->optional_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceHome;->pid:Ljava/lang/String;

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
    .line 217
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceHome;->svod_flag:Ljava/util/List;

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
    .line 129
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceHome;->target:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceHome;->type:Ljava/lang/String;

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
    .line 121
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceHome;->user_state:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 241
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
    .line 149
    iput-object p1, p0, Lcom/cbs/app/view/model/DeviceHome;->action:Ljava/util/List;

    .line 150
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/cbs/app/view/model/DeviceHome;->appId:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/cbs/app/view/model/DeviceHome;->device:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setDisplay_order(I)V
    .locals 0

    .prologue
    .line 181
    iput p1, p0, Lcom/cbs/app/view/model/DeviceHome;->display_order:I

    .line 182
    return-void
.end method

.method public setExpiresDate(J)V
    .locals 1

    .prologue
    .line 213
    iput-wide p1, p0, Lcom/cbs/app/view/model/DeviceHome;->expiresDate:J

    .line 214
    return-void
.end method

.method public setFilepath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/cbs/app/view/model/DeviceHome;->filepath:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 109
    iput-wide p1, p0, Lcom/cbs/app/view/model/DeviceHome;->id:J

    .line 110
    return-void
.end method

.method public setK(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/cbs/app/view/model/DeviceHome;->k:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setLiveDate(J)V
    .locals 1

    .prologue
    .line 205
    iput-wide p1, p0, Lcom/cbs/app/view/model/DeviceHome;->liveDate:J

    .line 206
    return-void
.end method

.method public setOptional_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/cbs/app/view/model/DeviceHome;->optional_id:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/cbs/app/view/model/DeviceHome;->pid:Ljava/lang/String;

    .line 190
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
    .line 221
    iput-object p1, p0, Lcom/cbs/app/view/model/DeviceHome;->svod_flag:Ljava/util/List;

    .line 222
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
    .line 133
    iput-object p1, p0, Lcom/cbs/app/view/model/DeviceHome;->target:Ljava/util/List;

    .line 134
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/cbs/app/view/model/DeviceHome;->type:Ljava/lang/String;

    .line 118
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
    .line 125
    iput-object p1, p0, Lcom/cbs/app/view/model/DeviceHome;->user_state:Ljava/util/List;

    .line 126
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 270
    iget-wide v0, p0, Lcom/cbs/app/view/model/DeviceHome;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 271
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceHome;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceHome;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceHome;->device:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceHome;->filepath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceHome;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 276
    iget v0, p0, Lcom/cbs/app/view/model/DeviceHome;->display_order:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceHome;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceHome;->optional_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 280
    iget-wide v0, p0, Lcom/cbs/app/view/model/DeviceHome;->liveDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 281
    iget-wide v0, p0, Lcom/cbs/app/view/model/DeviceHome;->expiresDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 282
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceHome;->action:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 283
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceHome;->target:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 284
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceHome;->svod_flag:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 285
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceHome;->user_state:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 286
    return-void
.end method
