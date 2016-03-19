.class public Lcom/visualon/OSMPPlayer/VOOSMPInitParam;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mContext:Ljava/lang/Object;

.field private mLibPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPInitParam;->mContext:Ljava/lang/Object;

    .line 19
    iput-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPInitParam;->mLibPath:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public getContext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPInitParam;->mContext:Ljava/lang/Object;

    return-object v0
.end method

.method public getLibraryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPInitParam;->mLibPath:Ljava/lang/String;

    return-object v0
.end method

.method public setContext(Ljava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 56
    iput-object p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPInitParam;->mContext:Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method public setLibraryPath(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 69
    iput-object p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPInitParam;->mLibPath:Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method
