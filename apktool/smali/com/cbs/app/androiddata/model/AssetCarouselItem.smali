.class public Lcom/cbs/app/androiddata/model/AssetCarouselItem;
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
        "Lcom/cbs/app/androiddata/model/AssetCarouselItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cbs/app/androiddata/model/AssetCarouselItem;",
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

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "appId"
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "target"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "device"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "k"
    .end annotation
.end field

.field private h:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "display_order"
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "action_url"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/cbs/app/androiddata/model/AssetCarouselItem$1;

    invoke-direct {v0}, Lcom/cbs/app/androiddata/model/AssetCarouselItem$1;-><init>()V

    sput-object v0, Lcom/cbs/app/androiddata/model/AssetCarouselItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1056
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/AssetCarouselItem;->a:J

    .line 1057
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/AssetCarouselItem;->b:Ljava/lang/String;

    .line 1058
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/AssetCarouselItem;->c:Ljava/lang/String;

    .line 1059
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/AssetCarouselItem;->d:Ljava/util/ArrayList;

    .line 1060
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/AssetCarouselItem;->e:Ljava/lang/String;

    .line 1061
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/AssetCarouselItem;->f:Ljava/lang/String;

    .line 1062
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/AssetCarouselItem;->g:Ljava/lang/String;

    .line 1063
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/AssetCarouselItem;->h:J

    .line 1064
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/AssetCarouselItem;->i:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 11
    check-cast p1, Lcom/cbs/app/androiddata/model/AssetCarouselItem;

    .line 1087
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/AssetCarouselItem;->h:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v2, p1, Lcom/cbs/app/androiddata/model/AssetCarouselItem;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    .line 11
    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    instance-of v1, p1, Lcom/cbs/app/androiddata/model/AssetCarouselItem;

    if-eqz v1, :cond_0

    .line 94
    check-cast p1, Lcom/cbs/app/androiddata/model/AssetCarouselItem;

    .line 95
    invoke-virtual {p1}, Lcom/cbs/app/androiddata/model/AssetCarouselItem;->getId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/cbs/app/androiddata/model/AssetCarouselItem;->getId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 96
    const/4 v0, 0x1

    .line 99
    :cond_0
    return v0
.end method

.method public getActionUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/AssetCarouselItem;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/AssetCarouselItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/AssetCarouselItem;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayOrder()J
    .locals 2

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/AssetCarouselItem;->h:J

    return-wide v0
.end method

.method public getFilepath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/AssetCarouselItem;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/AssetCarouselItem;->a:J

    return-wide v0
.end method

.method public getK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/AssetCarouselItem;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/AssetCarouselItem;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/AssetCarouselItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 103
    const/16 v0, 0x2b

    return v0
.end method

.method public setActionUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/AssetCarouselItem;->i:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/AssetCarouselItem;->c:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/AssetCarouselItem;->e:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setDisplayOrder(J)V
    .locals 1

    .prologue
    .line 159
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/AssetCarouselItem;->h:J

    .line 160
    return-void
.end method

.method public setFilepath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/AssetCarouselItem;->f:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 111
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/AssetCarouselItem;->a:J

    .line 112
    return-void
.end method

.method public setK(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/AssetCarouselItem;->g:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setTarget(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/AssetCarouselItem;->d:Ljava/util/ArrayList;

    .line 136
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/AssetCarouselItem;->b:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/AssetCarouselItem;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 70
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/AssetCarouselItem;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/AssetCarouselItem;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/AssetCarouselItem;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 73
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/AssetCarouselItem;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/AssetCarouselItem;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/AssetCarouselItem;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/AssetCarouselItem;->h:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 77
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/AssetCarouselItem;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    return-void
.end method
