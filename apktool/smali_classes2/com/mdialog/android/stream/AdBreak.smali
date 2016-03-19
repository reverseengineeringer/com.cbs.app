.class public Lcom/mdialog/android/stream/AdBreak;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdialog/android/stream/AdBreak;->e:Z

    .line 87
    iput-object p1, p0, Lcom/mdialog/android/stream/AdBreak;->a:Ljava/lang/Integer;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/mdialog/android/stream/AdBreak;->b:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/mdialog/android/stream/AdBreak;->d:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lcom/mdialog/android/stream/AdBreak;->c:Ljava/lang/Integer;

    .line 91
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdialog/android/stream/AdBreak;->e:Z

    .line 95
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mdialog/android/stream/AdBreak;->a:Ljava/lang/Integer;

    .line 96
    iput-object p1, p0, Lcom/mdialog/android/stream/AdBreak;->b:Ljava/lang/String;

    .line 97
    iput-object p2, p0, Lcom/mdialog/android/stream/AdBreak;->d:Ljava/lang/String;

    .line 98
    iput-object p3, p0, Lcom/mdialog/android/stream/AdBreak;->c:Ljava/lang/Integer;

    .line 99
    return-void
.end method

.method static a(Ljava/lang/Integer;Lorg/json/JSONObject;)Lcom/mdialog/android/stream/AdBreak;
    .locals 3

    .prologue
    .line 103
    const-string v0, "position"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    const-string v1, "duration"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 105
    new-instance v2, Lcom/mdialog/android/stream/AdBreak;

    invoke-direct {v2, p0, v0, v1}, Lcom/mdialog/android/stream/AdBreak;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v2
.end method

.method static a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/mdialog/android/stream/AdBreak;
    .locals 3

    .prologue
    .line 110
    const-string v0, "position"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    const-string v1, "duration"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 112
    new-instance v2, Lcom/mdialog/android/stream/AdBreak;

    invoke-direct {v2, p0, v0, v1}, Lcom/mdialog/android/stream/AdBreak;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v2
.end method


# virtual methods
.method a(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/mdialog/android/stream/AdBreak;->a:Ljava/lang/Integer;

    .line 63
    return-void
.end method

.method a()Z
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/mdialog/android/stream/AdBreak;->d:Ljava/lang/String;

    const-string v1, "pre"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mdialog/android/stream/AdBreak;->d:Ljava/lang/String;

    const-string v1, "post"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    :cond_0
    const/4 v0, 0x0

    .line 119
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDuration()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mdialog/android/stream/AdBreak;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mdialog/android/stream/AdBreak;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public isUnwatched()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/mdialog/android/stream/AdBreak;->e:Z

    return v0
.end method

.method public setUnwatched(Z)V
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/mdialog/android/stream/AdBreak;->e:Z

    .line 53
    return-void
.end method
