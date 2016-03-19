.class public Lcom/cbs/app/androiddata/model/Promo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Lcom/cbs/app/androiddata/model/ShowDto;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEpisodeVideoCount()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/cbs/app/androiddata/model/Promo;->d:I

    return v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Promo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getShowDto()Lcom/cbs/app/androiddata/model/ShowDto;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Promo;->e:Lcom/cbs/app/androiddata/model/ShowDto;

    return-object v0
.end method

.method public getShowId()J
    .locals 2

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/Promo;->a:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Promo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setEpisodeVideoCount(I)V
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/cbs/app/androiddata/model/Promo;->d:I

    .line 45
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Promo;->c:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setShowDto(Lcom/cbs/app/androiddata/model/ShowDto;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Promo;->e:Lcom/cbs/app/androiddata/model/ShowDto;

    .line 53
    return-void
.end method

.method public setShowId(J)V
    .locals 1

    .prologue
    .line 20
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/Promo;->a:J

    .line 21
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Promo;->b:Ljava/lang/String;

    .line 29
    return-void
.end method
