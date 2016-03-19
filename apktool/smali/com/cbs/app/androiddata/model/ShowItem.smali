.class public Lcom/cbs/app/androiddata/model/ShowItem;
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
            "Lcom/cbs/app/androiddata/model/ShowItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/cbs/app/androiddata/model/EpisodeVideoCount;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:J

.field private h:Ljava/lang/String;

.field private i:J

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "tune_in_time"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 189
    new-instance v0, Lcom/cbs/app/androiddata/model/ShowItem$2;

    invoke-direct {v0}, Lcom/cbs/app/androiddata/model/ShowItem$2;-><init>()V

    sput-object v0, Lcom/cbs/app/androiddata/model/ShowItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowItem;->a:Ljava/lang/String;

    .line 164
    const-class v0, Lcom/cbs/app/androiddata/model/EpisodeVideoCount;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/androiddata/model/EpisodeVideoCount;

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowItem;->b:Lcom/cbs/app/androiddata/model/EpisodeVideoCount;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowItem;->c:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowItem;->d:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowItem;->e:J

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 171
    new-instance v1, Lcom/cbs/app/androiddata/model/ShowItem$1;

    invoke-direct {v1, p0}, Lcom/cbs/app/androiddata/model/ShowItem$1;-><init>(Lcom/cbs/app/androiddata/model/ShowItem;)V

    .line 176
    :try_start_0
    new-instance v2, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    invoke-virtual {v2, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowItem;->f:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowItem;->g:J

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowItem;->h:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowItem;->i:J

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowItem;->j:Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowItem;->k:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowItem;->l:Ljava/lang/String;

    .line 187
    return-void

    .line 178
    :catch_0
    move-exception v0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowItem;->f:Ljava/util/HashMap;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getEpisodeVideoCount()Lcom/cbs/app/androiddata/model/EpisodeVideoCount;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowItem;->b:Lcom/cbs/app/androiddata/model/EpisodeVideoCount;

    return-object v0
.end method

.method public getFilepathShowGroupItemLogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepathShowLogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowItem;->e:J

    return-wide v0
.end method

.method public getShowAssets()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowItem;->f:Ljava/util/HashMap;

    return-object v0
.end method

.method public getShowGroupId()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowItem;->g:J

    return-wide v0
.end method

.method public getShowGroupItemLinks()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowItem;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getShowId()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowItem;->i:J

    return-wide v0
.end method

.method public getShowUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowItem;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowItem;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getTuneInTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowItem;->l:Ljava/lang/String;

    return-object v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowItem;->a:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setEpisodeVideoCount(Lcom/cbs/app/androiddata/model/EpisodeVideoCount;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowItem;->b:Lcom/cbs/app/androiddata/model/EpisodeVideoCount;

    .line 49
    return-void
.end method

.method public setFilepathShowGroupItemLogo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowItem;->c:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setFilepathShowLogo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowItem;->d:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/ShowItem;->e:J

    .line 73
    return-void
.end method

.method public setShowAssets(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowItem;->f:Ljava/util/HashMap;

    .line 81
    return-void
.end method

.method public setShowGroupId(J)V
    .locals 1

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/ShowItem;->g:J

    .line 89
    return-void
.end method

.method public setShowGroupItemLinks(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowItem;->h:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setShowId(J)V
    .locals 1

    .prologue
    .line 104
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/ShowItem;->i:J

    .line 105
    return-void
.end method

.method public setShowUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowItem;->j:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowItem;->k:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setTuneInTime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowItem;->l:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowItem;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowItem;->b:Lcom/cbs/app/androiddata/model/EpisodeVideoCount;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 141
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowItem;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowItem;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowItem;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 146
    :try_start_0
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    iget-object v1, p0, Lcom/cbs/app/androiddata/model/ShowItem;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowItem;->g:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 152
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowItem;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowItem;->i:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 154
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowItem;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowItem;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowItem;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    return-void

    .line 148
    :catch_0
    move-exception v0

    const-string v0, "{}"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method
