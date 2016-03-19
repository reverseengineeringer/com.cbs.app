.class public Lcom/cbs/app/androiddata/model/VideoGroup;
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
            "Lcom/cbs/app/androiddata/model/VideoGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "sectionTitle"
    .end annotation
.end field

.field private b:Lcom/cbs/app/androiddata/model/rest/VideoSection;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "sectionItems"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "query"
    .end annotation
.end field

.field private d:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "layout_type"
    .end annotation
.end field

.field private f:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "display_seasons"
    .end annotation
.end field

.field private g:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "viewing_window"
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "section_type"
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "seasons_sort_order"
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "seasons_default"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    new-instance v0, Lcom/cbs/app/androiddata/model/VideoGroup$1;

    invoke-direct {v0}, Lcom/cbs/app/androiddata/model/VideoGroup$1;-><init>()V

    sput-object v0, Lcom/cbs/app/androiddata/model/VideoGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/VideoGroup;->a:Ljava/lang/String;

    .line 144
    const-class v0, Lcom/cbs/app/androiddata/model/rest/VideoSection;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/androiddata/model/rest/VideoSection;

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/VideoGroup;->b:Lcom/cbs/app/androiddata/model/rest/VideoSection;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/VideoGroup;->c:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/cbs/app/androiddata/model/VideoGroup;->d:J

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/VideoGroup;->e:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/cbs/app/androiddata/model/VideoGroup;->f:Z

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/cbs/app/androiddata/model/VideoGroup;->g:Z

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/VideoGroup;->h:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/VideoGroup;->i:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/VideoGroup;->j:Ljava/lang/String;

    .line 153
    return-void

    :cond_0
    move v0, v2

    .line 148
    goto :goto_0

    :cond_1
    move v1, v2

    .line 149
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/cbs/app/androiddata/model/VideoGroup;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/VideoGroup;->d:J

    return-wide v0
.end method

.method public getLayoutType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoGroup;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoGroup;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getSeasonsDefault()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoGroup;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getSeasonsSortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoGroup;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getSectionItems()Lcom/cbs/app/androiddata/model/rest/VideoSection;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoGroup;->b:Lcom/cbs/app/androiddata/model/rest/VideoSection;

    return-object v0
.end method

.method public getSectionTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoGroup;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSectionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoGroup;->h:Ljava/lang/String;

    return-object v0
.end method

.method public setDisplaySeasons(Z)V
    .locals 0

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/VideoGroup;->f:Z

    .line 88
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 71
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/VideoGroup;->d:J

    .line 72
    return-void
.end method

.method public setLayoutType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/VideoGroup;->e:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/VideoGroup;->c:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setSeasonsDefault(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/VideoGroup;->j:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setSeasonsSortOrder(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/VideoGroup;->i:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setSectionItems(Lcom/cbs/app/androiddata/model/rest/VideoSection;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/VideoGroup;->b:Lcom/cbs/app/androiddata/model/rest/VideoSection;

    .line 56
    return-void
.end method

.method public setSectionTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/VideoGroup;->a:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setSectionType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/VideoGroup;->h:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setViewingWindow(Z)V
    .locals 0

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/VideoGroup;->g:Z

    .line 96
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoGroup;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoGroup;->b:Lcom/cbs/app/androiddata/model/rest/VideoSection;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 132
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoGroup;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-wide v4, p0, Lcom/cbs/app/androiddata/model/VideoGroup;->d:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 134
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoGroup;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-boolean v0, p0, Lcom/cbs/app/androiddata/model/VideoGroup;->f:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 136
    iget-boolean v0, p0, Lcom/cbs/app/androiddata/model/VideoGroup;->g:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 137
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoGroup;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoGroup;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoGroup;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    return-void

    :cond_0
    move v0, v2

    .line 135
    goto :goto_0

    :cond_1
    move v1, v2

    .line 136
    goto :goto_1
.end method
