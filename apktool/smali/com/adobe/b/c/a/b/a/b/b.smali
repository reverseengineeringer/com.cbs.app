.class public final Lcom/adobe/b/c/a/b/a/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/b/c/a/b/a/b/b$1;,
        Lcom/adobe/b/c/a/b/a/b/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/adobe/b/a/b;


# direct methods
.method public constructor <init>(Lcom/adobe/b/a/b;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/b/b;->a:Lcom/adobe/b/a/b;

    .line 43
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 167
    new-instance v0, Lcom/adobe/b/c/a;

    const-string v1, "Invalid input data"

    invoke-direct {v0, v1, p1}, Lcom/adobe/b/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/b/b;->a:Lcom/adobe/b/a/b;

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/b/b;->a:Lcom/adobe/b/a/b;

    invoke-interface {v1, v0}, Lcom/adobe/b/a/b;->call(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;[Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 50
    if-nez p1, :cond_0

    .line 51
    const-string v0, "Data cannot be null"

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    .line 160
    :goto_0
    return v0

    .line 54
    :cond_0
    array-length v1, p2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1f

    aget-object v2, p2, v0

    .line 55
    invoke-static {v2}, Lcom/adobe/b/c/a/b/a/b/b$a;->valueOf(Ljava/lang/String;)Lcom/adobe/b/c/a/b/a/b/b$a;

    move-result-object v3

    .line 57
    sget-object v4, Lcom/adobe/b/c/a/b/a/b/b$1;->a:[I

    invoke-virtual {v3}, Lcom/adobe/b/c/a/b/a/b/b$a;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to validate unknown parameter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 60
    :pswitch_0
    const-string v2, "videoId"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "The ID for the main video must be specified."

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 61
    :cond_1
    const-string v2, "videoId"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "videoId"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-nez v2, :cond_3

    .line 62
    :cond_2
    const-string v0, "The ID for the main video must be a String."

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 63
    :cond_3
    const-string v2, "videoId"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    if-ne v2, v3, :cond_1e

    const-string v0, "The ID for the main video cannot be an empty string."

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 67
    :pswitch_1
    const-string v2, "playerName"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 68
    const-string v0, "The player name for the main video must be specified."

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 69
    :cond_4
    const-string v2, "playerName"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v2, "playerName"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-nez v2, :cond_6

    .line 70
    :cond_5
    const-string v0, "The player name for the main video must be a String."

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 71
    :cond_6
    const-string v2, "playerName"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    if-ne v2, v3, :cond_1e

    .line 72
    const-string v0, "The player name for the main video cannot be an empty string."

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 76
    :pswitch_2
    const-string v2, "videoLength"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 77
    const-string v0, "The length of the main video must be specified."

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 78
    :cond_7
    const-string v2, "videoLength"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    const-string v2, "videoLength"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Number;

    if-nez v2, :cond_1e

    .line 79
    :cond_8
    const-string v0, "The length of the main video must be a Number."

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 83
    :pswitch_3
    const-string v2, "streamType"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 84
    const-string v0, "The stream type for the main video must be specified."

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 85
    :cond_9
    const-string v2, "streamType"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    const-string v2, "streamType"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-nez v2, :cond_b

    .line 86
    :cond_a
    const-string v0, "The stream type for the main video must be a String."

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 87
    :cond_b
    const-string v2, "streamType"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    if-ne v2, v3, :cond_1e

    .line 88
    const-string v0, "The stream type for the main video cannot be an empty string."

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 92
    :pswitch_4
    const-string v2, "playhead"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 93
    const-string v0, "The playhead for the main video must be specified."

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 94
    :cond_c
    const-string v2, "playhead"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_d

    const-string v2, "playhead"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Double;

    if-nez v2, :cond_1e

    .line 95
    :cond_d
    const-string v0, "The playhead for the main video must be a Double."

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 101
    :pswitch_5
    const-string v2, "podPlayerName"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 102
    const-string v0, "The player name for the ad-break must be specified."

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 103
    :cond_e
    const-string v2, "podPlayerName"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_f

    const-string v2, "podPlayerName"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 104
    :cond_f
    const-string v0, "The player name for the ad-break must be a String."

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 105
    :cond_10
    const-string v2, "podPlayerName"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    if-ne v2, v3, :cond_1e

    .line 106
    const-string v0, "The player name for the ad-break cannot be an empty string."

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 110
    :pswitch_6
    const-string v2, "podPosition"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 111
    const-string v0, "Position (index) of the ad-break must be specified."

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 112
    :cond_11
    const-string v2, "podPosition"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_12

    const-string v2, "podPosition"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Number;

    if-nez v2, :cond_1e

    .line 113
    :cond_12
    const-string v0, "Position (index) of the ad-break must be a Number."

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 119
    :pswitch_7
    const-string v2, "adId"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v0, "The ad ID must be specified."

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 120
    :cond_13
    const-string v2, "adId"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_14

    const-string v2, "adId"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-nez v2, :cond_15

    .line 121
    :cond_14
    const-string v0, "The ad ID must be a String."

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 122
    :cond_15
    const-string v2, "adId"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    if-ne v2, v3, :cond_1e

    const-string v0, "The ad ID cannot be an empty string."

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 126
    :pswitch_8
    const-string v2, "adPosition"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v0, "Position (index) of the ad must be specified."

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 127
    :cond_16
    const-string v2, "adPosition"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_17

    const-string v2, "adPosition"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Number;

    if-nez v2, :cond_1e

    .line 128
    :cond_17
    const-string v0, "Position (index) of the ad must be a Number."

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 134
    :pswitch_9
    const-string v2, "chapterPosition"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 135
    const-string v0, "Position (index) of the chapter must be specified."

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 136
    :cond_18
    const-string v2, "chapterPosition"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_19

    const-string v2, "chapterPosition"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Number;

    if-nez v2, :cond_1e

    .line 137
    :cond_19
    const-string v0, "Position (index) of the chapter must be a Number."

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 141
    :pswitch_a
    const-string v2, "chapterOffset"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 142
    const-string v0, "Chapter start-time (offset) must be specified."

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 143
    :cond_1a
    const-string v2, "chapterOffset"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1b

    const-string v2, "chapterOffset"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Number;

    if-nez v2, :cond_1e

    .line 144
    :cond_1b
    const-string v0, "Chapter start-time (offset) must be a Number."

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 148
    :pswitch_b
    const-string v2, "chapterLength"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 149
    const-string v0, "The length of the chapter must be specified."

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 150
    :cond_1c
    const-string v2, "chapterLength"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1d

    const-string v2, "chapterLength"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Number;

    if-nez v2, :cond_1e

    .line 151
    :cond_1d
    const-string v0, "The length of the chapter must be a Number."

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 54
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 160
    :cond_1f
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
