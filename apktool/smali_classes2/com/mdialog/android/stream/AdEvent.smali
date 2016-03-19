.class public Lcom/mdialog/android/stream/AdEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Integer;

.field private d:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Ljava/lang/Integer;Lorg/json/JSONArray;Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/mdialog/android/stream/AdEvent;->a:Ljava/lang/Integer;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/mdialog/android/stream/AdEvent;->b:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lcom/mdialog/android/stream/AdEvent;->c:Ljava/lang/Integer;

    .line 77
    iput-object p2, p0, Lcom/mdialog/android/stream/AdEvent;->d:Lorg/json/JSONArray;

    .line 78
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mdialog/android/stream/AdEvent;->a:Ljava/lang/Integer;

    .line 83
    iput-object p1, p0, Lcom/mdialog/android/stream/AdEvent;->b:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Lcom/mdialog/android/stream/AdEvent;->c:Ljava/lang/Integer;

    .line 85
    iput-object p2, p0, Lcom/mdialog/android/stream/AdEvent;->d:Lorg/json/JSONArray;

    .line 86
    return-void
.end method

.method static a(Ljava/lang/Integer;Lorg/json/JSONObject;)Lcom/mdialog/android/stream/AdEvent;
    .locals 3

    .prologue
    .line 90
    const-string v0, "duration"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 91
    const-string v1, "companion_ads"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 92
    new-instance v2, Lcom/mdialog/android/stream/AdEvent;

    invoke-direct {v2, p0, v1, v0}, Lcom/mdialog/android/stream/AdEvent;-><init>(Ljava/lang/Integer;Lorg/json/JSONArray;Ljava/lang/Integer;)V

    return-object v2
.end method

.method static a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/mdialog/android/stream/AdEvent;
    .locals 3

    .prologue
    .line 97
    const-string v0, "duration"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 98
    const-string v1, "companion_ads"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 99
    new-instance v2, Lcom/mdialog/android/stream/AdEvent;

    invoke-direct {v2, p0, v1, v0}, Lcom/mdialog/android/stream/AdEvent;-><init>(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Integer;)V

    return-object v2
.end method


# virtual methods
.method public getCompanionAds()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mdialog/android/stream/AdEvent;->d:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getDuration()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mdialog/android/stream/AdEvent;->c:Ljava/lang/Integer;

    return-object v0
.end method
