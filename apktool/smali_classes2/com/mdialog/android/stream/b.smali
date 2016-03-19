.class public Lcom/mdialog/android/stream/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Ljava/lang/String;

.field private c:Lcom/mdialog/android/stream/AdBreak;

.field private d:Lcom/mdialog/android/stream/AdEvent;

.field private e:Lcom/mdialog/android/stream/a;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/mdialog/android/Stream$Type;)Lcom/mdialog/android/stream/b;
    .locals 4

    .prologue
    .line 84
    new-instance v2, Lcom/mdialog/android/stream/b;

    invoke-direct {v2}, Lcom/mdialog/android/stream/b;-><init>()V

    .line 85
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 87
    sget-object v1, Lcom/mdialog/android/Stream$Type;->VIDEO_ON_DEMAND:Lcom/mdialog/android/Stream$Type;

    if-ne p2, v1, :cond_4

    .line 89
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 95
    :goto_0
    const-string v0, "ad_break"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "ad_break"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 99
    sget-object v3, Lcom/mdialog/android/Stream$Type;->VIDEO_ON_DEMAND:Lcom/mdialog/android/Stream$Type;

    if-ne p2, v3, :cond_5

    .line 100
    invoke-static {v1, v0}, Lcom/mdialog/android/stream/AdBreak;->a(Ljava/lang/Integer;Lorg/json/JSONObject;)Lcom/mdialog/android/stream/AdBreak;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mdialog/android/stream/b;->a(Lcom/mdialog/android/stream/AdBreak;)V

    .line 106
    :cond_0
    :goto_1
    const-string v0, "ad"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    const-string v0, "ad"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 110
    sget-object v3, Lcom/mdialog/android/Stream$Type;->VIDEO_ON_DEMAND:Lcom/mdialog/android/Stream$Type;

    if-ne p2, v3, :cond_6

    .line 111
    invoke-static {v1, v0}, Lcom/mdialog/android/stream/AdEvent;->a(Ljava/lang/Integer;Lorg/json/JSONObject;)Lcom/mdialog/android/stream/AdEvent;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mdialog/android/stream/b;->a(Lcom/mdialog/android/stream/AdEvent;)V

    .line 117
    :cond_1
    :goto_2
    const-string v0, "click_through"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    const-string v0, "click_through"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 121
    sget-object v3, Lcom/mdialog/android/Stream$Type;->VIDEO_ON_DEMAND:Lcom/mdialog/android/Stream$Type;

    if-ne p2, v3, :cond_7

    .line 122
    invoke-static {v1, v0}, Lcom/mdialog/android/stream/a;->a(Ljava/lang/Integer;Lorg/json/JSONObject;)Lcom/mdialog/android/stream/a;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/mdialog/android/stream/b;->a(Lcom/mdialog/android/stream/a;)V

    .line 128
    :cond_2
    :goto_3
    const-string v0, "tracking"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    const-string v0, "tracking"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/mdialog/android/a/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/mdialog/android/stream/b;->a(Ljava/util/ArrayList;)V

    .line 133
    :cond_3
    sget-object v0, Lcom/mdialog/android/Stream$Type;->VIDEO_ON_DEMAND:Lcom/mdialog/android/Stream$Type;

    if-ne p2, v0, :cond_8

    .line 134
    invoke-virtual {v2, v1}, Lcom/mdialog/android/stream/b;->a(Ljava/lang/Integer;)V

    .line 139
    :goto_4
    return-object v2

    .line 91
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_4
    move-object v1, v0

    goto :goto_0

    .line 102
    :cond_5
    invoke-static {p0, v0}, Lcom/mdialog/android/stream/AdBreak;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/mdialog/android/stream/AdBreak;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mdialog/android/stream/b;->a(Lcom/mdialog/android/stream/AdBreak;)V

    goto :goto_1

    .line 113
    :cond_6
    invoke-static {p0, v0}, Lcom/mdialog/android/stream/AdEvent;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/mdialog/android/stream/AdEvent;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mdialog/android/stream/b;->a(Lcom/mdialog/android/stream/AdEvent;)V

    goto :goto_2

    .line 124
    :cond_7
    invoke-static {p0, v0}, Lcom/mdialog/android/stream/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/mdialog/android/stream/a;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/mdialog/android/stream/b;->a(Lcom/mdialog/android/stream/a;)V

    goto :goto_3

    .line 136
    :cond_8
    invoke-virtual {v2, p0}, Lcom/mdialog/android/stream/b;->a(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private a(Lcom/mdialog/android/stream/a;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mdialog/android/stream/b;->e:Lcom/mdialog/android/stream/a;

    .line 68
    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    iput-object p1, p0, Lcom/mdialog/android/stream/b;->f:Ljava/util/ArrayList;

    .line 145
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mdialog/android/stream/b;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public a(Lcom/mdialog/android/stream/AdBreak;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/mdialog/android/stream/b;->c:Lcom/mdialog/android/stream/AdBreak;

    .line 48
    return-void
.end method

.method public a(Lcom/mdialog/android/stream/AdEvent;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/mdialog/android/stream/b;->d:Lcom/mdialog/android/stream/AdEvent;

    .line 58
    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/mdialog/android/stream/b;->a:Ljava/lang/Integer;

    .line 28
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/mdialog/android/stream/b;->b:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mdialog/android/stream/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/mdialog/android/stream/AdBreak;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mdialog/android/stream/b;->c:Lcom/mdialog/android/stream/AdBreak;

    return-object v0
.end method

.method public d()Lcom/mdialog/android/stream/AdEvent;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mdialog/android/stream/b;->d:Lcom/mdialog/android/stream/AdEvent;

    return-object v0
.end method

.method public e()Lcom/mdialog/android/stream/a;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mdialog/android/stream/b;->e:Lcom/mdialog/android/stream/a;

    return-object v0
.end method

.method public f()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/mdialog/android/stream/b;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 73
    const-string v1, "stream time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/mdialog/android/stream/b;->a:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 74
    const-string v2, "\nkey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/mdialog/android/stream/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 75
    const-string v2, "\ntracking urls: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/mdialog/android/stream/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 76
    const-string v2, "\nad break: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/mdialog/android/stream/b;->c:Lcom/mdialog/android/stream/AdBreak;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 77
    const-string v2, "\nclick through: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/mdialog/android/stream/b;->e:Lcom/mdialog/android/stream/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
