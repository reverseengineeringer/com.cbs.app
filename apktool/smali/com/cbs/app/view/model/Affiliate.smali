.class public Lcom/cbs/app/view/model/Affiliate;
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
            "Lcom/cbs/app/view/model/Affiliate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private affiliateName:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "affiliateName"
    .end annotation
.end field

.field private affiliateStation:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "affiliateStation"
    .end annotation
.end field

.field private affiliateURL:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "affiliateURL"
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "k"
    .end annotation
.end field

.field private logo:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "logo"
    .end annotation
.end field

.field private logoSelected:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "logoSelected"
    .end annotation
.end field

.field private smallLogo:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "smallLogo"
    .end annotation
.end field

.field private smallLogoSelected:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "smallLogoSelected"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "type"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/cbs/app/view/model/Affiliate$1;

    invoke-direct {v0}, Lcom/cbs/app/view/model/Affiliate$1;-><init>()V

    sput-object v0, Lcom/cbs/app/view/model/Affiliate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-direct {p0, p1}, Lcom/cbs/app/view/model/Affiliate;->readFromParcel(Landroid/os/Parcel;)V

    .line 59
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Affiliate;->type:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Affiliate;->k:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/view/model/Affiliate;->id:I

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Affiliate;->affiliateStation:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Affiliate;->affiliateName:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Affiliate;->affiliateURL:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Affiliate;->logo:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Affiliate;->logoSelected:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Affiliate;->smallLogo:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Affiliate;->smallLogoSelected:Ljava/lang/String;

    .line 172
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public getAffiliateName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/cbs/app/view/model/Affiliate;->affiliateName:Ljava/lang/String;

    return-object v0
.end method

.method public getAffiliateStation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cbs/app/view/model/Affiliate;->affiliateStation:Ljava/lang/String;

    return-object v0
.end method

.method public getAffiliateURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/cbs/app/view/model/Affiliate;->affiliateURL:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/cbs/app/view/model/Affiliate;->id:I

    return v0
.end method

.method public getK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/cbs/app/view/model/Affiliate;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/cbs/app/view/model/Affiliate;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getLogoSelected()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/cbs/app/view/model/Affiliate;->logoSelected:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallLogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/cbs/app/view/model/Affiliate;->smallLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallLogoSelected()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/cbs/app/view/model/Affiliate;->smallLogoSelected:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cbs/app/view/model/Affiliate;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setAffiliateName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/cbs/app/view/model/Affiliate;->affiliateName:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setAffiliateStation(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/cbs/app/view/model/Affiliate;->affiliateStation:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setAffiliateURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/cbs/app/view/model/Affiliate;->affiliateURL:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/cbs/app/view/model/Affiliate;->id:I

    .line 83
    return-void
.end method

.method public setK(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/cbs/app/view/model/Affiliate;->k:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/cbs/app/view/model/Affiliate;->logo:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setLogoSelected(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/cbs/app/view/model/Affiliate;->logoSelected:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setSmallLogo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/cbs/app/view/model/Affiliate;->smallLogo:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setSmallLogoSelected(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/cbs/app/view/model/Affiliate;->smallLogoSelected:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/cbs/app/view/model/Affiliate;->type:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/cbs/app/view/model/Affiliate;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/cbs/app/view/model/Affiliate;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget v0, p0, Lcom/cbs/app/view/model/Affiliate;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget-object v0, p0, Lcom/cbs/app/view/model/Affiliate;->affiliateStation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/cbs/app/view/model/Affiliate;->affiliateName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/cbs/app/view/model/Affiliate;->affiliateURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/cbs/app/view/model/Affiliate;->logo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/cbs/app/view/model/Affiliate;->logoSelected:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/cbs/app/view/model/Affiliate;->smallLogo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/cbs/app/view/model/Affiliate;->smallLogoSelected:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    return-void
.end method
