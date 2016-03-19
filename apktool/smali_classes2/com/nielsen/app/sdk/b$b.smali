.class public final Lcom/nielsen/app/sdk/b$b;
.super Lcom/nielsen/app/sdk/h$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nielsen/app/sdk/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/nielsen/app/sdk/b;

.field private b:Lcom/nielsen/app/sdk/h$c;


# direct methods
.method public constructor <init>(Lcom/nielsen/app/sdk/b;Lcom/nielsen/app/sdk/h;)V
    .locals 10

    .prologue
    const/16 v9, 0x49

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1793
    iput-object p1, p0, Lcom/nielsen/app/sdk/b$b;->a:Lcom/nielsen/app/sdk/b;

    .line 1794
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "ConfigRequest"

    invoke-direct {p0, p2, v0}, Lcom/nielsen/app/sdk/h$d;-><init>(Lcom/nielsen/app/sdk/h;Ljava/lang/String;)V

    .line 1885
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nielsen/app/sdk/b$b;->b:Lcom/nielsen/app/sdk/h$c;

    .line 1796
    invoke-static {p1}, Lcom/nielsen/app/sdk/b;->c(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/w;->r()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1797
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No Network connection. Device is currently offline"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1800
    :cond_0
    invoke-static {p1}, Lcom/nielsen/app/sdk/b;->b(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/AppNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/AppNative;->a()J

    move-result-wide v2

    .line 1801
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 1802
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No URL parser object instantiated"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1805
    :cond_1
    invoke-static {p1}, Lcom/nielsen/app/sdk/b;->l(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/b$c;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/nielsen/app/sdk/b$c;->a(J)V

    .line 1807
    invoke-static {p1}, Lcom/nielsen/app/sdk/b;->c(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/w;->e()Z

    move-result v1

    .line 1808
    if-eqz v1, :cond_7

    .line 1809
    invoke-static {p1}, Lcom/nielsen/app/sdk/b;->l(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/b$c;

    move-result-object v4

    const-string v5, "nol_appdisable"

    invoke-static {p1}, Lcom/nielsen/app/sdk/b;->e(Lcom/nielsen/app/sdk/b;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "true"

    :goto_0
    invoke-virtual {v4, v5, v0}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    :goto_1
    invoke-static {p1}, Lcom/nielsen/app/sdk/b;->c(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/w;->h()Z

    move-result v4

    .line 1815
    if-eqz v4, :cond_9

    .line 1816
    invoke-static {p1}, Lcom/nielsen/app/sdk/b;->l(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/b$c;

    move-result-object v5

    const-string v6, "nol_useroptout"

    invoke-static {p1}, Lcom/nielsen/app/sdk/b;->d(Lcom/nielsen/app/sdk/b;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "true"

    :goto_2
    invoke-virtual {v5, v6, v0}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    :goto_3
    if-nez v1, :cond_2

    if-eqz v4, :cond_3

    :cond_2
    invoke-static {p1}, Lcom/nielsen/app/sdk/b;->e(Lcom/nielsen/app/sdk/b;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {p1}, Lcom/nielsen/app/sdk/b;->d(Lcom/nielsen/app/sdk/b;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1823
    :cond_3
    invoke-static {p1}, Lcom/nielsen/app/sdk/b;->l(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/b$c;

    move-result-object v0

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1824
    invoke-static {p1}, Lcom/nielsen/app/sdk/b;->l(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/b$c;

    move-result-object v1

    const-string v4, "nol_latitude"

    invoke-virtual {v1, v4, v0}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1825
    invoke-static {p1}, Lcom/nielsen/app/sdk/b;->l(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/b$c;

    move-result-object v0

    const-string v1, "longitude"

    invoke-virtual {v0, v1}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1826
    invoke-static {p1}, Lcom/nielsen/app/sdk/b;->l(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/b$c;

    move-result-object v1

    const-string v4, "nol_longitude"

    invoke-virtual {v1, v4, v0}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    :goto_4
    invoke-static {p1}, Lcom/nielsen/app/sdk/b;->l(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/b$c;

    move-result-object v0

    const-string v1, "nol_url_override"

    invoke-virtual {v0, v1}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1835
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1837
    :cond_4
    const-string v0, "https://secure-|!nol_sfcode!|.imrworldwide.com/cgi-bin/cfg?cfgv=150&longitude=|![nol_longitude]!|&latitude=|![nol_latitude]!|&apid=|!nol_appid!|&apv=|!nol_appversion!|&apn=|!nol_appname!|&sdkv=|!nol_sdkversion!|&nuid=|!nol_nuid!|&osver=|!nol_osversion!|&devtypid=|!nol_devtypeid!|&devid=|![nol_deviceId]!|&fmt=json&adf=|![nol_appdisable]!|&uoo=|![nol_useroptout]!|&sfcode=|![nol_sfcode]!|&ccode=|![nol_countrycode]!|&dma=|![nol_dma]!||![nol_appParams]!|"

    .line 1839
    invoke-static {}, Lcom/nielsen/app/sdk/w;->s()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1840
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&rnd="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1847
    :goto_5
    new-array v1, v8, [Z

    aput-boolean v7, v1, v7

    .line 1849
    invoke-static {p1}, Lcom/nielsen/app/sdk/b;->l(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/b$c;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nielsen/app/sdk/b;->a(Lcom/nielsen/app/sdk/b;Ljava/lang/String;)Ljava/lang/String;

    .line 1850
    aget-boolean v0, v1, v7

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/nielsen/app/sdk/b;->j(Lcom/nielsen/app/sdk/b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/nielsen/app/sdk/b;->j(Lcom/nielsen/app/sdk/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1852
    invoke-static {p1}, Lcom/nielsen/app/sdk/b;->j(Lcom/nielsen/app/sdk/b;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1861
    const-string v0, "Config request. Sending message: %s"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/nielsen/app/sdk/b;->j(Lcom/nielsen/app/sdk/b;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v7

    invoke-static {v9, v0, v1}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 1863
    new-instance v0, Lcom/nielsen/app/sdk/h$c;

    invoke-static {p1}, Lcom/nielsen/app/sdk/b;->a(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/h;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "ConfigRequest"

    invoke-direct {v0, v1, v4, p0}, Lcom/nielsen/app/sdk/h$c;-><init>(Lcom/nielsen/app/sdk/h;Ljava/lang/String;Lcom/nielsen/app/sdk/h$d;)V

    iput-object v0, p0, Lcom/nielsen/app/sdk/b$b;->b:Lcom/nielsen/app/sdk/h$c;

    .line 1869
    :cond_5
    :goto_6
    invoke-static {p1}, Lcom/nielsen/app/sdk/b;->b(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/AppNative;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/nielsen/app/sdk/AppNative;->a(J)V

    .line 1870
    invoke-static {p1}, Lcom/nielsen/app/sdk/b;->l(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/b$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/b$c;->a()V

    .line 1871
    return-void

    .line 1809
    :cond_6
    const-string v0, "false"

    goto/16 :goto_0

    .line 1811
    :cond_7
    invoke-static {p1}, Lcom/nielsen/app/sdk/b;->l(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/b$c;

    move-result-object v0

    const-string v4, "nol_appdisable"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1816
    :cond_8
    const-string v0, "false"

    goto/16 :goto_2

    .line 1818
    :cond_9
    invoke-static {p1}, Lcom/nielsen/app/sdk/b;->l(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/b$c;

    move-result-object v0

    const-string v5, "nol_useroptout"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1830
    :cond_a
    invoke-static {p1}, Lcom/nielsen/app/sdk/b;->l(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/b$c;

    move-result-object v0

    const-string v1, "nol_latitude"

    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    invoke-static {p1}, Lcom/nielsen/app/sdk/b;->l(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/b$c;

    move-result-object v0

    const-string v1, "nol_longitude"

    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1844
    :cond_b
    const-string v1, "USING URL OVERRIDE"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v9, v1, v4}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 1866
    :cond_c
    const/4 v0, 0x3

    const/16 v1, 0x45

    const-string v4, "Missing query string in config url (%s)"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/nielsen/app/sdk/b;->j(Lcom/nielsen/app/sdk/b;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v0, v1, v4, v5}, Lcom/nielsen/app/sdk/q;->a(ICLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v1, 0x4

    .line 1688
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$b;->a:Lcom/nielsen/app/sdk/b;

    invoke-static {v0}, Lcom/nielsen/app/sdk/b;->g(Lcom/nielsen/app/sdk/b;)I

    move-result v0

    if-ge v0, v1, :cond_2

    .line 1690
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$b;->a:Lcom/nielsen/app/sdk/b;

    invoke-static {v0}, Lcom/nielsen/app/sdk/b;->h(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1691
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$b;->a:Lcom/nielsen/app/sdk/b;

    invoke-static {v0}, Lcom/nielsen/app/sdk/b;->h(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/k;

    move-result-object v0

    const-string v1, "AppTaskConfig"

    invoke-virtual {v0, v1}, Lcom/nielsen/app/sdk/k;->a(Ljava/lang/String;)Z

    .line 1694
    :cond_0
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$b;->a:Lcom/nielsen/app/sdk/b;

    invoke-static {v0}, Lcom/nielsen/app/sdk/b;->i(Lcom/nielsen/app/sdk/b;)I

    .line 1722
    :cond_1
    :goto_0
    return-void

    .line 1698
    :cond_2
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$b;->a:Lcom/nielsen/app/sdk/b;

    invoke-static {v0}, Lcom/nielsen/app/sdk/b;->g(Lcom/nielsen/app/sdk/b;)I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 1700
    invoke-static {}, Lcom/nielsen/app/sdk/o;->m()Lcom/nielsen/app/sdk/e;

    move-result-object v0

    .line 1701
    if-eqz v0, :cond_3

    .line 1702
    invoke-virtual {v0}, Lcom/nielsen/app/sdk/e;->b()Z

    .line 1705
    :cond_3
    const/4 v0, 0x2

    const/16 v1, 0x45

    const-string v2, "Config not received, %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nielsen/app/sdk/b$b;->a:Lcom/nielsen/app/sdk/b;

    invoke-static {v5}, Lcom/nielsen/app/sdk/b;->j(Lcom/nielsen/app/sdk/b;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/nielsen/app/sdk/q;->a(ICLjava/lang/String;[Ljava/lang/Object;)V

    .line 1707
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$b;->a:Lcom/nielsen/app/sdk/b;

    invoke-static {v0}, Lcom/nielsen/app/sdk/b;->h(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/k;

    move-result-object v0

    const-string v1, "AppTaskConfig"

    invoke-virtual {v0, v1}, Lcom/nielsen/app/sdk/k;->c(Ljava/lang/String;)Lcom/nielsen/app/sdk/k$a;

    move-result-object v0

    .line 1708
    if-eqz v0, :cond_4

    .line 1709
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$b;->a:Lcom/nielsen/app/sdk/b;

    invoke-static {v0}, Lcom/nielsen/app/sdk/b;->h(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/k;

    move-result-object v0

    const-string v1, "AppTaskConfig"

    invoke-virtual {v0, v1}, Lcom/nielsen/app/sdk/k;->b(Ljava/lang/String;)Z

    .line 1712
    :cond_4
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$b;->a:Lcom/nielsen/app/sdk/b;

    new-instance v1, Lcom/nielsen/app/sdk/b$d;

    iget-object v2, p0, Lcom/nielsen/app/sdk/b$b;->a:Lcom/nielsen/app/sdk/b;

    iget-object v3, p0, Lcom/nielsen/app/sdk/b$b;->a:Lcom/nielsen/app/sdk/b;

    invoke-static {v3}, Lcom/nielsen/app/sdk/b;->h(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/k;

    move-result-object v3

    const-wide/32 v4, 0x927c0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nielsen/app/sdk/b$d;-><init>(Lcom/nielsen/app/sdk/b;Lcom/nielsen/app/sdk/k;J)V

    invoke-static {v0, v1}, Lcom/nielsen/app/sdk/b;->a(Lcom/nielsen/app/sdk/b;Lcom/nielsen/app/sdk/b$d;)Lcom/nielsen/app/sdk/b$d;

    .line 1713
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$b;->a:Lcom/nielsen/app/sdk/b;

    invoke-static {v0}, Lcom/nielsen/app/sdk/b;->k(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/b$d;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1714
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Could not instantiate config retry task. No config request will happen"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1716
    :cond_5
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$b;->a:Lcom/nielsen/app/sdk/b;

    invoke-static {v0}, Lcom/nielsen/app/sdk/b;->i(Lcom/nielsen/app/sdk/b;)I

    .line 1718
    :cond_6
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$b;->a:Lcom/nielsen/app/sdk/b;

    invoke-static {v0}, Lcom/nielsen/app/sdk/b;->h(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/k;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1719
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$b;->a:Lcom/nielsen/app/sdk/b;

    invoke-static {v0}, Lcom/nielsen/app/sdk/b;->h(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/k;

    move-result-object v0

    const-string v1, "AppTaskConfig"

    invoke-virtual {v0, v1}, Lcom/nielsen/app/sdk/k;->a(Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 1875
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%%%"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nielsen/app/sdk/b$b;->a:Lcom/nielsen/app/sdk/b;

    invoke-static {v1}, Lcom/nielsen/app/sdk/b;->c(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nielsen/app/sdk/w;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%%%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1879
    :try_start_0
    iget-object v1, p0, Lcom/nielsen/app/sdk/b$b;->b:Lcom/nielsen/app/sdk/h$c;

    iget-object v2, p0, Lcom/nielsen/app/sdk/b$b;->a:Lcom/nielsen/app/sdk/b;

    invoke-static {v2}, Lcom/nielsen/app/sdk/b;->j(Lcom/nielsen/app/sdk/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/nielsen/app/sdk/h$c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1884
    :goto_0
    return-void

    .line 1881
    :catch_0
    move-exception v0

    .line 1882
    const/16 v1, 0x45

    const-string v2, "startRequest failed. Exception: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v10, 0x0

    .line 1609
    const/16 v0, 0x49

    :try_start_0
    const-string v2, "CONFIG response: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 1611
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$b;->a:Lcom/nielsen/app/sdk/b;

    invoke-static {v0}, Lcom/nielsen/app/sdk/b;->c(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/w;->h()Z

    move-result v0

    .line 1612
    iget-object v2, p0, Lcom/nielsen/app/sdk/b$b;->a:Lcom/nielsen/app/sdk/b;

    invoke-static {v2}, Lcom/nielsen/app/sdk/b;->c(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nielsen/app/sdk/w;->e()Z

    move-result v2

    .line 1614
    if-nez v0, :cond_0

    if-eqz v2, :cond_6

    .line 1616
    :cond_0
    if-eqz v2, :cond_1

    .line 1617
    iget-object v2, p0, Lcom/nielsen/app/sdk/b$b;->a:Lcom/nielsen/app/sdk/b;

    invoke-static {v2}, Lcom/nielsen/app/sdk/b;->c(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nielsen/app/sdk/w;->f()V

    .line 1619
    :cond_1
    if-eqz v0, :cond_2

    .line 1620
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$b;->a:Lcom/nielsen/app/sdk/b;

    invoke-static {v0}, Lcom/nielsen/app/sdk/b;->c(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/w;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/nielsen/app/sdk/w;->a(Z)V

    .line 1623
    :cond_2
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$b;->a:Lcom/nielsen/app/sdk/b;

    invoke-static {v0}, Lcom/nielsen/app/sdk/b;->d(Lcom/nielsen/app/sdk/b;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nielsen/app/sdk/b$b;->a:Lcom/nielsen/app/sdk/b;

    invoke-static {v0}, Lcom/nielsen/app/sdk/b;->e(Lcom/nielsen/app/sdk/b;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1628
    :cond_3
    const/16 v0, 0x49

    const-string v2, "Goodbye ping... USER OPT OUT / APP SDK DISABLE finished"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 1630
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$b;->a:Lcom/nielsen/app/sdk/b;

    invoke-static {v0}, Lcom/nielsen/app/sdk/b;->f(Lcom/nielsen/app/sdk/b;)Z

    .line 2772
    invoke-static {}, Lcom/nielsen/app/sdk/o;->n()Lcom/nielsen/app/sdk/t;

    move-result-object v0

    .line 2773
    invoke-virtual {v0}, Lcom/nielsen/app/sdk/t;->c()V

    .line 2775
    const/16 v0, 0x49

    const-string v2, "STOP UPLOAD task now"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 2777
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$b;->a:Lcom/nielsen/app/sdk/b;

    invoke-static {v0}, Lcom/nielsen/app/sdk/b;->h(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/k;

    move-result-object v0

    const-string v2, "AppUpload"

    invoke-virtual {v0, v2}, Lcom/nielsen/app/sdk/k;->c(Ljava/lang/String;)Lcom/nielsen/app/sdk/k$a;

    move-result-object v0

    .line 2778
    if-eqz v0, :cond_4

    .line 2779
    invoke-virtual {v0}, Lcom/nielsen/app/sdk/k$a;->a()Z

    .line 1676
    :cond_4
    :goto_0
    return-void

    .line 1635
    :cond_5
    const/16 v0, 0x49

    const-string v2, "Hello ping... USER OPT IN / APP SDK ENABLE finished"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 1637
    :cond_6
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1639
    const/16 v0, 0x49

    const-string v2, "Receive content to parse."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 1641
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$b;->a:Lcom/nielsen/app/sdk/b;

    invoke-virtual {v0, p1}, Lcom/nielsen/app/sdk/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1646
    invoke-direct {p0}, Lcom/nielsen/app/sdk/b$b;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1667
    :catch_0
    move-exception v0

    const/4 v2, 0x2

    const/16 v3, 0x45

    const-string v4, "Could not finalize download of config file"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static/range {v0 .. v5}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3732
    :cond_7
    :try_start_1
    invoke-static {}, Lcom/nielsen/app/sdk/o;->m()Lcom/nielsen/app/sdk/e;

    move-result-object v0

    .line 3733
    if-eqz v0, :cond_8

    .line 3734
    invoke-virtual {v0}, Lcom/nielsen/app/sdk/e;->b()Z

    .line 3737
    :cond_8
    invoke-static {}, Lcom/nielsen/app/sdk/o;->n()Lcom/nielsen/app/sdk/t;

    move-result-object v0

    .line 3739
    invoke-virtual {v0}, Lcom/nielsen/app/sdk/t;->c()V

    .line 3743
    iget-object v2, p0, Lcom/nielsen/app/sdk/b$b;->a:Lcom/nielsen/app/sdk/b;

    const-string v3, "nol_sendTimer"

    const-wide/16 v4, 0x5a

    invoke-virtual {v2, v3, v4, v5}, Lcom/nielsen/app/sdk/b;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 3744
    iget-object v4, p0, Lcom/nielsen/app/sdk/b$b;->a:Lcom/nielsen/app/sdk/b;

    invoke-virtual {v4}, Lcom/nielsen/app/sdk/b;->a()Ljava/lang/String;

    move-result-object v4

    .line 3746
    new-instance v5, Lcom/nielsen/app/sdk/m;

    iget-object v6, p0, Lcom/nielsen/app/sdk/b$b;->a:Lcom/nielsen/app/sdk/b;

    invoke-static {v6}, Lcom/nielsen/app/sdk/b;->h(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/k;

    move-result-object v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, v2

    invoke-direct {v5, v6, v8, v9, v4}, Lcom/nielsen/app/sdk/m;-><init>(Lcom/nielsen/app/sdk/k;JLjava/lang/String;)V

    .line 3748
    iget-object v4, p0, Lcom/nielsen/app/sdk/b$b;->a:Lcom/nielsen/app/sdk/b;

    invoke-static {v4}, Lcom/nielsen/app/sdk/b;->h(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/k;

    move-result-object v4

    const-string v5, "AppUpload"

    invoke-virtual {v4, v5}, Lcom/nielsen/app/sdk/k;->a(Ljava/lang/String;)Z

    .line 3751
    const/16 v4, 0x49

    const-string v5, "START UPLOAD task now. Period(%d)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v4, v5, v6}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 3755
    invoke-virtual {v0}, Lcom/nielsen/app/sdk/t;->d()V

    .line 3759
    iget-object v0, p0, Lcom/nielsen/app/sdk/b$b;->a:Lcom/nielsen/app/sdk/b;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/b;->d()V

    .line 3761
    const/4 v0, 0x1

    const-string v2, "Config file successfully loaded and parsed."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/nielsen/app/sdk/q;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1658
    :cond_9
    const/16 v0, 0x49

    const-string v2, "Received empty config file. Keep retrying"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 1663
    invoke-direct {p0}, Lcom/nielsen/app/sdk/b$b;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 7

    .prologue
    const/16 v3, 0x45

    const/16 v2, 0x9

    const/4 v6, 0x0

    .line 1561
    const/16 v0, 0x9

    const/16 v1, 0x45

    :try_start_0
    const-string v4, "Failed to get config response"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v4, v5}, Lcom/nielsen/app/sdk/q;->a(ICLjava/lang/String;[Ljava/lang/Object;)V

    .line 1566
    invoke-direct {p0}, Lcom/nielsen/app/sdk/b$b;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1571
    :goto_0
    return-void

    .line 1569
    :catch_0
    move-exception v0

    const/4 v1, 0x1

    const-string v4, "Failed to get config response; failed retry"

    new-array v5, v6, [Ljava/lang/Object;

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
