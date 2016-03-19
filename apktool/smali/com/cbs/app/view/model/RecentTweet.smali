.class public Lcom/cbs/app/view/model/RecentTweet;
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
        "Lcom/cbs/app/view/model/RecentTweet;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cbs/app/view/model/RecentTweet;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private createdAt:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "created_at"
    .end annotation
.end field

.field private id:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation
.end field

.field private profileImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "profile_image_url"
    .end annotation
.end field

.field private showId:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "show_id"
    .end annotation
.end field

.field private text:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "text"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/cbs/app/view/model/RecentTweet$1;

    invoke-direct {v0}, Lcom/cbs/app/view/model/RecentTweet$1;-><init>()V

    sput-object v0, Lcom/cbs/app/view/model/RecentTweet;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 32
    const-class v0, Lcom/cbs/app/view/model/RecentTweet;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/model/RecentTweet;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-direct {p0, p1}, Lcom/cbs/app/view/model/RecentTweet;->readFromParcel(Landroid/os/Parcel;)V

    .line 72
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/RecentTweet;->id:J

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/RecentTweet;->text:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/RecentTweet;->createdAt:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/RecentTweet;->profileImageUrl:Ljava/lang/String;

    .line 144
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/cbs/app/view/model/RecentTweet;)I
    .locals 4

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/cbs/app/view/model/RecentTweet;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v2, p1, Lcom/cbs/app/view/model/RecentTweet;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 17
    check-cast p1, Lcom/cbs/app/view/model/RecentTweet;

    invoke-virtual {p0, p1}, Lcom/cbs/app/view/model/RecentTweet;->compareTo(Lcom/cbs/app/view/model/RecentTweet;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 121
    instance-of v1, p1, Lcom/cbs/app/view/model/RecentTweet;

    if-eqz v1, :cond_0

    .line 122
    check-cast p1, Lcom/cbs/app/view/model/RecentTweet;

    .line 123
    iget-wide v2, p1, Lcom/cbs/app/view/model/RecentTweet;->id:J

    iget-wide v4, p0, Lcom/cbs/app/view/model/RecentTweet;->id:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 124
    const/4 v0, 0x1

    .line 127
    :cond_0
    return v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/cbs/app/view/model/RecentTweet;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/cbs/app/view/model/RecentTweet;->id:J

    return-wide v0
.end method

.method public getProfileImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/cbs/app/view/model/RecentTweet;->profileImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getShowId()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/cbs/app/view/model/RecentTweet;->showId:J

    return-wide v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cbs/app/view/model/RecentTweet;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 131
    const/16 v0, 0x2f

    return v0
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/cbs/app/view/model/RecentTweet;->createdAt:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/cbs/app/view/model/RecentTweet;->id:J

    .line 80
    return-void
.end method

.method public setProfileImageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/cbs/app/view/model/RecentTweet;->profileImageUrl:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setShowId(J)V
    .locals 1

    .prologue
    .line 87
    iput-wide p1, p0, Lcom/cbs/app/view/model/RecentTweet;->showId:J

    .line 88
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/cbs/app/view/model/RecentTweet;->text:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/cbs/app/view/model/RecentTweet;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 149
    iget-object v0, p0, Lcom/cbs/app/view/model/RecentTweet;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/cbs/app/view/model/RecentTweet;->createdAt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/cbs/app/view/model/RecentTweet;->profileImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    return-void
.end method
