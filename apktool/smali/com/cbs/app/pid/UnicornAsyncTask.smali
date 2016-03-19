.class public Lcom/cbs/app/pid/UnicornAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/cbs/app/pid/PidResponseHolder;",
        "Ljava/lang/Void;",
        "Lcom/cbs/app/pid/PidResponseHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/cbs/app/pid/PidAsyncTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/pid/UnicornAsyncTask;->a:Ljava/lang/String;

    return-void
.end method

.method private varargs a([Lcom/cbs/app/pid/PidResponseHolder;)Lcom/cbs/app/pid/PidResponseHolder;
    .locals 17

    .prologue
    .line 105
    const/4 v2, 0x0

    .line 106
    if-eqz p1, :cond_8

    move-object/from16 v0, p1

    array-length v3, v0

    if-lez v3, :cond_8

    .line 107
    const/4 v2, 0x0

    aget-object v6, p1, v2

    .line 109
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 113
    new-instance v2, Ljava/net/URL;

    invoke-virtual {v6}, Lcom/cbs/app/pid/PidResponseHolder;->getOriginalSmilContentUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 115
    if-eqz v2, :cond_0

    .line 116
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 117
    array-length v3, v2

    const/4 v5, 0x6

    if-lt v3, v5, :cond_0

    .line 118
    const/4 v3, 0x4

    aget-object v3, v2, v3

    .line 119
    const/4 v5, 0x5

    aget-object v5, v2, v5

    .line 120
    const/4 v7, 0x6

    aget-object v7, v2, v7

    .line 121
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "OLD: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " domainGUID: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " old: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x3

    aget-object v2, v2, v5

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v8, 0x3e8

    div-long/2addr v2, v8

    const-wide/16 v8, 0x12c

    sub-long/2addr v2, v8

    .line 123
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    .line 124
    const-string v8, "7200"

    .line 136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cbs/app/pid/UnicornAsyncTask;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    const-string v3, "bb0b18ba-64f5-4b1b-a29f-0ac252f06b68"

    .line 138
    const-string v2, "fd8345f4-b034-4192-a30a-712542d3ef99"

    .line 144
    :goto_0
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getUserAuthStatus()Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    move-result-object v9

    .line 145
    invoke-static {v9}, Lcom/cbs/app/view/utils/Util;->a(Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;)Ljava/lang/String;

    move-result-object v9

    .line 146
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "UMPTPARAMcust_params=sb%3D"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 147
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "http://onceux.unicornmedia.com/now/ads/vmap/adaptive/m3u8/"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "/"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/?UMTP=0&umsstime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&umsttl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 151
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cbs/app/pid/UnicornAsyncTask;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f080278

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 152
    invoke-static {v2, v3}, Lcom/cbs/app/pid/UnicornAsyncTask;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cbs/app/pid/UnicornAsyncTask;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 154
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&umshash="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-virtual {v6, v2}, Lcom/cbs/app/pid/PidResponseHolder;->setVmapUrl(Ljava/lang/String;)V

    .line 167
    :cond_0
    new-instance v2, Ljava/net/URL;

    invoke-virtual {v6}, Lcom/cbs/app/pid/PidResponseHolder;->getVmapUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 169
    const-string v3, "GET"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 171
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 172
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 173
    invoke-virtual {v3, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 174
    invoke-virtual {v6, v2}, Lcom/cbs/app/pid/PidResponseHolder;->setVmapDocument(Lorg/w3c/dom/Document;)V

    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "vmapFile: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1373
    new-instance v4, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v4, v2}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 1374
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 1375
    new-instance v7, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v7, v5}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 1376
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v8

    .line 1377
    invoke-virtual {v8}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v8

    .line 1378
    invoke-virtual {v8, v4, v7}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 1379
    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 175
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 197
    const/4 v4, 0x0

    .line 199
    new-instance v3, Lcom/cbs/app/pid/CBSAd;

    invoke-direct {v3}, Lcom/cbs/app/pid/CBSAd;-><init>()V

    .line 201
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    .line 202
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "documentElement: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "extensionsNodes.length: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    const/4 v2, 0x0

    move v10, v2

    :goto_1
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v10, v2, :cond_a

    .line 208
    invoke-interface {v12, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 209
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_e

    .line 210
    check-cast v2, Lorg/w3c/dom/Element;

    .line 211
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v5

    .line 212
    if-eqz v5, :cond_4

    const-string v7, "vmap:Extensions"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 213
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "extensionsChildren.length: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    const/4 v2, 0x0

    move v5, v2

    :goto_2
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v5, v2, :cond_3

    .line 216
    invoke-interface {v7, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 217
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 218
    check-cast v2, Lorg/w3c/dom/Element;

    .line 219
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v8

    .line 221
    if-eqz v8, :cond_2

    const-string v9, "uo:unicornOnce"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 222
    const-string v5, "contenturi"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 224
    const-string v7, "contentlength"

    invoke-interface {v2, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 226
    const-string v7, "payloadlength"

    invoke-interface {v2, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    invoke-virtual {v6, v5}, Lcom/cbs/app/pid/PidResponseHolder;->setStreamingUrl(Ljava/lang/String;)V

    move-object v2, v3

    move-object v3, v4

    .line 207
    :goto_3
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    move-object v4, v3

    move-object v3, v2

    goto :goto_1

    .line 140
    :cond_1
    const-string v3, "bb0b18ba-64f5-4b1b-a29f-0ac252f06b68"

    .line 141
    const-string v2, "5bd36573-84c7-407c-936b-b6065842cbe6"

    goto/16 :goto_0

    .line 215
    :cond_2
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_2

    :cond_3
    move-object v2, v3

    move-object v3, v4

    .line 233
    goto :goto_3

    :cond_4
    if-eqz v5, :cond_e

    const-string v7, "vmap:AdBreak"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 235
    const-string v5, "breakId"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 236
    const-string v5, "timeOffset"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v5

    .line 242
    const-wide/16 v8, 0x0

    .line 244
    :try_start_1
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v14, "HH:mm:ss.SSS"

    invoke-direct {v7, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 245
    const-string v14, "UTC"

    invoke-static {v14}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 246
    invoke-virtual {v7, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 247
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-wide v8

    long-to-double v8, v8

    const-wide v14, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v14

    .line 252
    :goto_4
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v14, "comparing "

    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, " with "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    if-eqz v13, :cond_5

    const-string v7, "PostRoll"

    invoke-virtual {v13, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 255
    const-string v7, "_"

    invoke-virtual {v13, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 256
    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-double v8, v7

    .line 260
    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 264
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    new-instance v3, Lcom/cbs/app/pid/CBSAd;

    invoke-direct {v3}, Lcom/cbs/app/pid/CBSAd;-><init>()V

    .line 269
    :cond_6
    invoke-virtual {v3, v13}, Lcom/cbs/app/pid/CBSAd;->setId(Ljava/lang/String;)V

    .line 271
    double-to-int v4, v8

    invoke-virtual {v3, v4}, Lcom/cbs/app/pid/CBSAd;->setStartTime(I)V

    .line 290
    const-string v4, "Duration"

    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 291
    if-eqz v2, :cond_9

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_9

    .line 292
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 293
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_9

    .line 294
    check-cast v2, Lorg/w3c/dom/Element;

    .line 296
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "durationElement: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v2

    .line 300
    if-eqz v2, :cond_7

    const-string v4, "\\+"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 301
    const-string v4, "\\+"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 302
    const/4 v4, 0x0

    aget-object v2, v2, v4
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_6

    .line 306
    :cond_7
    if-eqz v2, :cond_9

    .line 308
    :try_start_3
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v7, "HH:mm:ss.SSSSSSS"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 309
    const-string v7, "UTC"

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 310
    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 311
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    long-to-double v8, v8

    const-wide v14, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v14

    .line 313
    invoke-virtual {v3}, Lcom/cbs/app/pid/CBSAd;->getDuration()I

    move-result v2

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v4, v8

    add-int/2addr v2, v4

    invoke-virtual {v3, v2}, Lcom/cbs/app/pid/CBSAd;->setDuration(I)V

    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "currentDuration: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/cbs/app/pid/CBSAd;->getDuration()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_6

    move-object v2, v3

    move-object v3, v5

    .line 317
    goto/16 :goto_3

    .line 248
    :catch_0
    move-exception v7

    .line 249
    :try_start_4
    sget-object v14, Lcom/cbs/app/pid/UnicornAsyncTask;->a:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "parseException: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/text/ParseException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4 .. :try_end_4} :catch_6

    goto/16 :goto_4

    .line 345
    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v2, v6

    .line 356
    :cond_8
    :goto_5
    return-object v2

    .line 315
    :catch_2
    move-exception v2

    .line 316
    :try_start_5
    sget-object v4, Lcom/cbs/app/pid/UnicornAsyncTask;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "parseException: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/text/ParseException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object v2, v3

    move-object v3, v5

    goto/16 :goto_3

    .line 327
    :cond_a
    invoke-virtual {v3}, Lcom/cbs/app/pid/CBSAd;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 328
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_b
    const/4 v2, 0x0

    move v4, v2

    :goto_6
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_d

    .line 333
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/cbs/app/pid/CBSAd;

    move-object v3, v0

    .line 334
    const/4 v2, 0x0

    move v5, v2

    :goto_7
    if-ge v5, v4, :cond_c

    .line 335
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cbs/app/pid/CBSAd;

    .line 336
    invoke-virtual {v3}, Lcom/cbs/app/pid/CBSAd;->getStartTime()I

    move-result v7

    invoke-virtual {v2}, Lcom/cbs/app/pid/CBSAd;->getDuration()I

    move-result v2

    add-int/2addr v2, v7

    invoke-virtual {v3, v2}, Lcom/cbs/app/pid/CBSAd;->setStartTime(I)V

    .line 334
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_7

    .line 332
    :cond_c
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_6

    .line 342
    :cond_d
    invoke-virtual {v6, v11}, Lcom/cbs/app/pid/PidResponseHolder;->setAds(Ljava/util/List;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5 .. :try_end_5} :catch_6

    move-object v2, v6

    .line 354
    goto :goto_5

    .line 347
    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v6

    .line 354
    goto :goto_5

    .line 349
    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    move-object v2, v6

    .line 354
    goto :goto_5

    .line 351
    :catch_5
    move-exception v2

    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->printStackTrace()V

    move-object v2, v6

    .line 354
    goto :goto_5

    .line 353
    :catch_6
    move-exception v2

    invoke-virtual {v2}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    move-object v2, v6

    goto :goto_5

    :cond_e
    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_3
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 90
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 93
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 94
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    if-ge v0, v3, :cond_1

    .line 95
    aget-char v3, v2, v0

    const/16 v4, 0x25

    if-ne v3, v4, :cond_0

    .line 96
    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v4, v0, 0x1

    aget-char v4, v1, v4

    aput-char v4, v2, v3

    .line 97
    add-int/lit8 v3, v0, 0x2

    add-int/lit8 v4, v0, 0x2

    aget-char v4, v1, v4

    aput-char v4, v2, v3

    .line 94
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 65
    const/4 v1, 0x0

    .line 67
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "HmacSHA1"

    invoke-direct {v0, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 68
    const-string v2, "HmacSHA1"

    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 69
    invoke-virtual {v2, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 71
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 75
    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v2

    .line 78
    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2

    .line 86
    :goto_0
    return-object v0

    .line 80
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    .line 85
    goto :goto_0

    .line 82
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    move-object v0, v1

    .line 85
    goto :goto_0

    .line 84
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    check-cast p1, [Lcom/cbs/app/pid/PidResponseHolder;

    invoke-direct {p0, p1}, Lcom/cbs/app/pid/UnicornAsyncTask;->a([Lcom/cbs/app/pid/PidResponseHolder;)Lcom/cbs/app/pid/PidResponseHolder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 51
    check-cast p1, Lcom/cbs/app/pid/PidResponseHolder;

    .line 2361
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 51
    return-void
.end method
