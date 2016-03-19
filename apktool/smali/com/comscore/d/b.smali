.class public final Lcom/comscore/d/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Z


# instance fields
.field protected b:Ljava/net/URL;

.field protected c:Ljava/net/Proxy;

.field private d:Lcom/comscore/c/b;

.field private e:Lcom/comscore/a/b;

.field private f:Lcom/comscore/utils/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/16 v1, 0xd

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/comscore/d/b;->a:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/comscore/a/b;Lcom/comscore/c/b;)V
    .locals 1

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/comscore/d/b;->e:Lcom/comscore/a/b;

    invoke-virtual {p1}, Lcom/comscore/a/b;->g()Lcom/comscore/utils/l;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/d/b;->f:Lcom/comscore/utils/l;

    iput-object p2, p0, Lcom/comscore/d/b;->d:Lcom/comscore/c/b;

    .line 1000
    iget-object v0, p0, Lcom/comscore/d/b;->d:Lcom/comscore/c/b;

    invoke-virtual {v0}, Lcom/comscore/c/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/comscore/d/b;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 0
    iput-object v0, p0, Lcom/comscore/d/b;->b:Ljava/net/URL;

    return-void
.end method

.method private a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 3

    iget-object v0, p0, Lcom/comscore/d/b;->c:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/d/b;->c:Ljava/net/Proxy;

    invoke-virtual {p1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    :goto_0
    const-string v1, "Connection"

    const-string v2, "Close"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/net/URL;
    .locals 7

    const/16 v6, 0x1000

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/comscore/d/b;->e()Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/comscore/d/b;->d:Lcom/comscore/c/b;

    iget-object v1, p0, Lcom/comscore/d/b;->e:Lcom/comscore/a/b;

    invoke-virtual {v1}, Lcom/comscore/a/b;->R()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/comscore/c/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v6, :cond_1

    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    const/16 v0, 0xff8

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "+"

    const-string v4, "%20"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&ns_cut="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_0

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_2
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "0"

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    goto :goto_3

    :cond_0
    move-object v1, v0

    goto :goto_2

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private b()Z
    .locals 2

    .prologue
    .line 0
    .line 3000
    iget-object v0, p0, Lcom/comscore/d/b;->e:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->O()Lcom/comscore/utils/m;

    move-result-object v0

    sget-object v1, Lcom/comscore/utils/m;->a:Lcom/comscore/utils/m;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/comscore/utils/m;->c:Lcom/comscore/utils/m;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/comscore/d/b;->e:Lcom/comscore/a/b;

    invoke-virtual {v1}, Lcom/comscore/a/b;->A()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/comscore/utils/d;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Lcom/comscore/utils/m;->d:Lcom/comscore/utils/m;

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/comscore/d/b;->e:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->f()Lcom/comscore/utils/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comscore/utils/i;->c()Z

    .line 0
    :cond_2
    invoke-direct {p0}, Lcom/comscore/d/b;->c()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/comscore/d/b;->d()V

    :cond_3
    return v0
.end method

.method private c()Z
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/comscore/d/b;->b:Ljava/net/URL;

    .line 4000
    sget-boolean v1, Lcom/comscore/d/b;->a:Z

    .line 0
    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/comscore/d/b;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    :goto_0
    const-string v1, "Content-Type"

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Content-Length"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xc8

    if-ne v0, v5, :cond_0

    invoke-static {v1}, Lcom/comscore/utils/n;->f(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "image/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v3}, Lcom/comscore/utils/n;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const/16 v1, 0xcc

    if-ne v0, v1, :cond_9

    invoke-static {v3}, Lcom/comscore/utils/n;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_9

    :cond_1
    const/4 v1, 0x1

    :try_start_2
    iget-object v0, p0, Lcom/comscore/d/b;->e:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->j()Lcom/comscore/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comscore/b/e;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v0, v1

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    :goto_2
    return v0

    :cond_3
    move v5, v4

    move v3, v4

    move-object v1, v2

    :goto_3
    if-eqz v0, :cond_a

    const/4 v6, 0x5

    if-ge v5, v6, :cond_a

    :try_start_3
    invoke-direct {p0, v0}, Lcom/comscore/d/b;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v3

    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {v3, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const-string v1, "Location"

    invoke-virtual {v3, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5000
    packed-switch v6, :pswitch_data_0

    :cond_4
    :pswitch_0
    move-object v0, v2

    .line 0
    :goto_4
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-object v1, v3

    move v3, v6

    goto :goto_3

    .line 5000
    :pswitch_1
    if-eqz v7, :cond_4

    const/16 v1, 0x131

    if-ne v6, v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v8, 0x3a

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :goto_5
    const-string v8, "//"

    invoke-virtual {v7, v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_5

    add-int/lit8 v1, v1, 0x2

    :cond_5
    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 6000
    const/16 v1, 0x3a

    invoke-virtual {v7, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v1, -0x1

    if-eq v8, v1, :cond_6

    const/4 v1, 0x0

    invoke-virtual {v7, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    :goto_6
    new-instance v8, Ljava/net/Proxy;

    sget-object v9, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v10, Ljava/net/InetSocketAddress;

    invoke-direct {v10, v1, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v8, v9, v10}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 5000
    iput-object v8, p0, Lcom/comscore/d/b;->c:Ljava/net/Proxy;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    .line 0
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    move v0, v4

    :goto_7
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception sending measurement:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/comscore/utils/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/comscore/utils/b;->a(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_2

    .line 6000
    :cond_6
    const/16 v1, 0x50

    move-object v11, v7

    move v7, v1

    move-object v1, v11

    goto :goto_6

    .line 5000
    :cond_7
    :try_start_6
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0, v7}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v1

    goto/16 :goto_4

    .line 0
    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_8
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    throw v0

    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v3, v1

    goto :goto_8

    :catch_1
    move-exception v0

    move-object v1, v0

    move v0, v4

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move v0, v4

    goto :goto_7

    :catch_3
    move-exception v0

    move-object v11, v0

    move v0, v1

    move-object v1, v11

    goto :goto_7

    :cond_9
    move v0, v4

    goto/16 :goto_1

    :cond_a
    move v0, v3

    move-object v2, v1

    goto/16 :goto_0

    :cond_b
    move v1, v4

    goto/16 :goto_5

    .line 5000
    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private d()V
    .locals 3

    .prologue
    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Measurement was not transmitted: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/comscore/d/b;->d:Lcom/comscore/c/b;

    iget-object v2, p0, Lcom/comscore/d/b;->e:Lcom/comscore/a/b;

    invoke-virtual {v2}, Lcom/comscore/a/b;->R()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/comscore/c/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/d/b;->e:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->f()Lcom/comscore/utils/i;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/d/b;->d:Lcom/comscore/c/b;

    .line 7000
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/i;->a(Lcom/comscore/c/b;Z)V

    .line 0
    return-void
.end method

.method private e()Ljava/lang/Boolean;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/comscore/d/b;->e:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->A()Landroid/content/Context;

    move-result-object v2

    const/4 v0, 0x1

    invoke-static {}, Lcom/comscore/utils/d;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "emu"

    :goto_0
    iget-object v3, p0, Lcom/comscore/d/b;->d:Lcom/comscore/c/b;

    const-string v4, "ns_radio"

    invoke-virtual {v3, v4, v2}, Lcom/comscore/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-static {v2}, Lcom/comscore/utils/d;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "wifi"

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/comscore/utils/d;->c(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "wwan"

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/comscore/utils/d;->e(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v2, "bth"

    goto :goto_0

    :cond_3
    invoke-static {v2}, Lcom/comscore/utils/d;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "eth"

    goto :goto_0

    :cond_4
    const-string v0, "unknown"
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public final a()Z
    .locals 8

    .prologue
    .line 0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/comscore/d/b;->e:Lcom/comscore/a/b;

    invoke-virtual {v1}, Lcom/comscore/a/b;->A()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v1, v2}, Lcom/comscore/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/comscore/d/b;->e:Lcom/comscore/a/b;

    invoke-virtual {v3}, Lcom/comscore/a/b;->N()Lcom/comscore/utils/m;

    move-result-object v3

    iget-object v4, p0, Lcom/comscore/d/b;->f:Lcom/comscore/utils/l;

    const-string v5, "lastMeasurementProcessedTimestamp"

    .line 2000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 0
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/comscore/d/c;->a:[I

    invoke-virtual {v3}, Lcom/comscore/utils/m;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/comscore/d/b;->d()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/comscore/d/b;->d()V

    goto :goto_0

    :pswitch_2
    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/comscore/d/b;->e()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/comscore/d/b;->b()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/comscore/d/b;->d()V

    goto :goto_0

    :pswitch_3
    if-eqz v2, :cond_2

    invoke-static {}, Lcom/comscore/utils/d;->b()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/comscore/utils/d;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/comscore/utils/d;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/comscore/d/b;->b()Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/comscore/d/b;->d()V

    goto :goto_0

    :pswitch_4
    if-eqz v2, :cond_4

    invoke-static {}, Lcom/comscore/utils/d;->b()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v1}, Lcom/comscore/utils/d;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v1}, Lcom/comscore/utils/d;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/comscore/d/b;->b()Z

    move-result v0

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/comscore/d/b;->d()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
