.class public final Lcom/adobe/adobepass/accessenabler/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/adobe/adobepass/accessenabler/api/b;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/adobepass/accessenabler/a/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/adobe/adobepass/accessenabler/api/b;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/adobepass/accessenabler/a/j;->f:Ljava/util/ArrayList;

    .line 49
    iput-object p1, p0, Lcom/adobe/adobepass/accessenabler/a/j;->a:Lcom/adobe/adobepass/accessenabler/api/b;

    .line 50
    return-void
.end method

.method private static a(Lorg/w3c/dom/Node;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/adobepass/accessenabler/a/g;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 92
    if-nez p0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v8

    .line 96
    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    move v7, v8

    .line 99
    :goto_1
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 100
    invoke-interface {v10, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 109
    const-string v1, "mvpd"

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adobe/adobepass/accessenabler/d/f;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 115
    if-eqz v1, :cond_0

    .line 116
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 122
    const-string v2, "displayName"

    invoke-static {v0, v2}, Lcom/adobe/adobepass/accessenabler/d/f;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 123
    if-eqz v2, :cond_0

    .line 124
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 130
    const-string v3, "logoUrl"

    invoke-static {v0, v3}, Lcom/adobe/adobepass/accessenabler/d/f;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 131
    if-eqz v3, :cond_0

    .line 132
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 138
    const-string v4, "passiveAuthnEnabled"

    invoke-static {v0, v4}, Lcom/adobe/adobepass/accessenabler/d/f;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 139
    if-eqz v4, :cond_4

    .line 140
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    .line 141
    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 145
    :goto_2
    const-string v4, "authPerAggregator"

    invoke-static {v0, v4}, Lcom/adobe/adobepass/accessenabler/d/f;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_3

    .line 147
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 148
    const-string v4, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 152
    :goto_3
    new-instance v0, Lcom/adobe/adobepass/accessenabler/a/g;

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/adobe/adobepass/accessenabler/a/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 155
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :cond_2
    move v8, v9

    .line 158
    goto/16 :goto_0

    :cond_3
    move v5, v8

    goto :goto_3

    :cond_4
    move v6, v9

    goto :goto_2
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/adobe/adobepass/accessenabler/a/j;->c:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/adobe/adobepass/accessenabler/a/j;->b:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/adobe/adobepass/accessenabler/a/j;->b:Z

    return v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 168
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 172
    new-instance v5, Lorg/xml/sax/InputSource;

    invoke-direct {v5}, Lorg/xml/sax/InputSource;-><init>()V

    .line 173
    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 174
    invoke-virtual {v1, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v5

    .line 175
    invoke-interface {v5}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Element;->normalize()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    :try_start_2
    const-string v1, "device"

    invoke-interface {v5, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 184
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_0

    .line 185
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 186
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v1

    .line 187
    if-eqz v1, :cond_0

    .line 188
    iget-object v6, p0, Lcom/adobe/adobepass/accessenabler/a/j;->a:Lcom/adobe/adobepass/accessenabler/api/b;

    invoke-virtual {v6}, Lcom/adobe/adobepass/accessenabler/api/b;->h()Lcom/adobe/adobepass/accessenabler/a/c;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/adobe/adobepass/accessenabler/a/c;->a(Ljava/lang/String;)V

    .line 193
    :cond_0
    const-string v1, "clientType"

    invoke-interface {v5, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 194
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_1

    .line 195
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 196
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v1

    .line 197
    if-eqz v1, :cond_1

    .line 198
    iget-object v6, p0, Lcom/adobe/adobepass/accessenabler/a/j;->a:Lcom/adobe/adobepass/accessenabler/api/b;

    invoke-virtual {v6}, Lcom/adobe/adobepass/accessenabler/api/b;->h()Lcom/adobe/adobepass/accessenabler/a/c;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/adobe/adobepass/accessenabler/a/c;->b(Ljava/lang/String;)V

    .line 203
    :cond_1
    const-string v1, "os"

    invoke-interface {v5, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 204
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_2

    .line 205
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 206
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v1

    .line 207
    if-eqz v1, :cond_2

    .line 208
    iget-object v6, p0, Lcom/adobe/adobepass/accessenabler/a/j;->a:Lcom/adobe/adobepass/accessenabler/api/b;

    invoke-virtual {v6}, Lcom/adobe/adobepass/accessenabler/api/b;->h()Lcom/adobe/adobepass/accessenabler/a/c;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/adobe/adobepass/accessenabler/a/c;->c(Ljava/lang/String;)V

    .line 213
    :cond_2
    const-string v1, "requestor"

    invoke-interface {v5, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 214
    if-eqz v1, :cond_5

    .line 218
    const-string v5, "id"

    invoke-static {v1, v5}, Lcom/adobe/adobepass/accessenabler/d/f;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 219
    if-eqz v5, :cond_3

    .line 220
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 226
    const-string v6, "name"

    invoke-static {v1, v6}, Lcom/adobe/adobepass/accessenabler/d/f;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 227
    if-eqz v6, :cond_4

    .line 228
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 234
    const-string v7, "mvpds"

    invoke-static {v1, v7}, Lcom/adobe/adobepass/accessenabler/d/f;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 235
    invoke-static {v1, v2, p2}, Lcom/adobe/adobepass/accessenabler/a/j;->a(Lorg/w3c/dom/Node;Ljava/util/ArrayList;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-nez v1, :cond_6

    move v1, v3

    .line 267
    :goto_0
    monitor-exit p0

    return v1

    .line 176
    :catch_0
    move-exception v1

    .line 177
    :try_start_3
    const-string v2, "Requestor"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/adobe/adobepass/accessenabler/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    .line 178
    goto :goto_0

    :cond_3
    move v1, v3

    .line 222
    goto :goto_0

    :cond_4
    move v1, v3

    .line 230
    goto :goto_0

    :cond_5
    move v1, v3

    .line 239
    goto :goto_0

    .line 242
    :catch_1
    move-exception v1

    .line 243
    const-string v2, "Requestor"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/adobe/adobepass/accessenabler/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/adobe/adobepass/accessenabler/a/j;->b:Z

    move v1, v3

    .line 245
    goto :goto_0

    .line 1057
    :cond_6
    iput-object v5, p0, Lcom/adobe/adobepass/accessenabler/a/j;->c:Ljava/lang/String;

    .line 1063
    iput-object v6, p0, Lcom/adobe/adobepass/accessenabler/a/j;->e:Ljava/lang/String;

    .line 251
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/adobe/adobepass/accessenabler/a/g;

    move-object v2, v0

    .line 253
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/a/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/adobepass/accessenabler/a/g;

    .line 254
    invoke-virtual {v2, v1}, Lcom/adobe/adobepass/accessenabler/a/g;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 255
    const-string v1, "Requestor"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "MVPD already added: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/adobe/adobepass/accessenabler/a/g;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    .line 261
    :goto_2
    if-nez v1, :cond_7

    .line 262
    const-string v1, "Requestor"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Added MVPD: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/adobe/adobepass/accessenabler/a/g;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with SP: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/adobe/adobepass/accessenabler/a/g;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/a/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 168
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_9
    move v1, v4

    .line 267
    goto/16 :goto_0

    :cond_a
    move v1, v3

    goto :goto_2
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/a/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/adobe/adobepass/accessenabler/a/j;->d:Ljava/lang/String;

    return-void
.end method

.method public final c(Ljava/lang/String;)Lcom/adobe/adobepass/accessenabler/a/g;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 67
    if-nez p1, :cond_0

    move-object v0, v1

    .line 75
    :goto_0
    return-object v0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/a/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/adobepass/accessenabler/a/g;

    .line 70
    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 75
    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/a/j;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/adobepass/accessenabler/a/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/a/j;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 79
    if-nez p1, :cond_0

    move v0, v1

    .line 88
    :goto_0
    return v0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/a/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/adobepass/accessenabler/a/g;

    .line 84
    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 88
    goto :goto_0
.end method
