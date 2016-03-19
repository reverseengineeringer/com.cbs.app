.class public Lcom/cbs/app/androiddata/model/ShowMenu;
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
            "Lcom/cbs/app/androiddata/model/ShowMenu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "show_id"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "device_app_id"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "device_app_secret"
    .end annotation
.end field

.field private f:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "live_date"
    .end annotation
.end field

.field private g:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "changed_date"
    .end annotation
.end field

.field private h:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "created_date"
    .end annotation
.end field

.field private i:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "__is_deleted"
    .end annotation
.end field

.field private j:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "__is_published"
    .end annotation
.end field

.field private k:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "__expiry_date"
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/ShowLinks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 188
    new-instance v0, Lcom/cbs/app/androiddata/model/ShowMenu$1;

    invoke-direct {v0}, Lcom/cbs/app/androiddata/model/ShowMenu$1;-><init>()V

    sput-object v0, Lcom/cbs/app/androiddata/model/ShowMenu;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->a:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->b:J

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->c:J

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->d:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->e:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->f:J

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->g:J

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->h:J

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->i:Z

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->j:Z

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->k:J

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->l:Ljava/util/List;

    .line 185
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->l:Ljava/util/List;

    const-class v1, Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 186
    return-void

    :cond_0
    move v0, v2

    .line 181
    goto :goto_0

    :cond_1
    move v1, v2

    .line 182
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public getChangedDate()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->g:J

    return-wide v0
.end method

.method public getCreatedDate()J
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->h:J

    return-wide v0
.end method

.method public getDeviceAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceAppSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiryDate()J
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->k:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->b:J

    return-wide v0
.end method

.method public getK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getLinks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/ShowLinks;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->l:Ljava/util/List;

    return-object v0
.end method

.method public getLiveDate()J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->f:J

    return-wide v0
.end method

.method public getShowId()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->c:J

    return-wide v0
.end method

.method public setChangedDate(J)V
    .locals 1

    .prologue
    .line 104
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->g:J

    .line 105
    return-void
.end method

.method public setCreatedDate(J)V
    .locals 1

    .prologue
    .line 112
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->h:J

    .line 113
    return-void
.end method

.method public setDeviceAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->d:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setDeviceAppSecret(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->e:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setExpiryDate(J)V
    .locals 1

    .prologue
    .line 136
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->k:J

    .line 137
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->b:J

    .line 65
    return-void
.end method

.method public setIsDeleted(Z)V
    .locals 0

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->i:Z

    .line 121
    return-void
.end method

.method public setIsPublished(Z)V
    .locals 0

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->j:Z

    .line 129
    return-void
.end method

.method public setK(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->a:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setLinks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/ShowLinks;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->l:Ljava/util/List;

    .line 145
    return-void
.end method

.method public setLiveDate(J)V
    .locals 1

    .prologue
    .line 96
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->f:J

    .line 97
    return-void
.end method

.method public setShowId(J)V
    .locals 1

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->c:J

    .line 73
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 155
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-wide v4, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->b:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 157
    iget-wide v4, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->c:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 158
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-wide v4, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->f:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 161
    iget-wide v4, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->g:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 162
    iget-wide v4, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->h:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 163
    iget-boolean v0, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->i:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 164
    iget-boolean v0, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->j:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 165
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->k:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 166
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowMenu;->l:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 167
    return-void

    :cond_0
    move v0, v2

    .line 163
    goto :goto_0

    :cond_1
    move v1, v2

    .line 164
    goto :goto_1
.end method
