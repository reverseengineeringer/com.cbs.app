.class public Lcom/cbs/app/pid/PidResponseHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lorg/w3c/dom/Document;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lorg/w3c/dom/Document;

.field private h:Ljava/lang/String;

.field private i:Lcom/mdialog/android/Stream;

.field private j:J

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/pid/CBSAd;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/cbs/app/pid/PidResponseHolder;->a:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/cbs/app/pid/PidResponseHolder;->b:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/cbs/app/pid/PidResponseHolder;->c:Lorg/w3c/dom/Document;

    .line 21
    iput-object v0, p0, Lcom/cbs/app/pid/PidResponseHolder;->d:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/cbs/app/pid/PidResponseHolder;->e:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/cbs/app/pid/PidResponseHolder;->f:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/cbs/app/pid/PidResponseHolder;->g:Lorg/w3c/dom/Document;

    .line 28
    iput-object v0, p0, Lcom/cbs/app/pid/PidResponseHolder;->h:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/cbs/app/pid/PidResponseHolder;->i:Lcom/mdialog/android/Stream;

    .line 47
    iput-object v0, p0, Lcom/cbs/app/pid/PidResponseHolder;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/pid/CBSAd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cbs/app/pid/PidResponseHolder;->k:Ljava/util/List;

    return-object v0
.end method

.method public getClosedCaptionUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/cbs/app/pid/PidResponseHolder;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/cbs/app/pid/PidResponseHolder;->j:J

    return-wide v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cbs/app/pid/PidResponseHolder;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalSmilContentUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/cbs/app/pid/PidResponseHolder;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cbs/app/pid/PidResponseHolder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSmilDocument()Lorg/w3c/dom/Document;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cbs/app/pid/PidResponseHolder;->c:Lorg/w3c/dom/Document;

    return-object v0
.end method

.method public getSmilUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cbs/app/pid/PidResponseHolder;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamingUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cbs/app/pid/PidResponseHolder;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getVmapDocument()Lorg/w3c/dom/Document;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/cbs/app/pid/PidResponseHolder;->g:Lorg/w3c/dom/Document;

    return-object v0
.end method

.method public getVmapUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/cbs/app/pid/PidResponseHolder;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getmDialogStream()Lcom/mdialog/android/Stream;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cbs/app/pid/PidResponseHolder;->i:Lcom/mdialog/android/Stream;

    return-object v0
.end method

.method public setAds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/pid/CBSAd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    iput-object p1, p0, Lcom/cbs/app/pid/PidResponseHolder;->k:Ljava/util/List;

    .line 123
    return-void
.end method

.method public setClosedCaptionUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/cbs/app/pid/PidResponseHolder;->e:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setDuration(J)V
    .locals 1

    .prologue
    .line 126
    iput-wide p1, p0, Lcom/cbs/app/pid/PidResponseHolder;->j:J

    .line 127
    return-void
.end method

.method public setGuid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/cbs/app/pid/PidResponseHolder;->l:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setOriginalSmilContentUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/cbs/app/pid/PidResponseHolder;->d:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/cbs/app/pid/PidResponseHolder;->a:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setSmilDocument(Lorg/w3c/dom/Document;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/cbs/app/pid/PidResponseHolder;->c:Lorg/w3c/dom/Document;

    .line 79
    return-void
.end method

.method public setSmilUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/cbs/app/pid/PidResponseHolder;->b:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setStreamingUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/cbs/app/pid/PidResponseHolder;->h:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setVmapDocument(Lorg/w3c/dom/Document;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/cbs/app/pid/PidResponseHolder;->g:Lorg/w3c/dom/Document;

    .line 95
    return-void
.end method

.method public setVmapUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/cbs/app/pid/PidResponseHolder;->f:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setmDialogStream(Lcom/mdialog/android/Stream;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/cbs/app/pid/PidResponseHolder;->i:Lcom/mdialog/android/Stream;

    .line 45
    return-void
.end method
