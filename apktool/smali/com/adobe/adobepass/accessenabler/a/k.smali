.class public Lcom/adobe/adobepass/accessenabler/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Long;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static c(Ljava/lang/String;)Lcom/adobe/adobepass/accessenabler/a/k;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 106
    :try_start_0
    new-instance v0, Lcom/google/e/e;

    invoke-direct {v0}, Lcom/google/e/e;-><init>()V

    .line 107
    const-class v2, Lcom/adobe/adobepass/accessenabler/a/k;

    .line 2724
    if-nez p0, :cond_0

    move-object v0, v1

    .line 2701
    :goto_0
    invoke-static {v2}, Lcom/google/e/b/i;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 107
    check-cast v0, Lcom/adobe/adobepass/accessenabler/a/k;

    .line 112
    :goto_1
    return-object v0

    .line 2727
    :cond_0
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 2728
    invoke-virtual {v0, v3, v2}, Lcom/google/e/e;->a(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-object v0, v1

    .line 112
    goto :goto_1
.end method

.method public static d(Ljava/lang/String;)Lcom/adobe/adobepass/accessenabler/a/k;
    .locals 2

    .prologue
    .line 131
    const-string v0, "<userMeta>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 132
    const-string v1, "</userMeta>"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 134
    if-ltz v0, :cond_0

    if-ltz v1, :cond_0

    if-lt v0, v1, :cond_1

    .line 135
    :cond_0
    const/4 v0, 0x0

    .line 138
    :goto_0
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/adobepass/accessenabler/a/k;->c(Ljava/lang/String;)Lcom/adobe/adobepass/accessenabler/a/k;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/a/k;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/a/k;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/a/k;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/a/k;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/adobe/adobepass/accessenabler/a/k;)V
    .locals 4

    .prologue
    .line 43
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/adobe/adobepass/accessenabler/a/k;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/a/k;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p1, Lcom/adobe/adobepass/accessenabler/a/k;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 49
    iget-object v0, p1, Lcom/adobe/adobepass/accessenabler/a/k;->a:Ljava/lang/Long;

    iput-object v0, p0, Lcom/adobe/adobepass/accessenabler/a/k;->a:Ljava/lang/Long;

    .line 52
    iget-object v0, p1, Lcom/adobe/adobepass/accessenabler/a/k;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 53
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 54
    iget-object v2, p0, Lcom/adobe/adobepass/accessenabler/a/k;->b:Ljava/util/Map;

    iget-object v3, p1, Lcom/adobe/adobepass/accessenabler/a/k;->b:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 58
    :cond_2
    iget-object v0, p1, Lcom/adobe/adobepass/accessenabler/a/k;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/a/k;->c:Ljava/util/List;

    if-nez v0, :cond_3

    .line 60
    iget-object v0, p1, Lcom/adobe/adobepass/accessenabler/a/k;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/adobe/adobepass/accessenabler/a/k;->c:Ljava/util/List;

    goto :goto_0

    .line 62
    :cond_3
    iget-object v0, p1, Lcom/adobe/adobepass/accessenabler/a/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 63
    iget-object v2, p0, Lcom/adobe/adobepass/accessenabler/a/k;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 64
    iget-object v2, p0, Lcom/adobe/adobepass/accessenabler/a/k;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/a/k;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/a/k;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/a/k;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/a/k;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    :try_start_0
    new-instance v0, Lcom/google/e/e;

    invoke-direct {v0}, Lcom/google/e/e;-><init>()V

    .line 1516
    if-nez p0, :cond_0

    .line 1517
    sget-object v1, Lcom/google/e/k;->a:Lcom/google/e/k;

    .line 1623
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 1624
    invoke-virtual {v0, v1, v2}, Lcom/google/e/e;->a(Lcom/google/e/i;Ljava/lang/Appendable;)V

    .line 1625
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1517
    :goto_0
    return-object v0

    .line 1519
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2538
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 2539
    invoke-virtual {v0, p0, v1, v2}, Lcom/google/e/e;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 2540
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 100
    const/4 v0, 0x0

    goto :goto_0
.end method
