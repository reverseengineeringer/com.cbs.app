.class public Lcom/cbs/app/androiddata/model/ShowBlockNavigation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cbs/app/androiddata/model/ShowBlockNavigation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "k"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "type"
    .end annotation
.end field

.field private c:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "title"
    .end annotation
.end field

.field private e:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "createdDate"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "_createdDate"
    .end annotation
.end field

.field private g:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "changedDate"
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "_changedDate"
    .end annotation
.end field

.field private i:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "liveDate"
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "_liveDate"
    .end annotation
.end field

.field private k:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "expireDate"
    .end annotation
.end field

.field private l:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "_expireDate"
    .end annotation
.end field

.field private m:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "showId"
    .end annotation
.end field

.field private n:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "navigationType"
    .end annotation
.end field

.field private o:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "platform"
    .end annotation
.end field

.field private p:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "icon"
    .end annotation
.end field

.field private q:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "label"
    .end annotation
.end field

.field private r:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "url"
    .end annotation
.end field

.field private s:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "cbssolrType"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 214
    new-instance v0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation$1;

    invoke-direct {v0}, Lcom/cbs/app/androiddata/model/ShowBlockNavigation$1;-><init>()V

    sput-object v0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1252
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->a:Ljava/lang/String;

    .line 1253
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->b:Ljava/lang/String;

    .line 1254
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->c:I

    .line 1255
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->d:Ljava/lang/String;

    .line 1256
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->e:J

    .line 1257
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->f:Ljava/lang/String;

    .line 1258
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->g:J

    .line 1259
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->h:Ljava/lang/String;

    .line 1260
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->i:J

    .line 1261
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->j:Ljava/lang/String;

    .line 1262
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->k:J

    .line 1263
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->l:Ljava/lang/String;

    .line 1264
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->m:J

    .line 1265
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->n:Ljava/lang/String;

    .line 1266
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->o:Ljava/lang/String;

    .line 1267
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->p:Ljava/lang/String;

    .line 1268
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->q:Ljava/lang/String;

    .line 1269
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->r:Ljava/lang/String;

    .line 1270
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->s:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method public getCbssolrType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getChangedDate()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->g:J

    return-wide v0
.end method

.method public getChangedDateString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedDate()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->e:J

    return-wide v0
.end method

.method public getCreatedDateString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getExpireDate()J
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->k:J

    return-wide v0
.end method

.method public getExpireDateString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->c:I

    return v0
.end method

.method public getK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveDate()J
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->i:J

    return-wide v0
.end method

.method public getLiveDateString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getNavigationType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getShowId()J
    .locals 2

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->m:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->r:Ljava/lang/String;

    return-object v0
.end method

.method public setCbssolrType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->s:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public setChangedDate(J)V
    .locals 1

    .prologue
    .line 114
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->g:J

    .line 115
    return-void
.end method

.method public setChangedDateString(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->h:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setCreatedDate(J)V
    .locals 1

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->e:J

    .line 99
    return-void
.end method

.method public setCreatedDateString(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->f:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setExpireDate(J)V
    .locals 1

    .prologue
    .line 146
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->k:J

    .line 147
    return-void
.end method

.method public setExpireDateString(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->l:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->p:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->c:I

    .line 83
    return-void
.end method

.method public setK(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->a:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->q:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setLiveDate(J)V
    .locals 1

    .prologue
    .line 130
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->i:J

    .line 131
    return-void
.end method

.method public setLiveDateString(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->j:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setNavigationType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->n:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->o:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setShowId(J)V
    .locals 1

    .prologue
    .line 162
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->m:J

    .line 163
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->d:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->b:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->r:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 234
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->g:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 236
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->i:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 238
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 239
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->k:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 240
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->m:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 242
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowBlockNavigation;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    return-void
.end method
