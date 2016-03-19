.class public Lcom/cbs/app/androiddata/model/ShowLinks;
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
            "Lcom/cbs/app/androiddata/model/ShowLinks;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "__is_deleted"
    .end annotation
.end field

.field private d:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "show_menu_id"
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "link_type"
    .end annotation
.end field

.field private g:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "__live_on_date"
    .end annotation
.end field

.field private h:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "__expiry_date"
    .end annotation
.end field

.field private i:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "__is_published"
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "video_config_id"
    .end annotation
.end field

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 180
    new-instance v0, Lcom/cbs/app/androiddata/model/ShowLinks$1;

    invoke-direct {v0}, Lcom/cbs/app/androiddata/model/ShowLinks$1;-><init>()V

    sput-object v0, Lcom/cbs/app/androiddata/model/ShowLinks;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->a:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->b:J

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->c:Z

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->d:J

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->e:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->f:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->g:J

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->h:J

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->i:Z

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->j:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->k:J

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->l:Ljava/lang/String;

    .line 178
    return-void

    :cond_0
    move v0, v2

    .line 168
    goto :goto_0

    :cond_1
    move v1, v2

    .line 174
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public getExiryDate()J
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->h:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->b:J

    return-wide v0
.end method

.method public getK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveOnDate()J
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->g:J

    return-wide v0
.end method

.method public getShowMenuId()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->d:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoConfigId()J
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->k:J

    return-wide v0
.end method

.method public getVideoConfigUniqueName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->l:Ljava/lang/String;

    return-object v0
.end method

.method public setExiryDate(J)V
    .locals 1

    .prologue
    .line 105
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->h:J

    .line 106
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->b:J

    .line 58
    return-void
.end method

.method public setIsDeleted(Z)V
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->c:Z

    .line 66
    return-void
.end method

.method public setIsPublished(Z)V
    .locals 0

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->i:Z

    .line 114
    return-void
.end method

.method public setK(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->a:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->j:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setLinkType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->f:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setLiveOnDate(J)V
    .locals 1

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->g:J

    .line 98
    return-void
.end method

.method public setShowMenuId(J)V
    .locals 1

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->d:J

    .line 74
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->e:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setVideoConfigId(J)V
    .locals 1

    .prologue
    .line 129
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->k:J

    .line 130
    return-void
.end method

.method public setVideoConfigUniqueName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->l:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 148
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-wide v4, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->b:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 150
    iget-boolean v0, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->c:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 151
    iget-wide v4, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->d:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 152
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-wide v4, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->g:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 155
    iget-wide v4, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->h:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 156
    iget-boolean v0, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->i:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 157
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->k:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 159
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowLinks;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    return-void

    :cond_0
    move v0, v2

    .line 150
    goto :goto_0

    :cond_1
    move v1, v2

    .line 156
    goto :goto_1
.end method
