.class public Lcom/visualon/OSMPUtils/voOSSubtitleLanguageImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPUtils/voOSSubtitleLanguage;


# instance fields
.field mFlag:I

.field mLangName:Ljava/lang/String;

.field mLanguageType:I

.field mReserved1:I

.field mReserved2:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voOSSubtitleLanguageImpl;->mLangName:Ljava/lang/String;

    .line 49
    iput p2, p0, Lcom/visualon/OSMPUtils/voOSSubtitleLanguageImpl;->mLanguageType:I

    .line 50
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSSubtitleLanguageImpl;->mFlag:I

    .line 51
    iput p4, p0, Lcom/visualon/OSMPUtils/voOSSubtitleLanguageImpl;->mReserved1:I

    .line 52
    iput p5, p0, Lcom/visualon/OSMPUtils/voOSSubtitleLanguageImpl;->mReserved2:I

    .line 53
    return-void
.end method


# virtual methods
.method public Flag()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSubtitleLanguageImpl;->mFlag:I

    return v0
.end method

.method public LangName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSSubtitleLanguageImpl;->mLangName:Ljava/lang/String;

    return-object v0
.end method

.method public LanguageType()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSubtitleLanguageImpl;->mLanguageType:I

    return v0
.end method

.method public Reserved1()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSubtitleLanguageImpl;->mReserved1:I

    return v0
.end method

.method public Reserved2()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSubtitleLanguageImpl;->mReserved2:I

    return v0
.end method
