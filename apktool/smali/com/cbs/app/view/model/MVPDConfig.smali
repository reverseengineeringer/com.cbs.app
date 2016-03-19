.class public Lcom/cbs/app/view/model/MVPDConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
    value = {
        "adobeMvpd"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cbs/app/view/model/MVPDConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adobeDisplayNameOverride:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "adobe_display_name_override"
    .end annotation
.end field

.field private adobeId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "adobe_id"
    .end annotation
.end field

.field private adobeLogoUrl:Ljava/lang/String;

.field private filepathAdobeLogoOverride:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_adobe_logo_override"
    .end annotation
.end field

.field private forceUserRegFlow:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "force_user_reg_flow"
    .end annotation
.end field

.field private mpvd:Ljava/lang/String;

.field private tier:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/cbs/app/view/model/MVPDConfig$1;

    invoke-direct {v0}, Lcom/cbs/app/view/model/MVPDConfig$1;-><init>()V

    sput-object v0, Lcom/cbs/app/view/model/MVPDConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/MVPDConfig;->mpvd:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/MVPDConfig;->adobeId:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/MVPDConfig;->adobeDisplayNameOverride:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/MVPDConfig;->filepathAdobeLogoOverride:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/cbs/app/view/model/MVPDConfig;->forceUserRegFlow:Z

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/MVPDConfig;->tier:J

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/MVPDConfig;->adobeLogoUrl:Ljava/lang/String;

    .line 123
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/adobe/adobepass/accessenabler/a/g;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Lcom/adobe/adobepass/accessenabler/a/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/model/MVPDConfig;->setMvpd(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Lcom/adobe/adobepass/accessenabler/a/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/model/MVPDConfig;->setAdobeId(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Lcom/adobe/adobepass/accessenabler/a/g;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/model/MVPDConfig;->setAdobeLogoUrl(Ljava/lang/String;)V

    .line 39
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/cbs/app/view/model/MVPDConfig;->setTier(J)V

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/model/MVPDConfig;->setForceUserRegFlow(Z)V

    .line 41
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public getAdobeDisplayNameOverride()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cbs/app/view/model/MVPDConfig;->adobeDisplayNameOverride:Ljava/lang/String;

    return-object v0
.end method

.method public getAdobeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cbs/app/view/model/MVPDConfig;->adobeId:Ljava/lang/String;

    return-object v0
.end method

.method public getAdobeLogoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/cbs/app/view/model/MVPDConfig;->adobeLogoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepathAdobeLogoOverride()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/cbs/app/view/model/MVPDConfig;->filepathAdobeLogoOverride:Ljava/lang/String;

    return-object v0
.end method

.method public getMvpd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cbs/app/view/model/MVPDConfig;->mpvd:Ljava/lang/String;

    return-object v0
.end method

.method public getTier()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/cbs/app/view/model/MVPDConfig;->tier:J

    return-wide v0
.end method

.method public isForceUserRegFlow()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/cbs/app/view/model/MVPDConfig;->forceUserRegFlow:Z

    return v0
.end method

.method public setAdobeDisplayNameOverride(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/cbs/app/view/model/MVPDConfig;->adobeDisplayNameOverride:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setAdobeId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/cbs/app/view/model/MVPDConfig;->adobeId:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setAdobeLogoUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/cbs/app/view/model/MVPDConfig;->adobeLogoUrl:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setFilepathAdobeLogoOverride(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/cbs/app/view/model/MVPDConfig;->filepathAdobeLogoOverride:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setForceUserRegFlow(Z)V
    .locals 0

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/cbs/app/view/model/MVPDConfig;->forceUserRegFlow:Z

    .line 81
    return-void
.end method

.method public setMvpd(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cbs/app/view/model/MVPDConfig;->mpvd:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setTier(J)V
    .locals 1

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/cbs/app/view/model/MVPDConfig;->tier:J

    .line 89
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/cbs/app/view/model/MVPDConfig;->mpvd:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/cbs/app/view/model/MVPDConfig;->mpvd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/cbs/app/view/model/MVPDConfig;->adobeId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/cbs/app/view/model/MVPDConfig;->adobeDisplayNameOverride:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/cbs/app/view/model/MVPDConfig;->filepathAdobeLogoOverride:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-boolean v0, p0, Lcom/cbs/app/view/model/MVPDConfig;->forceUserRegFlow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 111
    iget-wide v0, p0, Lcom/cbs/app/view/model/MVPDConfig;->tier:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 112
    iget-object v0, p0, Lcom/cbs/app/view/model/MVPDConfig;->adobeLogoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    return-void

    .line 110
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
