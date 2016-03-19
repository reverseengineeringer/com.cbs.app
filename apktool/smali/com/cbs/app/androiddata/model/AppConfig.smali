.class public Lcom/cbs/app/androiddata/model/AppConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


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
            "Lcom/cbs/app/androiddata/model/AppConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "number_upcoming_episodes"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "rate_video_complete"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "rate_video_count"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "ad_server_override"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "https_enabled"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "api_environment"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "livetvServer"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/cbs/app/androiddata/model/AppConfig$1;

    invoke-direct {v0}, Lcom/cbs/app/androiddata/model/AppConfig$1;-><init>()V

    sput-object v0, Lcom/cbs/app/androiddata/model/AppConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/AppConfig;->a:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/AppConfig;->b:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/AppConfig;->c:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/AppConfig;->d:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/AppConfig;->e:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/AppConfig;->f:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/AppConfig;->g:Ljava/lang/String;

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/cbs/app/androiddata/model/AppConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public getAdServerOverride()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/AppConfig;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getApiEnvironment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/AppConfig;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpsEnabled()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/AppConfig;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getLivetvServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/AppConfig;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberUpcomingEpisodes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/AppConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getRateVideoComplete()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/AppConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getRateVideoCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/AppConfig;->c:Ljava/lang/String;

    return-object v0
.end method

.method public setAdServerOverride(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/AppConfig;->d:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setApiEnvironment(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/AppConfig;->f:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setHttpsEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/AppConfig;->e:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setLivetvServer(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/AppConfig;->g:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setNumberUpcomingEpisodes(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/AppConfig;->a:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setRateVideoComplete(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/AppConfig;->b:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setRateVideoCount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/AppConfig;->c:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/AppConfig;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/AppConfig;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/AppConfig;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/AppConfig;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/AppConfig;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/AppConfig;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/AppConfig;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    return-void
.end method
