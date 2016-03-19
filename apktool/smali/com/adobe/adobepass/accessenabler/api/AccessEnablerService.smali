.class public Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;
.super Landroid/app/IntentService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;,
        Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$a;,
        Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$c;
    }
.end annotation


# static fields
.field protected static a:Z

.field private static e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Lcom/adobe/adobepass/accessenabler/api/d;

.field private d:Lcom/adobe/adobepass/accessenabler/api/b;

.field private f:[Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a:Z

    .line 58
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->e:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 82
    const-string v0, "AccessEnablerService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 50
    const-string v0, "AccessEnablerService"

    iput-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->b:Ljava/lang/String;

    .line 1518
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$a;

    const/4 v1, 0x0

    new-instance v2, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$1;

    invoke-direct {v2, p0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$1;-><init>(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$6;

    invoke-direct {v2, p0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$6;-><init>(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$7;

    invoke-direct {v2, p0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$7;-><init>(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$8;

    invoke-direct {v2, p0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$8;-><init>(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$9;

    invoke-direct {v2, p0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$9;-><init>(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$10;

    invoke-direct {v2, p0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$10;-><init>(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$11;

    invoke-direct {v2, p0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$11;-><init>(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$12;

    invoke-direct {v2, p0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$12;-><init>(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$13;

    invoke-direct {v2, p0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$13;-><init>(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$2;

    invoke-direct {v2, p0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$2;-><init>(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$3;

    invoke-direct {v2, p0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$3;-><init>(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$4;

    invoke-direct {v2, p0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$4;-><init>(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$5;

    invoke-direct {v2, p0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$5;-><init>(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->f:[Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$a;

    .line 83
    return-void
.end method

.method private static a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 304
    const-string v2, "Content-Encoding"

    invoke-interface {p0, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v3

    .line 306
    if-eqz v3, :cond_0

    array-length v2, v3

    if-lez v2, :cond_0

    .line 307
    array-length v4, v3

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    .line 308
    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    const-string v6, "gzip"

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 309
    const/4 v0, 0x1

    .line 317
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 318
    if-eqz v0, :cond_1

    .line 319
    :try_start_1
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v0

    .line 321
    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 323
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 325
    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    .line 326
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 330
    :catch_0
    move-exception v0

    .line 331
    :goto_2
    :try_start_2
    const-string v3, "AccessEnablerService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error deserializing HTTP response: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/adobe/adobepass/accessenabler/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 333
    if-eqz v2, :cond_2

    .line 334
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_2
    move-object v0, v1

    .line 338
    :cond_3
    :goto_3
    return-object v0

    .line 307
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 329
    :cond_5
    :try_start_3
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 333
    if-eqz v2, :cond_3

    .line 334
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_3

    .line 333
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_6

    .line 334
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_6
    throw v0

    .line 333
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 330
    :catch_1
    move-exception v0

    move-object v2, v1

    goto :goto_2
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 569
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/cookieDomains"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 574
    :try_start_0
    const-string v2, "AccessEnablerService"

    const-string v3, "Retrieving cookie domains from server."

    invoke-static {v2, v3}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    new-instance v2, Lcom/adobe/adobepass/accessenabler/b/a;

    invoke-direct {v2}, Lcom/adobe/adobepass/accessenabler/b/a;-><init>()V

    const/4 v3, 0x0

    sget-boolean v4, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a:Z

    invoke-virtual {v2, v0, v3, v4}, Lcom/adobe/adobepass/accessenabler/b/a;->a(Ljava/lang/String;Ljava/util/List;Z)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 577
    if-nez v2, :cond_1

    .line 578
    const-string v2, "AccessEnablerService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No response from server: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    :cond_0
    :goto_0
    return-object v1

    .line 580
    :cond_1
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 581
    const/16 v3, 0xc8

    if-ne v0, v3, :cond_3

    .line 582
    invoke-static {v2}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    .line 584
    new-instance v2, Lcom/google/e/n;

    invoke-direct {v2}, Lcom/google/e/n;-><init>()V

    .line 2045
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/e/n;->a(Ljava/io/Reader;)Lcom/google/e/i;

    move-result-object v0

    .line 585
    invoke-virtual {v0}, Lcom/google/e/i;->h()Lcom/google/e/l;

    move-result-object v0

    .line 586
    invoke-virtual {v0, p1}, Lcom/google/e/l;->a(Ljava/lang/String;)Lcom/google/e/g;

    move-result-object v2

    .line 587
    if-eqz v2, :cond_0

    .line 588
    invoke-virtual {v2}, Lcom/google/e/g;->a()I

    move-result v3

    .line 589
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_0

    .line 590
    invoke-virtual {v2, v0}, Lcom/google/e/g;->a(I)Lcom/google/e/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/e/i;->c()Ljava/lang/String;

    move-result-object v4

    .line 591
    if-eqz v4, :cond_2

    .line 592
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 596
    :cond_3
    const-string v2, "AccessEnablerService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Status code not OK: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/adobe/adobepass/accessenabler/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 599
    :catch_0
    move-exception v0

    .line 600
    const-string v2, "AccessEnablerService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error retrieving cookie domains from server: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/adobe/adobepass/accessenabler/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 601
    :catch_1
    move-exception v0

    .line 602
    const-string v2, "AccessEnablerService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error parsing domain cookie list: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/adobe/adobepass/accessenabler/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private a(ILjava/lang/String;Ljava/lang/Boolean;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 1406
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    invoke-virtual {v0, v6}, Lcom/adobe/adobepass/accessenabler/api/b;->b(Z)V

    .line 1408
    packed-switch p1, :pswitch_data_0

    .line 1461
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid AccessEnabler status code"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1411
    :pswitch_0
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/b;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Map;

    .line 1412
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1413
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1414
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1418
    :cond_0
    new-instance v0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1, v4}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;-><init>(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;ILandroid/os/Bundle;)V

    .line 1419
    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;->start()V

    goto :goto_0

    .line 1423
    :cond_1
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/b;->g()V

    .line 1426
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v0, v7}, Lcom/adobe/adobepass/accessenabler/c/b;->b(Z)V

    .line 1429
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->c:Lcom/adobe/adobepass/accessenabler/api/d;

    const-string v1, ""

    invoke-interface {v0, v7, v1}, Lcom/adobe/adobepass/accessenabler/api/d;->a(ILjava/lang/String;)V

    .line 1432
    new-instance v0, Lcom/adobe/adobepass/accessenabler/a/d;

    invoke-direct {v0, v6}, Lcom/adobe/adobepass/accessenabler/a/d;-><init>(I)V

    invoke-direct {p0, v0, v7, p3}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a(Lcom/adobe/adobepass/accessenabler/a/d;ZLjava/lang/Boolean;)V

    .line 1459
    :goto_2
    return-void

    .line 1437
    :pswitch_1
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v0, v6}, Lcom/adobe/adobepass/accessenabler/c/b;->b(Z)V

    .line 1440
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/c/b;->i()V

    .line 1443
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v0, v1}, Lcom/adobe/adobepass/accessenabler/c/b;->b(Ljava/lang/String;)V

    .line 1446
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iput-object v1, v0, Lcom/adobe/adobepass/accessenabler/api/b;->g:Lcom/adobe/adobepass/accessenabler/a/k;

    .line 1448
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iput-object v1, v0, Lcom/adobe/adobepass/accessenabler/api/b;->e:Ljava/lang/String;

    .line 1451
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/b;->g()V

    .line 1454
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->c:Lcom/adobe/adobepass/accessenabler/api/d;

    invoke-interface {v0, v6, p2}, Lcom/adobe/adobepass/accessenabler/api/d;->a(ILjava/lang/String;)V

    .line 1457
    new-instance v0, Lcom/adobe/adobepass/accessenabler/a/d;

    invoke-direct {v0, v6}, Lcom/adobe/adobepass/accessenabler/a/d;-><init>(I)V

    invoke-direct {p0, v0, v6, v1}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a(Lcom/adobe/adobepass/accessenabler/a/d;ZLjava/lang/Boolean;)V

    goto :goto_2

    .line 1408
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 417
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/j;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The requestor is not configured."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_0
    const-string v0, "force_authn"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 422
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    const-string v2, "generic_data"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adobe/adobepass/accessenabler/api/b;->e:Ljava/lang/String;

    .line 425
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    invoke-virtual {v1, v3}, Lcom/adobe/adobepass/accessenabler/api/b;->b(Z)V

    .line 427
    invoke-direct {p0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d()Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$c;

    move-result-object v1

    .line 429
    if-nez v0, :cond_1

    iget v0, v1, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$c;->a:I

    if-ne v0, v3, :cond_1

    .line 430
    const-string v0, ""

    iget-object v1, v1, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$c;->c:Ljava/lang/Boolean;

    invoke-direct {p0, v3, v0, v1}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a(ILjava/lang/String;Ljava/lang/Boolean;)V

    .line 453
    :goto_0
    return-void

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iput-boolean v3, v0, Lcom/adobe/adobepass/accessenabler/api/b;->c:Z

    .line 433
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/c/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 434
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v1, v1, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v1}, Lcom/adobe/adobepass/accessenabler/c/b;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-boolean v1, v1, Lcom/adobe/adobepass/accessenabler/api/b;->d:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v1, v1, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v1, v0}, Lcom/adobe/adobepass/accessenabler/a/j;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 438
    invoke-direct {p0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->e()V

    goto :goto_0

    .line 441
    :cond_2
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iput-boolean v4, v0, Lcom/adobe/adobepass/accessenabler/api/b;->d:Z

    .line 443
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/j;->d()Ljava/util/ArrayList;

    move-result-object v0

    .line 444
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 446
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->c:Lcom/adobe/adobepass/accessenabler/api/d;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Lcom/adobe/adobepass/accessenabler/api/d;->a()V

    goto :goto_0

    .line 448
    :cond_3
    const-string v0, "AccessEnablerService"

    const-string v1, "The list of known MVPDs is empty."

    invoke-static {v0, v1}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string v0, "Generic Authentication Error"

    const/4 v1, 0x0

    invoke-direct {p0, v4, v0, v1}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a(ILjava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private a(Lcom/adobe/adobepass/accessenabler/a/b;Ljava/lang/Boolean;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1327
    const-string v2, "AccessEnablerService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Retrieving the short-media token for resource: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/adobe/adobepass/accessenabler/a/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    invoke-virtual {p1}, Lcom/adobe/adobepass/accessenabler/a/b;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1330
    const-string v2, "AccessEnablerService"

    const-string v3, "Found an expired authZ token"

    invoke-static {v2, v3}, Lcom/adobe/adobepass/accessenabler/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    iget-object v2, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->c:Lcom/adobe/adobepass/accessenabler/api/d;

    invoke-virtual {p1}, Lcom/adobe/adobepass/accessenabler/a/b;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Generic Authorization Error"

    const-string v5, ""

    invoke-interface {v2, v3, v4, v5}, Lcom/adobe/adobepass/accessenabler/api/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/deviceShortAuthorize"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1339
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1340
    iget-object v4, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v4, v4, Lcom/adobe/adobepass/accessenabler/api/b;->i:Lcom/adobe/adobepass/accessenabler/b/b;

    invoke-virtual {v4}, Lcom/adobe/adobepass/accessenabler/b/b;->a()Lorg/apache/http/message/BasicNameValuePair;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1343
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1344
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "session_guid"

    iget-object v7, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v7, v7, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v7, v0}, Lcom/adobe/adobepass/accessenabler/c/b;->a(Z)Lcom/adobe/adobepass/accessenabler/a/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adobe/adobepass/accessenabler/a/a;->e()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1345
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "hashed_guid"

    const-string v7, "false"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1346
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "authz_token"

    invoke-virtual {p1}, Lcom/adobe/adobepass/accessenabler/a/b;->d()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1347
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "requestor_id"

    iget-object v7, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v7, v7, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v7}, Lcom/adobe/adobepass/accessenabler/a/j;->b()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1348
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "signed_requestor_id"

    iget-object v7, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v7, v7, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v7}, Lcom/adobe/adobepass/accessenabler/a/j;->c()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1349
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "mso_id"

    iget-object v7, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v7, v7, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v7}, Lcom/adobe/adobepass/accessenabler/c/b;->c()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1350
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "device_id"

    invoke-static {}, Lcom/adobe/adobepass/accessenabler/api/a;->a()Lcom/adobe/adobepass/accessenabler/api/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adobe/adobepass/accessenabler/api/a;->e()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1354
    :try_start_0
    new-instance v5, Lcom/adobe/adobepass/accessenabler/b/a;

    invoke-direct {v5}, Lcom/adobe/adobepass/accessenabler/b/a;-><init>()V

    sget-boolean v6, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a:Z

    invoke-virtual {v5, v2, v3, v4, v6}, Lcom/adobe/adobepass/accessenabler/b/a;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 1356
    if-nez v2, :cond_1

    .line 1357
    const-string v2, "AccessEnablerService"

    const-string v3, "No response from server."

    invoke-static {v2, v3}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    iget-object v2, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->c:Lcom/adobe/adobepass/accessenabler/api/d;

    invoke-virtual {p1}, Lcom/adobe/adobepass/accessenabler/a/b;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Generic Authorization Error"

    const-string v5, ""

    invoke-interface {v2, v3, v4, v5}, Lcom/adobe/adobepass/accessenabler/api/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1379
    :goto_0
    new-instance v2, Lcom/adobe/adobepass/accessenabler/a/d;

    invoke-direct {v2, v1}, Lcom/adobe/adobepass/accessenabler/a/d;-><init>(I)V

    invoke-direct {p0, v2, v0, p2}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a(Lcom/adobe/adobepass/accessenabler/a/d;ZLjava/lang/Boolean;)V

    .line 1380
    :goto_1
    return-void

    .line 1362
    :cond_1
    :try_start_1
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 1363
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_2

    .line 1365
    invoke-static {v2}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v2

    .line 1367
    iget-object v3, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->c:Lcom/adobe/adobepass/accessenabler/api/d;

    invoke-virtual {p1}, Lcom/adobe/adobepass/accessenabler/a/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/adobe/adobepass/accessenabler/api/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1369
    goto :goto_0

    .line 1370
    :cond_2
    const-string v2, "AccessEnablerService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bad response from server. SC="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adobe/adobepass/accessenabler/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    iget-object v2, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->c:Lcom/adobe/adobepass/accessenabler/api/d;

    invoke-virtual {p1}, Lcom/adobe/adobepass/accessenabler/a/b;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Internal Authorization Error"

    const-string v5, ""

    invoke-interface {v2, v3, v4, v5}, Lcom/adobe/adobepass/accessenabler/api/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1374
    :catch_0
    move-exception v2

    .line 1375
    :try_start_2
    const-string v3, "AccessEnablerService"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/adobe/adobepass/accessenabler/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    iget-object v2, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->c:Lcom/adobe/adobepass/accessenabler/api/d;

    invoke-virtual {p1}, Lcom/adobe/adobepass/accessenabler/a/b;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Generic Authorization Error"

    const-string v5, ""

    invoke-interface {v2, v3, v4, v5}, Lcom/adobe/adobepass/accessenabler/api/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1379
    new-instance v2, Lcom/adobe/adobepass/accessenabler/a/d;

    invoke-direct {v2, v1}, Lcom/adobe/adobepass/accessenabler/a/d;-><init>(I)V

    invoke-direct {p0, v2, v0, p2}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a(Lcom/adobe/adobepass/accessenabler/a/d;ZLjava/lang/Boolean;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    new-instance v3, Lcom/adobe/adobepass/accessenabler/a/d;

    invoke-direct {v3, v1}, Lcom/adobe/adobepass/accessenabler/a/d;-><init>(I)V

    invoke-direct {p0, v3, v0, p2}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a(Lcom/adobe/adobepass/accessenabler/a/d;ZLjava/lang/Boolean;)V

    throw v2
.end method

.method private a(Lcom/adobe/adobepass/accessenabler/a/d;ZLjava/lang/Boolean;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 1467
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1469
    invoke-virtual {p1}, Lcom/adobe/adobepass/accessenabler/a/d;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1501
    const-string v0, "AccessEnablerService"

    const-string v1, "Invalid event type."

    invoke-static {v0, v1}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    :goto_0
    return-void

    .line 1471
    :pswitch_0
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/c/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1507
    :goto_1
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/b;->h()Lcom/adobe/adobepass/accessenabler/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1508
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/b;->h()Lcom/adobe/adobepass/accessenabler/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1509
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/b;->h()Lcom/adobe/adobepass/accessenabler/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1511
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->c:Lcom/adobe/adobepass/accessenabler/api/d;

    invoke-interface {v0, p1, v2}, Lcom/adobe/adobepass/accessenabler/api/d;->a(Lcom/adobe/adobepass/accessenabler/a/d;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1475
    :pswitch_1
    if-eqz p2, :cond_1

    .line 1476
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v1, v1, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v1, v3}, Lcom/adobe/adobepass/accessenabler/c/b;->a(Z)Lcom/adobe/adobepass/accessenabler/a/a;

    move-result-object v1

    .line 1477
    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1478
    iget-object v3, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v3, v3, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v3}, Lcom/adobe/adobepass/accessenabler/c/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1479
    invoke-virtual {v1}, Lcom/adobe/adobepass/accessenabler/a/a;->e()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MD5"

    invoke-static {v1, v3}, Lcom/adobe/adobepass/accessenabler/d/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1480
    if-nez p3, :cond_0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1483
    :cond_1
    const-string v1, "false"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1484
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1485
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1486
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1491
    :pswitch_2
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v1, v1, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v1, v3}, Lcom/adobe/adobepass/accessenabler/c/b;->a(Z)Lcom/adobe/adobepass/accessenabler/a/a;

    move-result-object v3

    .line 1492
    if-eqz p2, :cond_2

    if-eqz v3, :cond_2

    const-string v1, "true"

    :goto_3
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1493
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v1, v1, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v1}, Lcom/adobe/adobepass/accessenabler/c/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1494
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/adobe/adobepass/accessenabler/a/a;->e()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MD5"

    invoke-static {v1, v3}, Lcom/adobe/adobepass/accessenabler/d/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1495
    if-nez p3, :cond_4

    :goto_5
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1496
    invoke-virtual {p1}, Lcom/adobe/adobepass/accessenabler/a/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1497
    invoke-virtual {p1}, Lcom/adobe/adobepass/accessenabler/a/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1492
    :cond_2
    const-string v1, "false"

    goto :goto_3

    :cond_3
    move-object v1, v0

    .line 1494
    goto :goto_4

    .line 1495
    :cond_4
    invoke-virtual {p3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 1469
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    .line 3409
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/j;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3410
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The requestor is not configured."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3412
    :cond_0
    invoke-direct {p0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d()Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$c;

    move-result-object v0

    .line 3413
    iget v1, v0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$c;->a:I

    iget-object v2, v0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$c;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$c;->c:Ljava/lang/Boolean;

    .line 4384
    packed-switch v1, :pswitch_data_0

    .line 4392
    :goto_0
    return-void

    .line 4387
    :pswitch_0
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->c:Lcom/adobe/adobepass/accessenabler/api/d;

    const-string v2, ""

    invoke-interface {v1, v4, v2}, Lcom/adobe/adobepass/accessenabler/api/d;->a(ILjava/lang/String;)V

    .line 4390
    new-instance v1, Lcom/adobe/adobepass/accessenabler/a/d;

    invoke-direct {v1, v3}, Lcom/adobe/adobepass/accessenabler/a/d;-><init>(I)V

    invoke-direct {p0, v1, v4, v0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a(Lcom/adobe/adobepass/accessenabler/a/d;ZLjava/lang/Boolean;)V

    goto :goto_0

    .line 4395
    :pswitch_1
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->c:Lcom/adobe/adobepass/accessenabler/api/d;

    invoke-interface {v0, v3, v2}, Lcom/adobe/adobepass/accessenabler/api/d;->a(ILjava/lang/String;)V

    .line 4398
    new-instance v0, Lcom/adobe/adobepass/accessenabler/a/d;

    invoke-direct {v0, v3}, Lcom/adobe/adobepass/accessenabler/a/d;-><init>(I)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v3, v1}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a(Lcom/adobe/adobepass/accessenabler/a/d;ZLjava/lang/Boolean;)V

    goto :goto_0

    .line 4384
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 48
    .line 2343
    const-string v0, "requestor_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2344
    const-string v0, "sp_urls"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2347
    iget-object v2, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iput-object v3, v2, Lcom/adobe/adobepass/accessenabler/api/b;->g:Lcom/adobe/adobepass/accessenabler/a/k;

    .line 2349
    iget-object v2, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iput-object v3, v2, Lcom/adobe/adobepass/accessenabler/api/b;->e:Ljava/lang/String;

    .line 2351
    iget-object v2, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    invoke-virtual {v2}, Lcom/adobe/adobepass/accessenabler/api/b;->b()V

    .line 2354
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2356
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2357
    const-string v4, "requestor_id"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2358
    const-string v4, "sp_url"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2359
    new-instance v0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;

    invoke-direct {v0, p0, v5, v3}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;-><init>(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;ILandroid/os/Bundle;)V

    .line 2360
    iget-object v3, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    invoke-virtual {v3}, Lcom/adobe/adobepass/accessenabler/api/b;->c()V

    .line 2361
    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;->start()V

    goto :goto_0

    .line 2365
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/b;->e()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2367
    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2370
    :catch_0
    move-exception v0

    goto :goto_1

    .line 2373
    :cond_1
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/b;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2374
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v0, v5}, Lcom/adobe/adobepass/accessenabler/a/j;->a(Z)V

    .line 2376
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v1, v1, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v0, v1}, Lcom/adobe/adobepass/accessenabler/c/b;->a(Lcom/adobe/adobepass/accessenabler/a/j;)V

    .line 2379
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/c/b;->f()V

    .line 2382
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    invoke-static {v0, p0}, Lcom/adobe/adobepass/accessenabler/api/e;->a(Lcom/adobe/adobepass/accessenabler/api/b;Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;)Lcom/adobe/adobepass/accessenabler/api/e;

    move-result-object v0

    .line 2383
    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/e;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2384
    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/e;->b()V

    .line 2387
    :goto_2
    return-void

    .line 2386
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a()V

    goto :goto_2

    .line 2389
    :cond_3
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->c:Lcom/adobe/adobepass/accessenabler/api/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/adobe/adobepass/accessenabler/api/d;->setRequestorComplete(I)V

    goto :goto_2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 1093
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/c/b;->g()V

    .line 1095
    invoke-direct {p0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d()Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$c;

    move-result-object v0

    .line 1096
    iget v0, v0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$c;->a:I

    if-nez v0, :cond_2

    .line 1097
    if-eqz p3, :cond_1

    .line 1098
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->c:Lcom/adobe/adobepass/accessenabler/api/d;

    const-string v2, "User Not Authenticated Error"

    const-string v3, ""

    invoke-interface {v0, p1, v2, v3}, Lcom/adobe/adobepass/accessenabler/api/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    new-instance v0, Lcom/adobe/adobepass/accessenabler/a/d;

    const-string v2, "User Not Authenticated Error"

    invoke-direct {v0, v2}, Lcom/adobe/adobepass/accessenabler/a/d;-><init>(Ljava/lang/String;)V

    .line 1101
    invoke-direct {p0, v0, v8, v1}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a(Lcom/adobe/adobepass/accessenabler/a/d;ZLjava/lang/Boolean;)V

    .line 2322
    :cond_0
    :goto_0
    return-void

    .line 1103
    :cond_1
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/adobepass/accessenabler/api/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v7, :cond_0

    .line 1104
    new-instance v0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2, v1}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;-><init>(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;ILandroid/os/Bundle;)V

    .line 1105
    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;->start()V

    goto :goto_0

    .line 1109
    :cond_2
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v0, p1}, Lcom/adobe/adobepass/accessenabler/c/b;->a(Ljava/lang/String;)Lcom/adobe/adobepass/accessenabler/a/b;

    move-result-object v0

    .line 1110
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/b;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1111
    const-string v1, "AccessEnablerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Authorization token found and valid for resource: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v1}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a(Lcom/adobe/adobepass/accessenabler/a/b;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 2220
    :cond_3
    const-string v0, "AccessEnablerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Retrieving the authZ token for resource: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/authorizeDevice"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2226
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2227
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->i:Lcom/adobe/adobepass/accessenabler/b/b;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/b/b;->a()Lorg/apache/http/message/BasicNameValuePair;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2230
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2231
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "resource_id"

    invoke-direct {v0, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2232
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "requestor_id"

    iget-object v6, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v6, v6, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v6}, Lcom/adobe/adobepass/accessenabler/a/j;->b()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2233
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "signed_requestor_id"

    iget-object v6, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v6, v6, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v6}, Lcom/adobe/adobepass/accessenabler/a/j;->c()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2234
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "mso_id"

    iget-object v6, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v6, v6, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v6}, Lcom/adobe/adobepass/accessenabler/c/b;->c()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2235
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "device_id"

    invoke-static {}, Lcom/adobe/adobepass/accessenabler/api/a;->a()Lcom/adobe/adobepass/accessenabler/api/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/adobepass/accessenabler/api/a;->e()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2236
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "userMeta"

    const-string v6, "1"

    invoke-direct {v0, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2238
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v0, v7}, Lcom/adobe/adobepass/accessenabler/c/b;->a(Z)Lcom/adobe/adobepass/accessenabler/a/a;

    move-result-object v0

    .line 2239
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/a;->k()Ljava/lang/String;

    move-result-object v0

    .line 2240
    :goto_1
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "authentication_token"

    invoke-direct {v5, v6, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2242
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 2243
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "generic_data"

    invoke-direct {v0, v5, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2246
    :cond_4
    new-instance v0, Lcom/adobe/adobepass/accessenabler/b/a;

    invoke-direct {v0}, Lcom/adobe/adobepass/accessenabler/b/a;-><init>()V

    sget-boolean v5, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a:Z

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/adobe/adobepass/accessenabler/b/a;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 2248
    if-nez v0, :cond_6

    .line 2249
    const-string v0, "AccessEnablerService"

    const-string v2, "No response from server."

    invoke-static {v0, v2}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2252
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->c:Lcom/adobe/adobepass/accessenabler/api/d;

    const-string v2, "Generic Authorization Error"

    const-string v3, ""

    invoke-interface {v0, p1, v2, v3}, Lcom/adobe/adobepass/accessenabler/api/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2253
    new-instance v0, Lcom/adobe/adobepass/accessenabler/a/d;

    invoke-direct {v0, v7}, Lcom/adobe/adobepass/accessenabler/a/d;-><init>(I)V

    invoke-direct {p0, v0, v8, v1}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a(Lcom/adobe/adobepass/accessenabler/a/d;ZLjava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_5
    move-object v0, v1

    .line 2239
    goto :goto_1

    .line 2256
    :cond_6
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 2257
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_9

    .line 2258
    invoke-static {v0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 2263
    :try_start_1
    new-instance v0, Lcom/adobe/adobepass/accessenabler/a/b;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/adobe/adobepass/accessenabler/a/b;-><init>(Ljava/lang/String;Z)V

    .line 2264
    invoke-static {v2}, Lcom/adobe/adobepass/accessenabler/a/k;->d(Ljava/lang/String;)Lcom/adobe/adobepass/accessenabler/a/k;

    move-result-object v3

    .line 2266
    iget-object v4, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v4, v4, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v4, p1, v0}, Lcom/adobe/adobepass/accessenabler/c/b;->a(Ljava/lang/String;Lcom/adobe/adobepass/accessenabler/a/b;)V

    .line 2268
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/adobe/adobepass/accessenabler/a/k;->b()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2269
    iget-object v4, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v4, v4, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v4, v3}, Lcom/adobe/adobepass/accessenabler/c/b;->a(Lcom/adobe/adobepass/accessenabler/a/k;)V

    .line 2270
    iget-object v3, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/adobe/adobepass/accessenabler/api/b;->g:Lcom/adobe/adobepass/accessenabler/a/k;

    .line 2274
    :cond_7
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v3}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a(Lcom/adobe/adobepass/accessenabler/a/b;Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2275
    :catch_0
    move-exception v0

    .line 2276
    :try_start_2
    const-string v3, "AccessEnablerService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/adobe/adobepass/accessenabler/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2278
    const-string v0, ""

    .line 2279
    if-eqz v2, :cond_8

    const-string v3, "<error>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "</error>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "<details>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "</details>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2287
    const-string v0, "<details>"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x9

    .line 2288
    const-string v3, "</details>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 2289
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2293
    :cond_8
    iget-object v2, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->c:Lcom/adobe/adobepass/accessenabler/api/d;

    const-string v3, "User not Authorized Error"

    invoke-interface {v2, p1, v3, v0}, Lcom/adobe/adobepass/accessenabler/api/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2295
    new-instance v2, Lcom/adobe/adobepass/accessenabler/a/d;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/adobe/adobepass/accessenabler/a/d;-><init>(I)V

    .line 2296
    const-string v3, "User not Authorized Error"

    invoke-virtual {v2, v3}, Lcom/adobe/adobepass/accessenabler/a/d;->a(Ljava/lang/String;)V

    .line 2297
    invoke-virtual {v2, v0}, Lcom/adobe/adobepass/accessenabler/a/d;->b(Ljava/lang/String;)V

    .line 2298
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a(Lcom/adobe/adobepass/accessenabler/a/d;ZLjava/lang/Boolean;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 2316
    :catch_1
    move-exception v0

    .line 2317
    const-string v2, "AccessEnablerService"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/adobe/adobepass/accessenabler/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2320
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->c:Lcom/adobe/adobepass/accessenabler/api/d;

    const-string v2, "Generic Authorization Error"

    const-string v3, ""

    invoke-interface {v0, p1, v2, v3}, Lcom/adobe/adobepass/accessenabler/api/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2321
    new-instance v0, Lcom/adobe/adobepass/accessenabler/a/d;

    invoke-direct {v0, v7}, Lcom/adobe/adobepass/accessenabler/a/d;-><init>(I)V

    invoke-direct {p0, v0, v8, v1}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a(Lcom/adobe/adobepass/accessenabler/a/d;ZLjava/lang/Boolean;)V

    goto/16 :goto_0

    .line 2302
    :cond_9
    const/16 v0, 0x191

    if-ne v2, v0, :cond_a

    .line 2306
    :try_start_3
    const-string v0, "AccessEnablerService"

    const-string v2, "401 Unauthorized - from the AP server."

    invoke-static {v0, v2}, Lcom/adobe/adobepass/accessenabler/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2307
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->c:Lcom/adobe/adobepass/accessenabler/api/d;

    const-string v2, "User not Authorized Error"

    const-string v3, ""

    invoke-interface {v0, p1, v2, v3}, Lcom/adobe/adobepass/accessenabler/api/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2308
    new-instance v0, Lcom/adobe/adobepass/accessenabler/a/d;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/adobe/adobepass/accessenabler/a/d;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a(Lcom/adobe/adobepass/accessenabler/a/d;ZLjava/lang/Boolean;)V

    goto/16 :goto_0

    .line 2311
    :cond_a
    const-string v0, "AccessEnablerService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Bad response from server. SC="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/adobe/adobepass/accessenabler/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2312
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->c:Lcom/adobe/adobepass/accessenabler/api/d;

    const-string v2, "Internal Authorization Error"

    const-string v3, ""

    invoke-interface {v0, p1, v2, v3}, Lcom/adobe/adobepass/accessenabler/api/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2313
    new-instance v0, Lcom/adobe/adobepass/accessenabler/a/d;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/adobe/adobepass/accessenabler/a/d;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a(Lcom/adobe/adobepass/accessenabler/a/d;ZLjava/lang/Boolean;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 7
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
    const/4 v1, 0x0

    .line 1168
    const-string v0, "AccessEnablerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Retrieving preauthorization for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-static {p1, v3}, Lcom/adobe/adobepass/accessenabler/d/f;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/preauthorize"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1175
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1176
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/adobe/adobepass/accessenabler/c/b;->a(Z)Lcom/adobe/adobepass/accessenabler/a/a;

    move-result-object v0

    .line 1177
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/a;->k()Ljava/lang/String;

    move-result-object v0

    .line 1178
    :goto_0
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "authentication_token"

    invoke-direct {v4, v5, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1179
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "requestor_id"

    iget-object v5, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v5, v5, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v5}, Lcom/adobe/adobepass/accessenabler/a/j;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1180
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1181
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "resource_id"

    invoke-direct {v5, v6, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    move-object v0, v1

    .line 1177
    goto :goto_0

    .line 1184
    :cond_1
    new-instance v0, Lcom/adobe/adobepass/accessenabler/b/a;

    invoke-direct {v0}, Lcom/adobe/adobepass/accessenabler/b/a;-><init>()V

    sget-boolean v4, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a:Z

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/adobe/adobepass/accessenabler/b/a;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 1186
    if-nez v0, :cond_3

    .line 1187
    const-string v0, "AccessEnablerService"

    const-string v1, "No response from server."

    invoke-static {v0, v1}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1217
    :cond_2
    :goto_2
    return-void

    .line 1190
    :cond_3
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 1191
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_5

    .line 1193
    :try_start_0
    invoke-static {v0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    .line 1195
    new-instance v1, Lcom/adobe/adobepass/accessenabler/a/h;

    invoke-direct {v1, v0}, Lcom/adobe/adobepass/accessenabler/a/h;-><init>(Ljava/lang/String;)V

    .line 1196
    invoke-virtual {v1}, Lcom/adobe/adobepass/accessenabler/a/h;->b()Ljava/util/List;

    move-result-object v0

    .line 1199
    iget-object v2, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v2, v2, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v2, v1}, Lcom/adobe/adobepass/accessenabler/c/b;->a(Lcom/adobe/adobepass/accessenabler/a/h;)V

    .line 1201
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1202
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/adobepass/accessenabler/a/i;

    .line 1203
    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/i;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1204
    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1210
    :catch_0
    move-exception v0

    .line 1211
    const-string v1, "AccessEnablerService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adobe/adobepass/accessenabler/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    .line 1215
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 1025
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/usermetadata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1028
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1029
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "requestor"

    iget-object v5, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v5, v5, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v5}, Lcom/adobe/adobepass/accessenabler/a/j;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1030
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "authn"

    iget-object v5, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v5, v5, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/adobe/adobepass/accessenabler/c/b;->a(Z)Lcom/adobe/adobepass/accessenabler/a/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/adobepass/accessenabler/a/a;->k()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1031
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "metadata"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1033
    new-instance v3, Lcom/adobe/adobepass/accessenabler/b/a;

    invoke-direct {v3}, Lcom/adobe/adobepass/accessenabler/b/a;-><init>()V

    const/4 v4, 0x0

    sget-boolean v5, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a:Z

    invoke-virtual {v3, v1, v4, v2, v5}, Lcom/adobe/adobepass/accessenabler/b/a;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 1035
    if-nez v1, :cond_0

    .line 1036
    const-string v1, "AccessEnablerService"

    const-string v2, "No response from server for encrypted metadata."

    invoke-static {v1, v2}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    :goto_0
    return-object v0

    .line 1038
    :cond_0
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 1040
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    .line 1041
    invoke-static {v1}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1043
    :cond_1
    const-string v1, "AccessEnablerService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Bad response from server. SC="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adobe/adobepass/accessenabler/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1046
    :catch_0
    move-exception v1

    .line 1047
    const-string v2, "AccessEnablerService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/adobe/adobepass/accessenabler/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;)V
    .locals 3

    .prologue
    .line 48
    .line 4768
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/c/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 4769
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->c:Lcom/adobe/adobepass/accessenabler/api/d;

    iget-object v2, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v2, v2, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v2, v0}, Lcom/adobe/adobepass/accessenabler/a/j;->c(Ljava/lang/String;)Lcom/adobe/adobepass/accessenabler/a/g;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/adobe/adobepass/accessenabler/api/d;->a(Lcom/adobe/adobepass/accessenabler/a/g;)V

    .line 48
    return-void
.end method

.method static synthetic b(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 48
    .line 2960
    :try_start_0
    const-string v1, "requestor_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2963
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sp_url"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/1.0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2965
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/config/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2967
    const-string v3, "AccessEnablerService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Starting the thread that handles the setRequestor() call for URL: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2969
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2970
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "Accept-Encoding"

    const-string v6, "gzip, deflate"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2972
    iget-object v4, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v4, v4, Lcom/adobe/adobepass/accessenabler/api/b;->i:Lcom/adobe/adobepass/accessenabler/b/b;

    invoke-virtual {v4}, Lcom/adobe/adobepass/accessenabler/b/b;->a()Lorg/apache/http/message/BasicNameValuePair;

    move-result-object v4

    .line 2973
    invoke-virtual {v4}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2974
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2977
    :cond_0
    new-instance v4, Lcom/adobe/adobepass/accessenabler/b/a;

    invoke-direct {v4}, Lcom/adobe/adobepass/accessenabler/b/a;-><init>()V

    .line 2978
    sget-boolean v5, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a:Z

    invoke-virtual {v4, v1, v3, v5}, Lcom/adobe/adobepass/accessenabler/b/a;->a(Ljava/lang/String;Ljava/util/List;Z)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 2980
    if-nez v3, :cond_1

    .line 2981
    const-string v2, "AccessEnablerService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No response from server: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3018
    :goto_0
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    invoke-virtual {v1, v0}, Lcom/adobe/adobepass/accessenabler/api/b;->a(Z)V

    .line 3019
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/b;->d()V

    .line 3020
    :goto_1
    return-void

    .line 2983
    :cond_1
    :try_start_1
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 2985
    const/16 v5, 0x19a

    if-ne v1, v5, :cond_2

    .line 2988
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->c:Lcom/adobe/adobepass/accessenabler/api/d;

    const/4 v2, 0x0

    const-string v3, "API version too old. Please update your application."

    invoke-interface {v1, v2, v3}, Lcom/adobe/adobepass/accessenabler/api/d;->a(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 3015
    :catch_0
    move-exception v1

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    .line 3016
    :goto_2
    :try_start_2
    const-string v2, "AccessEnablerService"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/adobe/adobepass/accessenabler/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3018
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    invoke-virtual {v0, v1}, Lcom/adobe/adobepass/accessenabler/api/b;->a(Z)V

    .line 3019
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/b;->d()V

    goto :goto_1

    .line 2989
    :cond_2
    const/16 v5, 0xc8

    if-ne v1, v5, :cond_4

    .line 2991
    :try_start_3
    invoke-static {v3}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    .line 2994
    iget-object v5, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v5, v5, Lcom/adobe/adobepass/accessenabler/api/b;->i:Lcom/adobe/adobepass/accessenabler/b/b;

    invoke-virtual {v5, v3}, Lcom/adobe/adobepass/accessenabler/b/b;->a(Lorg/apache/http/HttpResponse;)V

    .line 2996
    invoke-virtual {v4}, Lcom/adobe/adobepass/accessenabler/b/a;->a()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/adobe/adobepass/accessenabler/b/b;->a(Ljava/util/List;)V

    .line 2999
    iget-object v3, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v3, v3, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v3, v1, v2}, Lcom/adobe/adobepass/accessenabler/a/j;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    .line 3002
    :try_start_4
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v1, v1, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-static {}, Lcom/adobe/adobepass/accessenabler/api/a;->a()Lcom/adobe/adobepass/accessenabler/api/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/adobepass/accessenabler/api/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/adobe/adobepass/accessenabler/a/j;->b(Ljava/lang/String;)V

    .line 3004
    if-eqz v0, :cond_3

    .line 3005
    const-string v1, "AccessEnablerService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Configuration info. parsed successfully from: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3015
    :catch_1
    move-exception v1

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    goto :goto_2

    .line 3007
    :cond_3
    const-string v1, "AccessEnablerService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Configuration info. parsing failed from: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 3018
    :catchall_0
    move-exception v1

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    :goto_3
    iget-object v2, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    invoke-virtual {v2, v1}, Lcom/adobe/adobepass/accessenabler/api/b;->a(Z)V

    .line 3019
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    invoke-virtual {v1}, Lcom/adobe/adobepass/accessenabler/api/b;->d()V

    throw v0

    .line 3011
    :cond_4
    :try_start_5
    const-string v2, "AccessEnablerService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Status code not OK: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/adobe/adobepass/accessenabler/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0

    .line 3018
    :catchall_1
    move-exception v1

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 952
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v1, v1, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v1}, Lcom/adobe/adobepass/accessenabler/c/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/adobepass/accessenabler/a/j;->c(Ljava/lang/String;)Lcom/adobe/adobepass/accessenabler/a/g;

    move-result-object v0

    .line 953
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/g;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 954
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Current MVPD is null. Cannot compute SP URL."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic c(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 48
    .line 4908
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/j;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4909
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The requestor is not configured."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4911
    :cond_0
    const-string v0, "AccessEnablerService"

    const-string v1, "Logging out."

    invoke-static {v0, v1}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4913
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/adobepass/accessenabler/c/b;->a(Z)Lcom/adobe/adobepass/accessenabler/a/a;

    move-result-object v0

    .line 4915
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/a;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4917
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/logout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4920
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4921
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "mso_id"

    iget-object v5, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v5, v5, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v5}, Lcom/adobe/adobepass/accessenabler/c/b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4922
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "requestor_id"

    iget-object v5, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v5, v5, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v5}, Lcom/adobe/adobepass/accessenabler/a/j;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4925
    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/a;->f()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4926
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "name_id"

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/a;->f()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4927
    :cond_1
    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/a;->g()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 4928
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "session_index"

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/a;->g()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4930
    :cond_2
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "authentication_token"

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/a;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4931
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "redirect_url"

    sget-object v4, Lcom/adobe/adobepass/accessenabler/api/a;->a:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4934
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->c:Lcom/adobe/adobepass/accessenabler/api/d;

    sget-boolean v3, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a:Z

    invoke-static {v1, v2, v3}, Lcom/adobe/adobepass/accessenabler/d/f;->a(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adobe/adobepass/accessenabler/api/d;->a(Ljava/lang/String;)V

    .line 4940
    :goto_0
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/c/b;->j()V

    .line 4943
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/adobe/adobepass/accessenabler/api/b;->g:Lcom/adobe/adobepass/accessenabler/a/k;

    .line 4946
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iput-boolean v6, v0, Lcom/adobe/adobepass/accessenabler/api/b;->c:Z

    .line 4947
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iput-boolean v6, v0, Lcom/adobe/adobepass/accessenabler/api/b;->d:Z

    .line 48
    return-void

    .line 4936
    :cond_3
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->c:Lcom/adobe/adobepass/accessenabler/api/d;

    sget-object v1, Lcom/adobe/adobepass/accessenabler/api/a;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adobe/adobepass/accessenabler/api/d;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method private d()Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$c;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1054
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/j;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1055
    new-instance v0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$c;

    const-string v1, "Generic Authentication Error"

    invoke-direct {v0, p0, v1}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$c;-><init>(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;Ljava/lang/String;)V

    .line 1085
    :goto_0
    return-object v0

    .line 1058
    :cond_0
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/c/b;->g()V

    .line 1060
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v0, v4}, Lcom/adobe/adobepass/accessenabler/c/b;->a(Z)Lcom/adobe/adobepass/accessenabler/a/a;

    move-result-object v1

    .line 1062
    new-instance v0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$c;

    invoke-direct {v0, p0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$c;-><init>(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;)V

    .line 1063
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/adobe/adobepass/accessenabler/a/a;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1064
    iget-object v2, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v2, v2, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v1}, Lcom/adobe/adobepass/accessenabler/a/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adobe/adobepass/accessenabler/a/j;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1065
    const-string v2, ""

    iput-object v2, v0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$c;->b:Ljava/lang/String;

    .line 1066
    iput v4, v0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$c;->a:I

    .line 1067
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$c;->c:Ljava/lang/Boolean;

    .line 1071
    iget-object v2, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v2, v2, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v1}, Lcom/adobe/adobepass/accessenabler/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/adobe/adobepass/accessenabler/c/b;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1074
    :cond_1
    const-string v2, "AccessEnablerService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown MVPD: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/adobe/adobepass/accessenabler/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    iput v5, v0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$c;->a:I

    .line 1076
    const-string v1, "Generic Authentication Error"

    iput-object v1, v0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$c;->b:Ljava/lang/String;

    .line 1077
    iput-object v6, v0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$c;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 1080
    :cond_2
    iput v5, v0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$c;->a:I

    .line 1081
    const-string v1, "User Not Authenticated Error"

    iput-object v1, v0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$c;->b:Ljava/lang/String;

    .line 1082
    iput-object v6, v0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$c;->c:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method static synthetic d(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;)Lcom/adobe/adobepass/accessenabler/api/d;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->c:Lcom/adobe/adobepass/accessenabler/api/d;

    return-object v0
.end method

.method static synthetic d(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 48
    .line 4692
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/j;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4693
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The requestor is not configured."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4695
    :cond_0
    const-string v0, "resource_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4696
    const-string v1, "generic_data"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4698
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 48
    return-void
.end method

.method static synthetic e(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;)Lcom/adobe/adobepass/accessenabler/api/b;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    return-object v0
.end method

.method private e()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1123
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/c/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 1126
    if-nez v0, :cond_0

    .line 1127
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The currently selected MVPD ID is null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1129
    :cond_0
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v1, v1, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v1, v0}, Lcom/adobe/adobepass/accessenabler/a/j;->c(Ljava/lang/String;)Lcom/adobe/adobepass/accessenabler/a/g;

    move-result-object v1

    .line 1130
    if-eqz v1, :cond_1

    .line 1132
    invoke-virtual {p0, v1, v4}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a(Lcom/adobe/adobepass/accessenabler/a/g;Z)Ljava/lang/String;

    move-result-object v0

    .line 1133
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->c:Lcom/adobe/adobepass/accessenabler/api/d;

    invoke-interface {v1, v0}, Lcom/adobe/adobepass/accessenabler/api/d;->a(Ljava/lang/String;)V

    .line 1138
    :goto_0
    return-void

    .line 1135
    :cond_1
    const-string v1, "AccessEnablerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown MVPD: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    const-string v0, "Generic Authentication Error"

    const/4 v1, 0x0

    invoke-direct {p0, v4, v0, v1}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a(ILjava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 48
    .line 4702
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/j;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4703
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The requestor is not configured."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4705
    :cond_0
    const-string v0, "resource_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4706
    const-string v1, "generic_data"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4708
    const-string v2, "User Not Authenticated Error"

    invoke-direct {p0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d()Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$c;

    move-result-object v3

    iget-object v3, v3, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4712
    iget-object v2, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    invoke-virtual {v2, v0, v1}, Lcom/adobe/adobepass/accessenabler/api/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 4714
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4715
    const-string v2, "force_authn"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4716
    const-string v2, "generid_data"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4717
    invoke-direct {p0, v0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a(Landroid/os/Bundle;)V

    .line 4718
    :goto_0
    return-void

    .line 4719
    :cond_1
    invoke-direct {p0, v0, v1, v4}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 48
    .line 4724
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/j;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4725
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The requestor is not configured."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4727
    :cond_0
    const-string v0, "mvpd_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4729
    if-nez v0, :cond_2

    .line 4731
    const-string v0, "Provider not Selected Error"

    invoke-direct {p0, v3, v0, v4}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a(ILjava/lang/String;Ljava/lang/Boolean;)V

    .line 4742
    :cond_1
    :goto_0
    return-void

    .line 4736
    :cond_2
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/adobe/adobepass/accessenabler/api/b;->d:Z

    .line 4739
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v1, v1, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v1, v0}, Lcom/adobe/adobepass/accessenabler/a/j;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4741
    const-string v0, "Provider not Selected Error"

    invoke-direct {p0, v3, v0, v4}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a(ILjava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 4746
    :cond_3
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v1, v1, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v1}, Lcom/adobe/adobepass/accessenabler/c/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 4747
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v1, v1, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v1}, Lcom/adobe/adobepass/accessenabler/c/b;->i()V

    .line 4748
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v1, v1, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v1, v0}, Lcom/adobe/adobepass/accessenabler/c/b;->b(Ljava/lang/String;)V

    .line 4751
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iput-object v4, v0, Lcom/adobe/adobepass/accessenabler/api/b;->g:Lcom/adobe/adobepass/accessenabler/a/k;

    .line 4753
    new-instance v0, Lcom/adobe/adobepass/accessenabler/a/d;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/adobe/adobepass/accessenabler/a/d;-><init>(I)V

    invoke-direct {p0, v0, v3, v4}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a(Lcom/adobe/adobepass/accessenabler/a/d;ZLjava/lang/Boolean;)V

    .line 4758
    :cond_4
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-boolean v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->c:Z

    if-eqz v0, :cond_1

    .line 4760
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iput-boolean v3, v0, Lcom/adobe/adobepass/accessenabler/api/b;->c:Z

    .line 4762
    invoke-direct {p0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->e()V

    goto :goto_0
.end method

.method static synthetic f(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;)[Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$a;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->f:[Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$a;

    return-object v0
.end method

.method static synthetic g(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 48
    .line 4773
    const-string v0, "AccessEnablerService"

    const-string v1, "Retrieving meta-data."

    invoke-static {v0, v1}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4776
    new-instance v1, Lcom/adobe/adobepass/accessenabler/a/f;

    invoke-direct {v1}, Lcom/adobe/adobepass/accessenabler/a/f;-><init>()V

    .line 4778
    const-string v0, "metadata_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/adobe/adobepass/accessenabler/a/e;

    .line 4780
    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/e;->a()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 4900
    const-string v2, "AccessEnablerService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Detected request for invalid metadata key: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/e;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4904
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->c:Lcom/adobe/adobepass/accessenabler/api/d;

    invoke-interface {v2, v0, v1}, Lcom/adobe/adobepass/accessenabler/api/d;->a(Lcom/adobe/adobepass/accessenabler/a/e;Lcom/adobe/adobepass/accessenabler/a/f;)V

    .line 48
    return-void

    .line 4782
    :pswitch_0
    iget-object v2, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v2, v2, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v2, v4}, Lcom/adobe/adobepass/accessenabler/c/b;->a(Z)Lcom/adobe/adobepass/accessenabler/a/a;

    move-result-object v2

    .line 4784
    if-eqz v2, :cond_1

    .line 4785
    new-instance v1, Lcom/adobe/adobepass/accessenabler/a/f;

    invoke-virtual {v2}, Lcom/adobe/adobepass/accessenabler/a/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/adobe/adobepass/accessenabler/a/f;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 4787
    :cond_1
    const-string v2, "AccessEnablerService"

    const-string v3, "Cannot retrieve authN token exp. date - token not available."

    invoke-static {v2, v3}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4793
    :pswitch_1
    const-string v2, "resource_id"

    invoke-virtual {v0, v2}, Lcom/adobe/adobepass/accessenabler/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4794
    if-eqz v2, :cond_3

    .line 4795
    iget-object v3, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v3, v3, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v3, v2}, Lcom/adobe/adobepass/accessenabler/c/b;->a(Ljava/lang/String;)Lcom/adobe/adobepass/accessenabler/a/b;

    move-result-object v3

    .line 4796
    if-eqz v3, :cond_2

    .line 4797
    new-instance v1, Lcom/adobe/adobepass/accessenabler/a/f;

    invoke-virtual {v3}, Lcom/adobe/adobepass/accessenabler/a/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/adobe/adobepass/accessenabler/a/f;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 4799
    :cond_2
    const-string v3, "AccessEnablerService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cannot retrieve authZ token exp. date - no such resource: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4802
    :cond_3
    const-string v2, "AccessEnablerService"

    const-string v3, "Cannot retrieve authZ token exp. date - no resource specified."

    invoke-static {v2, v3}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4808
    :pswitch_2
    iget-object v2, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v2, v2, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v2, v4}, Lcom/adobe/adobepass/accessenabler/c/b;->a(Z)Lcom/adobe/adobepass/accessenabler/a/a;

    move-result-object v2

    .line 4809
    iget-object v3, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v3, v3, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v3}, Lcom/adobe/adobepass/accessenabler/a/j;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 4810
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/getMetadataDevice"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4813
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4814
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "requestor_id"

    iget-object v7, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v7, v7, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v7}, Lcom/adobe/adobepass/accessenabler/a/j;->b()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4815
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "signed_requestor_id"

    iget-object v7, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v7, v7, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v7}, Lcom/adobe/adobepass/accessenabler/a/j;->c()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4816
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "device_id"

    invoke-virtual {v2}, Lcom/adobe/adobepass/accessenabler/a/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4818
    new-instance v2, Lcom/adobe/adobepass/accessenabler/b/a;

    invoke-direct {v2}, Lcom/adobe/adobepass/accessenabler/b/a;-><init>()V

    sget-boolean v5, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a:Z

    invoke-virtual {v2, v3, v8, v4, v5}, Lcom/adobe/adobepass/accessenabler/b/a;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 4820
    if-nez v3, :cond_4

    .line 4822
    const-string v2, "AccessEnablerService"

    const-string v3, "No response from server."

    invoke-static {v2, v3}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4824
    :cond_4
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 4826
    const/16 v4, 0xc8

    if-ne v2, v4, :cond_5

    .line 4828
    :try_start_0
    new-instance v2, Lcom/adobe/adobepass/accessenabler/a/f;

    invoke-static {v3}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/adobe/adobepass/accessenabler/a/f;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 4831
    goto/16 :goto_0

    .line 4829
    :catch_0
    move-exception v2

    .line 4830
    const-string v3, "AccessEnablerService"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/adobe/adobepass/accessenabler/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4833
    :cond_5
    const-string v3, "AccessEnablerService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bad response from server. SC="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/adobe/adobepass/accessenabler/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4841
    :pswitch_3
    const-string v2, "user_metadata_name"

    invoke-virtual {v0, v2}, Lcom/adobe/adobepass/accessenabler/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4843
    iget-object v3, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v3, v3, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v3, v4}, Lcom/adobe/adobepass/accessenabler/c/b;->a(Z)Lcom/adobe/adobepass/accessenabler/a/a;

    move-result-object v3

    .line 4844
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/adobe/adobepass/accessenabler/a/a;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4848
    iget-object v3, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v3, v3, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v3}, Lcom/adobe/adobepass/accessenabler/c/b;->d()Lcom/adobe/adobepass/accessenabler/a/k;

    move-result-object v3

    .line 4849
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/adobe/adobepass/accessenabler/a/k;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4854
    iget-object v4, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v4, v4, Lcom/adobe/adobepass/accessenabler/api/b;->g:Lcom/adobe/adobepass/accessenabler/a/k;

    .line 4855
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/adobe/adobepass/accessenabler/a/k;->b()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Lcom/adobe/adobepass/accessenabler/a/k;->a()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/adobe/adobepass/accessenabler/a/k;->a()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_9

    .line 4857
    :cond_6
    iget-object v4, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iput-object v8, v4, Lcom/adobe/adobepass/accessenabler/api/b;->g:Lcom/adobe/adobepass/accessenabler/a/k;

    .line 4859
    const-string v4, "AccessEnablerService"

    const-string v5, "Metadata is null, waiting for a thread to make server request."

    invoke-static {v4, v5}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4861
    monitor-enter p0

    .line 4862
    :try_start_1
    iget-object v4, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v4, v4, Lcom/adobe/adobepass/accessenabler/api/b;->g:Lcom/adobe/adobepass/accessenabler/a/k;

    .line 4863
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/adobe/adobepass/accessenabler/a/k;->b()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Lcom/adobe/adobepass/accessenabler/a/k;->a()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/adobe/adobepass/accessenabler/a/k;->a()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_8

    .line 4865
    :cond_7
    iget-object v4, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/adobe/adobepass/accessenabler/api/b;->g:Lcom/adobe/adobepass/accessenabler/a/k;

    .line 4867
    const-string v4, "AccessEnablerService"

    const-string v5, "Making server call for encrypted metadata"

    invoke-static {v4, v5}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4868
    invoke-virtual {v3}, Lcom/adobe/adobepass/accessenabler/a/k;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4870
    if-eqz v3, :cond_b

    .line 4871
    const-string v4, "AccessEnablerService"

    const-string v5, "Retrieved encrypted metadata from server."

    invoke-static {v4, v5}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4873
    invoke-static {v3}, Lcom/adobe/adobepass/accessenabler/a/k;->c(Ljava/lang/String;)Lcom/adobe/adobepass/accessenabler/a/k;

    move-result-object v3

    .line 4875
    if-eqz v3, :cond_a

    .line 4877
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iput-object v3, v1, Lcom/adobe/adobepass/accessenabler/api/b;->g:Lcom/adobe/adobepass/accessenabler/a/k;

    .line 4888
    :cond_8
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4892
    :cond_9
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v1, v1, Lcom/adobe/adobepass/accessenabler/api/b;->g:Lcom/adobe/adobepass/accessenabler/a/k;

    invoke-virtual {v1, v2}, Lcom/adobe/adobepass/accessenabler/a/k;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 4893
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v1, v1, Lcom/adobe/adobepass/accessenabler/api/b;->g:Lcom/adobe/adobepass/accessenabler/a/k;

    invoke-virtual {v1, v2}, Lcom/adobe/adobepass/accessenabler/a/k;->b(Ljava/lang/String;)Z

    move-result v2

    .line 4895
    new-instance v1, Lcom/adobe/adobepass/accessenabler/a/f;

    invoke-direct {v1, v3, v2}, Lcom/adobe/adobepass/accessenabler/a/f;-><init>(Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 4879
    :cond_a
    :try_start_2
    const-string v2, "AccessEnablerService"

    const-string v3, "Error parsing the encrypted metadata."

    invoke-static {v2, v3}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4880
    monitor-exit p0

    goto/16 :goto_0

    .line 4888
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 4884
    :cond_b
    :try_start_3
    const-string v2, "AccessEnablerService"

    const-string v3, "No encrypted metadata retrieved from server."

    invoke-static {v2, v3}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4885
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 4780
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic h(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    .line 5619
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/j;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5620
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The requestor is not configured."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5622
    :cond_0
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/c/b;->g()V

    .line 5624
    const-string v0, "resource_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 5625
    if-nez v3, :cond_2

    .line 5626
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5686
    :cond_1
    :goto_0
    return-void

    .line 5632
    :cond_2
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v0, v1}, Lcom/adobe/adobepass/accessenabler/c/b;->a(Z)Lcom/adobe/adobepass/accessenabler/a/a;

    move-result-object v4

    .line 5633
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5634
    if-eqz v4, :cond_c

    .line 5637
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 5638
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5639
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 5641
    :cond_3
    invoke-virtual {v4}, Lcom/adobe/adobepass/accessenabler/a/a;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5642
    invoke-virtual {v4}, Lcom/adobe/adobepass/accessenabler/a/a;->j()Ljava/util/List;

    move-result-object v0

    .line 5643
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5644
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5645
    if-eqz v0, :cond_4

    .line 5646
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5654
    :cond_5
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/c/b;->e()Lcom/adobe/adobepass/accessenabler/a/h;

    move-result-object v4

    .line 5655
    if-eqz v4, :cond_a

    .line 5656
    invoke-virtual {v4}, Lcom/adobe/adobepass/accessenabler/a/h;->b()Ljava/util/List;

    move-result-object v0

    .line 5657
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v7, v8, :cond_7

    .line 5658
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/adobepass/accessenabler/a/i;

    .line 5659
    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    :cond_7
    move v0, v2

    .line 5672
    :goto_3
    if-eqz v0, :cond_b

    .line 5673
    invoke-virtual {v4}, Lcom/adobe/adobepass/accessenabler/a/h;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/adobepass/accessenabler/a/i;

    .line 5674
    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/i;->b()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 5675
    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    move v0, v1

    .line 5661
    goto :goto_3

    :cond_a
    move v0, v2

    .line 5669
    goto :goto_3

    .line 5683
    :cond_b
    invoke-direct {p0, v3}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 5687
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Lcom/adobe/adobepass/accessenabler/a/g;Z)Ljava/lang/String;
    .locals 5

    .prologue
    .line 1141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/authenticate/saml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1143
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1144
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "domain_name"

    const-string v4, "adobe.com"

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1145
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "noflash"

    const-string v4, "true"

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1146
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "no_iframe"

    const-string v4, "true"

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1147
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "mso_id"

    invoke-virtual {p1}, Lcom/adobe/adobepass/accessenabler/a/g;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1148
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "requestor_id"

    iget-object v4, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v4, v4, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v4}, Lcom/adobe/adobepass/accessenabler/a/j;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1149
    if-eqz p2, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "https://"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/completePassiveAuthentication"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1151
    :goto_1
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "redirect_url"

    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1153
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "client_type"

    const-string v4, "android"

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1154
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "client_version"

    const-string v4, "1.8"

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1155
    if-eqz p2, :cond_0

    .line 1156
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "passive"

    const-string v4, "true"

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1158
    :cond_0
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1159
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "generic_data"

    iget-object v4, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v4, v4, Lcom/adobe/adobepass/accessenabler/api/b;->e:Ljava/lang/String;

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1160
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/adobe/adobepass/accessenabler/api/b;->e:Ljava/lang/String;

    .line 1164
    :cond_1
    sget-boolean v0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a:Z

    invoke-static {v1, v2, v0}, Lcom/adobe/adobepass/accessenabler/d/f;->a(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1149
    :cond_2
    const-string v0, "http://"

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/adobe/adobepass/accessenabler/api/a;->a:Ljava/lang/String;

    goto :goto_1
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->a:Lcom/adobe/adobepass/accessenabler/api/e$a;

    sget-object v1, Lcom/adobe/adobepass/accessenabler/api/e$a;->a:Lcom/adobe/adobepass/accessenabler/api/e$a;

    if-ne v0, v1, :cond_0

    .line 395
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    sget-object v1, Lcom/adobe/adobepass/accessenabler/api/e$a;->b:Lcom/adobe/adobepass/accessenabler/api/e$a;

    iput-object v1, v0, Lcom/adobe/adobepass/accessenabler/api/b;->a:Lcom/adobe/adobepass/accessenabler/api/e$a;

    .line 396
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    invoke-static {v0, p0}, Lcom/adobe/adobepass/accessenabler/api/e;->a(Lcom/adobe/adobepass/accessenabler/api/b;Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;)Lcom/adobe/adobepass/accessenabler/api/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/e;->c()V

    .line 400
    :cond_0
    :goto_0
    sget-object v0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 401
    sget-object v0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 402
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->c:Lcom/adobe/adobepass/accessenabler/api/d;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/adobe/adobepass/accessenabler/api/d;->setRequestorComplete(I)V

    .line 406
    return-void
.end method

.method public final b()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 456
    const-string v0, "AccessEnablerService"

    const-string v2, "Retrieving the authN token."

    invoke-static {v0, v2}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/j;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The requestor is not configured."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/sessionDevice"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 464
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 469
    iget-object v3, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v3, v3, Lcom/adobe/adobepass/accessenabler/api/b;->i:Lcom/adobe/adobepass/accessenabler/b/b;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v4

    invoke-direct {p0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/adobe/adobepass/accessenabler/b/b;->a(Ljava/lang/String;)V

    .line 470
    iget-object v3, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v3, v3, Lcom/adobe/adobepass/accessenabler/api/b;->i:Lcom/adobe/adobepass/accessenabler/b/b;

    invoke-virtual {v3}, Lcom/adobe/adobepass/accessenabler/b/b;->a()Lorg/apache/http/message/BasicNameValuePair;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1560
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1561
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "_method"

    const-string v6, "GET"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1562
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "requestor_id"

    iget-object v6, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v6, v6, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v6}, Lcom/adobe/adobepass/accessenabler/a/j;->b()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1563
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "signed_requestor_id"

    iget-object v6, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v6, v6, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v6}, Lcom/adobe/adobepass/accessenabler/a/j;->c()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1564
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "device_id"

    invoke-static {}, Lcom/adobe/adobepass/accessenabler/api/a;->a()Lcom/adobe/adobepass/accessenabler/api/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/adobepass/accessenabler/api/a;->e()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    new-instance v4, Lcom/adobe/adobepass/accessenabler/b/a;

    invoke-direct {v4}, Lcom/adobe/adobepass/accessenabler/b/a;-><init>()V

    sget-boolean v5, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a:Z

    invoke-virtual {v4, v0, v2, v3, v5}, Lcom/adobe/adobepass/accessenabler/b/a;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 476
    if-nez v0, :cond_2

    .line 477
    const-string v0, "AccessEnablerService"

    const-string v2, "No response from server."

    invoke-static {v0, v2}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->a:Lcom/adobe/adobepass/accessenabler/api/e$a;

    sget-object v2, Lcom/adobe/adobepass/accessenabler/api/e$a;->a:Lcom/adobe/adobepass/accessenabler/api/e$a;

    if-ne v0, v2, :cond_1

    .line 481
    const-string v0, "AccessEnablerService"

    const-string v1, "Passive authN flow failed"

    invoke-static {v0, v1}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-virtual {p0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a()V

    .line 557
    :goto_0
    return-void

    .line 486
    :cond_1
    const-string v0, "Provider not Available Error"

    invoke-direct {p0, v1, v0, v7}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a(ILjava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 492
    :cond_2
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 494
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_8

    .line 495
    invoke-static {v0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    .line 499
    new-instance v2, Lcom/adobe/adobepass/accessenabler/a/a;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/adobe/adobepass/accessenabler/a/a;-><init>(Ljava/lang/String;Z)V

    .line 500
    invoke-static {v0}, Lcom/adobe/adobepass/accessenabler/a/k;->d(Ljava/lang/String;)Lcom/adobe/adobepass/accessenabler/a/k;

    move-result-object v3

    .line 1610
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->a:Lcom/adobe/adobepass/accessenabler/api/e$a;

    sget-object v4, Lcom/adobe/adobepass/accessenabler/api/e$a;->a:Lcom/adobe/adobepass/accessenabler/api/e$a;

    if-ne v0, v4, :cond_5

    move v0, v1

    .line 503
    :goto_1
    if-eqz v0, :cond_3

    .line 504
    invoke-virtual {v2}, Lcom/adobe/adobepass/accessenabler/a/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 505
    iget-object v4, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    invoke-static {v4, p0}, Lcom/adobe/adobepass/accessenabler/api/e;->a(Lcom/adobe/adobepass/accessenabler/api/b;Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;)Lcom/adobe/adobepass/accessenabler/api/e;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/adobe/adobepass/accessenabler/api/e;->a(Ljava/util/List;)V

    .line 509
    :cond_3
    invoke-virtual {v2}, Lcom/adobe/adobepass/accessenabler/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 510
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v0, v2}, Lcom/adobe/adobepass/accessenabler/c/b;->a(Lcom/adobe/adobepass/accessenabler/a/a;)V

    .line 521
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/adobe/adobepass/accessenabler/a/k;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 522
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v0, v3}, Lcom/adobe/adobepass/accessenabler/c/b;->a(Lcom/adobe/adobepass/accessenabler/a/k;)V

    .line 523
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/adobe/adobepass/accessenabler/api/b;->g:Lcom/adobe/adobepass/accessenabler/a/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    :cond_4
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->a:Lcom/adobe/adobepass/accessenabler/api/e$a;

    sget-object v1, Lcom/adobe/adobepass/accessenabler/api/e$a;->a:Lcom/adobe/adobepass/accessenabler/api/e$a;

    if-ne v0, v1, :cond_b

    .line 551
    invoke-virtual {p0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a()V

    goto :goto_0

    .line 1614
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v2}, Lcom/adobe/adobepass/accessenabler/a/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/adobe/adobepass/accessenabler/a/j;->c(Ljava/lang/String;)Lcom/adobe/adobepass/accessenabler/a/g;

    move-result-object v0

    .line 1615
    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/g;->e()Z

    move-result v0

    goto :goto_1

    .line 513
    :cond_6
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->a:Lcom/adobe/adobepass/accessenabler/api/e$a;

    sget-object v2, Lcom/adobe/adobepass/accessenabler/api/e$a;->a:Lcom/adobe/adobepass/accessenabler/api/e$a;

    if-ne v0, v2, :cond_7

    .line 514
    invoke-virtual {p0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 537
    :catch_0
    move-exception v0

    .line 538
    iget-object v2, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v2, v2, Lcom/adobe/adobepass/accessenabler/api/b;->a:Lcom/adobe/adobepass/accessenabler/api/e$a;

    sget-object v3, Lcom/adobe/adobepass/accessenabler/api/e$a;->a:Lcom/adobe/adobepass/accessenabler/api/e$a;

    if-ne v2, v3, :cond_a

    .line 539
    invoke-virtual {p0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a()V

    goto/16 :goto_0

    .line 516
    :cond_7
    const/4 v0, 0x0

    :try_start_2
    const-string v2, "Generic Authentication Error"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a(ILjava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 527
    :cond_8
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->a:Lcom/adobe/adobepass/accessenabler/api/e$a;

    sget-object v3, Lcom/adobe/adobepass/accessenabler/api/e$a;->a:Lcom/adobe/adobepass/accessenabler/api/e$a;

    if-ne v0, v3, :cond_9

    .line 528
    invoke-virtual {p0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a()V

    goto/16 :goto_0

    .line 532
    :cond_9
    const-string v0, "AccessEnablerService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Bad response from server. ( "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const/4 v0, 0x0

    const-string v2, "Internal Authentication Error"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a(ILjava/lang/String;Ljava/lang/Boolean;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 543
    :cond_a
    const-string v2, "AccessEnablerService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const-string v0, "Generic Authentication Error"

    invoke-direct {p0, v1, v0, v7}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a(ILjava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 556
    :cond_b
    const-string v0, ""

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v8, v0, v1}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a(ILjava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 93
    invoke-static {}, Lcom/adobe/adobepass/accessenabler/api/a;->a()Lcom/adobe/adobepass/accessenabler/api/a;

    move-result-object v0

    .line 94
    if-nez v0, :cond_0

    .line 95
    const-string v0, "AccessEnablerService"

    const-string v1, "No Access Enabler instance detected, ignoring request."

    invoke-static {v0, v1}, Lcom/adobe/adobepass/accessenabler/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/a;->c()Lcom/adobe/adobepass/accessenabler/api/d;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->c:Lcom/adobe/adobepass/accessenabler/api/d;

    .line 100
    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/a;->d()Lcom/adobe/adobepass/accessenabler/api/b;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    .line 103
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 104
    const-string v1, "op_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 107
    packed-switch v1, :pswitch_data_0

    .line 296
    const-string v0, "AccessEnablerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid AccessEanbler op. code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/adobepass/accessenabler/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :pswitch_0
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v1, v1, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v1, v3}, Lcom/adobe/adobepass/accessenabler/a/j;->a(Z)V

    .line 114
    const-string v1, "requestor_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 117
    const-string v2, "requestor_id"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    const-string v2, "sp.auth.adobe.com/adobe-services"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    const-string v2, "sp_urls"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 125
    new-instance v0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;

    invoke-direct {v0, p0, v3, v1}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;-><init>(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;ILandroid/os/Bundle;)V

    .line 126
    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;->start()V

    goto :goto_0

    .line 134
    :pswitch_1
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v1, v1, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v1, v3}, Lcom/adobe/adobepass/accessenabler/a/j;->a(Z)V

    .line 137
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    const-string v2, "sp_urls"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Lcom/adobe/adobepass/accessenabler/api/b;->b:Ljava/util/ArrayList;

    .line 138
    const-string v1, "requestor_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 141
    const-string v2, "requestor_id"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v0, "sp_urls"

    iget-object v2, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v2, v2, Lcom/adobe/adobepass/accessenabler/api/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 145
    new-instance v0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;

    invoke-direct {v0, p0, v3, v1}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;-><init>(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;ILandroid/os/Bundle;)V

    .line 146
    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;->start()V

    goto/16 :goto_0

    .line 152
    :pswitch_2
    new-instance v0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, v2}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;-><init>(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;ILandroid/os/Bundle;)V

    .line 154
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v1, v1, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v1}, Lcom/adobe/adobepass/accessenabler/a/j;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;->start()V

    goto/16 :goto_0

    .line 157
    :cond_1
    sget-object v1, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->e:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 163
    :pswitch_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 164
    const-string v2, "force_authn"

    const-string v3, "force_authn"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 165
    const-string v2, "generic_data"

    const-string v3, "generic_data"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v2, v1}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;-><init>(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;ILandroid/os/Bundle;)V

    .line 170
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v1, v1, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v1}, Lcom/adobe/adobepass/accessenabler/a/j;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 171
    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;->start()V

    goto/16 :goto_0

    .line 173
    :cond_2
    sget-object v1, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->e:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 180
    :pswitch_4
    new-instance v0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, v2}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;-><init>(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;ILandroid/os/Bundle;)V

    .line 182
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v1, v1, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v1}, Lcom/adobe/adobepass/accessenabler/a/j;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 183
    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;->start()V

    goto/16 :goto_0

    .line 185
    :cond_3
    sget-object v1, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->e:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 191
    :pswitch_5
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 192
    const-string v2, "resource_id"

    const-string v3, "resource_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v2, "generic_data"

    const-string v3, "generic_data"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance v0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;

    const/4 v2, 0x5

    invoke-direct {v0, p0, v2, v1}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;-><init>(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;ILandroid/os/Bundle;)V

    .line 198
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v1, v1, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v1}, Lcom/adobe/adobepass/accessenabler/a/j;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 199
    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;->start()V

    goto/16 :goto_0

    .line 201
    :cond_4
    sget-object v1, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->e:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 207
    :pswitch_6
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 208
    const-string v2, "resource_id"

    const-string v3, "resource_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v2, "generic_data"

    const-string v3, "generic_data"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    new-instance v0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;

    const/4 v2, 0x6

    invoke-direct {v0, p0, v2, v1}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;-><init>(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;ILandroid/os/Bundle;)V

    .line 214
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v1, v1, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v1}, Lcom/adobe/adobepass/accessenabler/a/j;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 215
    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;->start()V

    goto/16 :goto_0

    .line 217
    :cond_5
    sget-object v1, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->e:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 223
    :pswitch_7
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 224
    const-string v2, "mvpd_id"

    const-string v3, "mvpd_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    new-instance v0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;

    const/4 v2, 0x7

    invoke-direct {v0, p0, v2, v1}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;-><init>(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;ILandroid/os/Bundle;)V

    .line 228
    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;->start()V

    goto/16 :goto_0

    .line 234
    :pswitch_8
    new-instance v0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1, v2}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;-><init>(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;ILandroid/os/Bundle;)V

    .line 235
    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;->start()V

    goto/16 :goto_0

    .line 240
    :pswitch_9
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 241
    const-string v2, "metadata_key"

    const-string v3, "metadata_key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 244
    new-instance v0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;

    const/16 v2, 0x9

    invoke-direct {v0, p0, v2, v1}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;-><init>(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;ILandroid/os/Bundle;)V

    .line 246
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v1, v1, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v1}, Lcom/adobe/adobepass/accessenabler/a/j;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 247
    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;->start()V

    goto/16 :goto_0

    .line 249
    :cond_6
    sget-object v1, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->e:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 256
    :pswitch_a
    new-instance v0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1, v2}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;-><init>(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;ILandroid/os/Bundle;)V

    .line 258
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v1, v1, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v1}, Lcom/adobe/adobepass/accessenabler/a/j;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 259
    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;->start()V

    goto/16 :goto_0

    .line 261
    :cond_7
    sget-object v1, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->e:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 267
    :pswitch_b
    const-string v1, "resource_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 269
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 270
    const-string v2, "resource_id"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 273
    new-instance v0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;

    const/16 v2, 0xb

    invoke-direct {v0, p0, v2, v1}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;-><init>(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;ILandroid/os/Bundle;)V

    .line 275
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v1, v1, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v1}, Lcom/adobe/adobepass/accessenabler/a/j;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 276
    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;->start()V

    goto/16 :goto_0

    .line 278
    :cond_8
    sget-object v1, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->e:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 285
    :pswitch_c
    new-instance v0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1, v2}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;-><init>(Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;ILandroid/os/Bundle;)V

    .line 287
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v1, v1, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v1}, Lcom/adobe/adobepass/accessenabler/a/j;->a()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 288
    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService$b;->start()V

    goto/16 :goto_0

    .line 290
    :cond_9
    sget-object v1, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->e:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_c
    .end packed-switch
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 87
    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    .line 88
    const/4 v0, 0x2

    return v0
.end method
