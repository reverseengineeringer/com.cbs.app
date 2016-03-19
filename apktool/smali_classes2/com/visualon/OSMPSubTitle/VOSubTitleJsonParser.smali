.class public Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final EDGE_TYPE_DEPRESSED:I = 0x2

.field static final EDGE_TYPE_LEFT_DROP_SHADOW:I = 0x4

.field static final EDGE_TYPE_NONE:I = 0x0

.field static final EDGE_TYPE_RAISED:I = 0x1

.field static final EDGE_TYPE_RIGHT_DROP_SHADOW:I = 0x5

.field static final EDGE_TYPE_UNIFORM:I = 0x3

.field private static final TAG:Ljava/lang/String; = "VOSubTitleJsonParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAlpha(Ljava/lang/String;D)Ljava/lang/String;
    .locals 5

    .prologue
    .line 117
    const-wide v0, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    .line 118
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    :cond_0
    const-string v1, "#"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 125
    return-object v0
.end method

.method private extractValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 28
    const-string v0, "[^0-9.]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 30
    const-string v1, "VOSubTitleJsonParser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "extractValue from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    float-to-int v0, v0

    return v0
.end method

.method private getRectData(Lorg/json/JSONObject;)Lcom/visualon/OSMPSubTitle/DataObject/JSRect;
    .locals 4

    .prologue
    .line 39
    new-instance v1, Lcom/visualon/OSMPSubTitle/DataObject/JSRect;

    invoke-direct {v1}, Lcom/visualon/OSMPSubTitle/DataObject/JSRect;-><init>()V

    .line 41
    :try_start_0
    const-string v0, "rect"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 42
    const-string v2, "top"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "top"

    invoke-direct {p0, v2, v3}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->extractValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/visualon/OSMPSubTitle/DataObject/JSRect;->top:I

    .line 43
    const-string v2, "left"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "left"

    invoke-direct {p0, v2, v3}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->extractValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/visualon/OSMPSubTitle/DataObject/JSRect;->left:I

    .line 44
    const-string v2, "right"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "right"

    invoke-direct {p0, v2, v3}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->extractValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/visualon/OSMPSubTitle/DataObject/JSRect;->right:I

    .line 45
    const-string v2, "bottom"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "bottom"

    invoke-direct {p0, v0, v2}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->extractValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/visualon/OSMPSubTitle/DataObject/JSRect;->bottom:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-object v1

    .line 48
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private getSegment(Lorg/json/JSONObject;)Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;
    .locals 7

    .prologue
    .line 77
    const/4 v1, 0x0

    .line 79
    :try_start_0
    new-instance v0, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;

    invoke-direct {v0}, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 80
    :try_start_1
    const-string v1, "text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->text:Ljava/lang/String;

    .line 82
    const-string v1, "format"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 85
    :try_start_2
    const-string v1, "VOSubTitleJsonParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetText: ___"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->text:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->uencodeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "___"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "size"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 90
    :goto_0
    :try_start_3
    const-string v1, "bold"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->isBold:Z

    .line 91
    const-string v1, "italic"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->isItalic:Z

    .line 92
    const-string v1, "opacity"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-int v1, v4

    iput v1, v0, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->opacity:I

    .line 93
    const-string v1, "color"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->color:Ljava/lang/String;

    .line 94
    const-string v1, "size"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    iput-object v1, v0, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->fontSizeStr:Ljava/lang/String;

    .line 96
    invoke-direct {p0, v1}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->isUnitPercentage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    const-string v3, "fontSize"

    invoke-direct {p0, v1, v3}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->extractValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v1, v3

    iput v1, v0, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->fontSize:F

    .line 102
    :goto_1
    const-string v1, "font"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->fontFamily:Ljava/lang/String;

    .line 104
    const-string v1, "edge"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 105
    const-string v2, "opacity"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->edgeOpacity:D

    .line 106
    const-string v2, "color"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->edgeColor:Ljava/lang/String;

    .line 107
    const-string v2, "style"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->edgeStyle:Ljava/lang/String;

    .line 113
    :goto_2
    return-object v0

    .line 87
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 110
    :catch_1
    move-exception v1

    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 99
    :cond_0
    :try_start_4
    const-string v3, "fontSize"

    invoke-direct {p0, v1, v3}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->extractValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->fontSize:F
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 110
    :catch_2
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_3
.end method

.method private getWindowData(Lorg/json/JSONObject;)Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;
    .locals 4

    .prologue
    .line 55
    new-instance v1, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;

    invoke-direct {v1}, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;-><init>()V

    .line 57
    :try_start_0
    const-string v0, "window"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 58
    invoke-direct {p0, v0}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->getRectData(Lorg/json/JSONObject;)Lcom/visualon/OSMPSubTitle/DataObject/JSRect;

    move-result-object v2

    iput-object v2, v1, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->jsRect:Lcom/visualon/OSMPSubTitle/DataObject/JSRect;

    .line 59
    sget-object v2, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;->HORIZONTAL:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;

    const-string v3, "ha"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->setAligment(Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;Ljava/lang/String;)V

    .line 60
    sget-object v2, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;->VERTICAL:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;

    const-string v3, "va"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->setAligment(Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;Ljava/lang/String;)V

    .line 61
    const-string v2, "opacity"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->opacity:D

    .line 62
    const-string v2, "color"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->color:Ljava/lang/String;

    .line 64
    const-string v2, "edge"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 65
    const-string v2, "opacity"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->edgeOpacity:D

    .line 66
    const-string v2, "color"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->edgeColor:Ljava/lang/String;

    .line 67
    const-string v2, "style"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->edgeStyle:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-object v1

    .line 70
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private isUnitPercentage(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 35
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mappingEdgeType(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 138
    const-string v1, "raised"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    const/4 v0, 0x1

    .line 150
    :cond_0
    :goto_0
    return v0

    .line 140
    :cond_1
    const-string v1, "depressed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    const/4 v0, 0x2

    goto :goto_0

    .line 142
    :cond_2
    const-string v1, "uniform"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 143
    const/4 v0, 0x3

    goto :goto_0

    .line 144
    :cond_3
    const-string v1, "left-shadowed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 145
    const/4 v0, 0x4

    goto :goto_0

    .line 146
    :cond_4
    const-string v1, "right-shadowed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private mappingFontFamily(Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 181
    .line 183
    const-string v1, "default"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v0

    .line 185
    :cond_1
    const-string v1, "courier"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 186
    const/16 v0, 0xe

    goto :goto_0

    .line 187
    :cond_2
    const-string v1, "monospace-serif"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 188
    const/4 v0, 0x1

    goto :goto_0

    .line 189
    :cond_3
    const-string v1, "times new roman"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 190
    const/16 v0, 0xd

    goto :goto_0

    .line 191
    :cond_4
    const-string v1, "helvetica"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 192
    const/16 v0, 0xf

    goto :goto_0

    .line 193
    :cond_5
    const-string v1, "monospace"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 194
    const/16 v0, 0x8

    goto :goto_0

    .line 195
    :cond_6
    const-string v1, "arial"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 196
    const/16 v0, 0x10

    goto :goto_0

    .line 197
    :cond_7
    const-string v1, "casual"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 198
    const/4 v0, 0x5

    goto :goto_0

    .line 199
    :cond_8
    const-string v1, "cursive"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 200
    const/4 v0, 0x6

    goto :goto_0

    .line 201
    :cond_9
    const-string v1, "sans-serif-smallcaps"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    const/4 v0, 0x7

    goto :goto_0
.end method


# virtual methods
.method public parseObj2SubtitleInfo(Ljava/lang/String;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;
    .locals 3

    .prologue
    .line 328
    const-string v0, "VOSubTitleJsonParser"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "var parseObj2SubtitleInfo = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->parseObj2SubtitleInfo(Lorg/json/JSONObject;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    move-result-object v0

    .line 336
    iput-object p1, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->jsonString:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_0
    return-object v0

    .line 339
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 341
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseObj2SubtitleInfo(Lorg/json/JSONObject;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;
    .locals 19

    .prologue
    .line 209
    new-instance v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    invoke-direct {v3}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;-><init>()V

    .line 212
    :try_start_0
    new-instance v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    invoke-direct {v2}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    .line 214
    :try_start_1
    const-string v3, "rect"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 215
    const-string v4, "top"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "top"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->extractValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    iput v4, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->rectTop:F

    .line 216
    const-string v4, "left"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "left"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->extractValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    iput v4, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->rectLeft:F

    .line 217
    const-string v4, "right"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "right"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->extractValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    iput v4, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->rectRight:F

    .line 218
    const-string v4, "bottom"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "bottom"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->extractValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->rectBottom:F

    .line 220
    const-string v3, "blocks"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 221
    const/4 v3, 0x0

    move v6, v3

    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v6, v3, :cond_2

    .line 223
    new-instance v8, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;

    invoke-direct {v8}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;-><init>()V

    .line 225
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 228
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->getWindowData(Lorg/json/JSONObject;)Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;

    move-result-object v4

    .line 230
    iget-object v5, v8, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->subtitleRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v5, v5, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget-object v9, v4, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->jsRect:Lcom/visualon/OSMPSubTitle/DataObject/JSRect;

    iget v9, v9, Lcom/visualon/OSMPSubTitle/DataObject/JSRect;->top:I

    iput v9, v5, Landroid/graphics/Rect;->top:I

    .line 231
    iget-object v5, v8, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->subtitleRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v5, v5, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget-object v9, v4, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->jsRect:Lcom/visualon/OSMPSubTitle/DataObject/JSRect;

    iget v9, v9, Lcom/visualon/OSMPSubTitle/DataObject/JSRect;->bottom:I

    iput v9, v5, Landroid/graphics/Rect;->bottom:I

    .line 232
    iget-object v5, v8, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->subtitleRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v5, v5, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget-object v9, v4, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->jsRect:Lcom/visualon/OSMPSubTitle/DataObject/JSRect;

    iget v9, v9, Lcom/visualon/OSMPSubTitle/DataObject/JSRect;->left:I

    iput v9, v5, Landroid/graphics/Rect;->left:I

    .line 233
    iget-object v5, v8, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->subtitleRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v5, v5, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget-object v9, v4, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->jsRect:Lcom/visualon/OSMPSubTitle/DataObject/JSRect;

    iget v9, v9, Lcom/visualon/OSMPSubTitle/DataObject/JSRect;->right:I

    iput v9, v5, Landroid/graphics/Rect;->right:I

    .line 234
    iget-object v5, v8, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->subtitleRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v9, v4, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->color:Ljava/lang/String;

    iget-wide v10, v4, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->opacity:D

    invoke-static {v9, v10, v11}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->addAlpha(Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    iput v9, v5, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->color:I

    .line 236
    iget-object v5, v8, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->subtitleRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v9, v4, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->edgeStyle:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->mappingEdgeType(Ljava/lang/String;)I

    move-result v9

    iput v9, v5, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->edgeType:I

    .line 237
    iget-object v5, v8, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->subtitleRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v9, v4, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->edgeColor:Ljava/lang/String;

    iget-wide v10, v4, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->edgeOpacity:D

    invoke-static {v9, v10, v11}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->addAlpha(Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iput v4, v5, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->edgeColor:I

    .line 240
    const-string v4, "lines"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 241
    const/4 v3, 0x0

    move v5, v3

    :goto_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v5, v3, :cond_4

    .line 242
    new-instance v10, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;

    invoke-direct {v10}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;-><init>()V

    .line 243
    new-instance v3, Lcom/visualon/OSMPSubTitle/DataObject/JSLine;

    invoke-direct {v3}, Lcom/visualon/OSMPSubTitle/DataObject/JSLine;-><init>()V

    .line 245
    invoke-virtual {v9, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 247
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->getWindowData(Lorg/json/JSONObject;)Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;

    move-result-object v11

    iput-object v11, v3, Lcom/visualon/OSMPSubTitle/DataObject/JSLine;->jsWindow:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;

    .line 250
    iget-object v11, v10, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v11, v11, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v11, v11, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget-object v12, v3, Lcom/visualon/OSMPSubTitle/DataObject/JSLine;->jsWindow:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;

    iget-object v12, v12, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->jsRect:Lcom/visualon/OSMPSubTitle/DataObject/JSRect;

    iget v12, v12, Lcom/visualon/OSMPSubTitle/DataObject/JSRect;->top:I

    iput v12, v11, Landroid/graphics/Rect;->top:I

    .line 251
    iget-object v11, v10, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v11, v11, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v11, v11, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget-object v12, v3, Lcom/visualon/OSMPSubTitle/DataObject/JSLine;->jsWindow:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;

    iget-object v12, v12, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->jsRect:Lcom/visualon/OSMPSubTitle/DataObject/JSRect;

    iget v12, v12, Lcom/visualon/OSMPSubTitle/DataObject/JSRect;->bottom:I

    iput v12, v11, Landroid/graphics/Rect;->bottom:I

    .line 252
    iget-object v11, v10, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v11, v11, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v11, v11, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget-object v12, v3, Lcom/visualon/OSMPSubTitle/DataObject/JSLine;->jsWindow:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;

    iget-object v12, v12, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->jsRect:Lcom/visualon/OSMPSubTitle/DataObject/JSRect;

    iget v12, v12, Lcom/visualon/OSMPSubTitle/DataObject/JSRect;->right:I

    iput v12, v11, Landroid/graphics/Rect;->right:I

    .line 253
    iget-object v11, v10, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v11, v11, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v11, v11, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget-object v12, v3, Lcom/visualon/OSMPSubTitle/DataObject/JSLine;->jsWindow:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;

    iget-object v12, v12, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->jsRect:Lcom/visualon/OSMPSubTitle/DataObject/JSRect;

    iget v12, v12, Lcom/visualon/OSMPSubTitle/DataObject/JSRect;->left:I

    iput v12, v11, Landroid/graphics/Rect;->left:I

    .line 254
    iget-object v11, v10, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v11, v11, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v12, v3, Lcom/visualon/OSMPSubTitle/DataObject/JSLine;->jsWindow:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;

    iget-object v12, v12, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->color:Ljava/lang/String;

    iget-object v13, v3, Lcom/visualon/OSMPSubTitle/DataObject/JSLine;->jsWindow:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;

    iget-wide v14, v13, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->opacity:D

    invoke-static {v12, v14, v15}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->addAlpha(Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    iput v12, v11, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->color:I

    .line 255
    iget-object v11, v10, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v11, v11, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v12, v3, Lcom/visualon/OSMPSubTitle/DataObject/JSLine;->jsWindow:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;

    iget-object v12, v12, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->edgeStyle:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->mappingEdgeType(Ljava/lang/String;)I

    move-result v12

    iput v12, v11, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->edgeType:I

    .line 256
    iget-object v11, v10, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v11, v11, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v12, v3, Lcom/visualon/OSMPSubTitle/DataObject/JSLine;->jsWindow:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;

    iget-object v12, v12, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->edgeColor:Ljava/lang/String;

    iget-object v13, v3, Lcom/visualon/OSMPSubTitle/DataObject/JSLine;->jsWindow:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;

    iget-wide v14, v13, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->edgeOpacity:D

    invoke-static {v12, v14, v15}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->addAlpha(Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    iput v12, v11, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->edgeColor:I

    .line 257
    iget-object v11, v10, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v12, v3, Lcom/visualon/OSMPSubTitle/DataObject/JSLine;->jsWindow:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;

    iget-object v12, v12, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->horizontalAlignment:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    invoke-virtual {v12}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->getValue()I

    move-result v12

    iput v12, v11, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->horizontalAlignment:I

    .line 258
    iget-object v11, v10, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/JSLine;->jsWindow:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->verticalAlignment:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;

    invoke-virtual {v3}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;->getValue()I

    move-result v3

    iput v3, v11, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->verticalAlignment:I

    .line 260
    const-string v3, "segments"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 261
    const/4 v3, 0x0

    move v4, v3

    :goto_2
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v4, v3, :cond_3

    .line 262
    invoke-virtual {v11, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 263
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->getSegment(Lorg/json/JSONObject;)Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;

    move-result-object v12

    .line 264
    new-instance v13, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;

    invoke-direct {v13}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 271
    :try_start_2
    iget-object v3, v12, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    .line 272
    iget-object v3, v12, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->text:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->uencodeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 273
    if-lez v14, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_0

    .line 274
    iget-object v3, v12, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->text:Ljava/lang/String;

    .line 278
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_1

    .line 279
    const-string v14, "\r"

    const-string v15, ""

    invoke-virtual {v3, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 280
    const-string v14, "\n"

    const-string v15, ""

    invoke-virtual {v3, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 283
    :cond_1
    const-string v14, "VOSubTitleJsonParser"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "=> ConvertUTF16 = _"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    iput-object v3, v12, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->text:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 289
    :goto_3
    :try_start_3
    iget-object v3, v12, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->text:Ljava/lang/String;

    iput-object v3, v13, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->text:Ljava/lang/String;

    .line 291
    new-instance v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    invoke-direct {v3}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;-><init>()V

    iput-object v3, v13, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    .line 292
    iget-object v3, v13, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->fontInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;

    iget v14, v12, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->fontSize:F

    iput v14, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;->fontSize:F

    .line 293
    iget-object v3, v13, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->fontInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;

    iget-object v14, v12, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->fontSizeStr:Ljava/lang/String;

    iput-object v14, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;->fontSizeStr:Ljava/lang/String;

    .line 294
    iget-object v3, v13, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->fontInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;

    iget-object v14, v12, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->fontFamily:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->mappingFontFamily(Ljava/lang/String;)I

    move-result v14

    iput v14, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;->fontStyle:I

    .line 295
    iget-object v3, v13, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->fontInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;

    iget-object v14, v12, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->color:Ljava/lang/String;

    iget v15, v12, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->opacity:I

    int-to-double v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->addAlpha(Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    iput v14, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;->fontColor:I

    .line 297
    iget-object v3, v13, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;

    iget-boolean v14, v12, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->isItalic:Z

    iput-boolean v14, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->isItalic:Z

    .line 298
    iget-object v3, v13, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;

    iget-boolean v14, v12, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->isBold:Z

    iput-boolean v14, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->isBold:Z

    .line 299
    iget-object v3, v13, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;

    iget-boolean v14, v12, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->hasTextUnderline:Z

    iput-boolean v14, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->hasUnderline:Z

    .line 300
    iget-object v3, v13, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;

    iget-object v14, v12, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->edgeStyle:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->mappingEdgeType(Ljava/lang/String;)I

    move-result v14

    iput v14, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->edgeType:I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 302
    :try_start_4
    iget-object v3, v12, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->edgeColor:Ljava/lang/String;

    iget-wide v14, v12, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->edgeOpacity:D

    invoke-static {v3, v14, v15}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->addAlpha(Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    .line 303
    const-string v14, "VOSubTitleJsonParser"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "edgeColor: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v12, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->edgeColor:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "->"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    iget-object v14, v13, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v14, v14, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, v14, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->eddgeColor:I

    .line 305
    iget-object v3, v10, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->segmentTextInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    .line 261
    :goto_4
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto/16 :goto_2

    .line 286
    :catch_0
    move-exception v3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_3

    .line 320
    :catch_1
    move-exception v3

    :goto_5
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 324
    :cond_2
    return-object v2

    .line 307
    :catch_2
    move-exception v3

    :try_start_6
    const-string v3, "VOSubTitleJsonParser"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "NumberFormatExceptiont: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v12, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->edgeColor:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-wide v14, v12, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->edgeOpacity:D

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v3, v12, v13}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 309
    :catch_3
    move-exception v3

    const-string v3, "VOSubTitleJsonParser"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "IllegalArgumentException: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v12, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->edgeColor:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-wide v14, v12, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->edgeOpacity:D

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v3, v12, v13}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 313
    :cond_3
    iget-object v3, v8, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->subtitleDispInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->lineTextRowInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto/16 :goto_1

    .line 316
    :cond_4
    iget-object v3, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->subtitleEntryList:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    .line 221
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto/16 :goto_0

    .line 320
    :catch_4
    move-exception v2

    move-object/from16 v18, v2

    move-object v2, v3

    move-object/from16 v3, v18

    goto :goto_5
.end method

.method public uencodeStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 165
    const-string v1, ""

    .line 167
    const-string v0, "\\\\u"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 169
    const/4 v0, 0x1

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 170
    aget-object v3, v2, v1

    .line 171
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 172
    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 173
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    :cond_1
    return-object v0
.end method
