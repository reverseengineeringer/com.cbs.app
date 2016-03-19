.class final Lcom/urbanairship/push/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ljava/net/URL;

.field private final b:Lcom/urbanairship/b/b;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/urbanairship/b/b;

    invoke-direct {v0}, Lcom/urbanairship/b/b;-><init>()V

    invoke-direct {p0, v0}, Lcom/urbanairship/push/a;-><init>(Lcom/urbanairship/b/b;)V

    .line 51
    return-void
.end method

.method private constructor <init>(Lcom/urbanairship/b/b;)V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/urbanairship/push/a;->b:Lcom/urbanairship/b/b;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/p;->l()Lcom/urbanairship/a;

    move-result-object v1

    iget-object v1, v1, Lcom/urbanairship/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "api/channels/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/urbanairship/push/a;->a:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/urbanairship/push/a;->a:Ljava/net/URL;

    .line 62
    const-string v1, "ChannelAPIClient - Invalid hostURL    "

    invoke-static {v1, v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/push/c;
    .locals 3

    .prologue
    .line 100
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->l()Lcom/urbanairship/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/p;->l()Lcom/urbanairship/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-static {p1, p0}, Lcom/urbanairship/b/b;->a(Ljava/lang/String;Ljava/net/URL;)Lcom/urbanairship/b/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/urbanairship/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    move-result-object v0

    const-string v1, "application/json"

    invoke-virtual {v0, p2, v1}, Lcom/urbanairship/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    move-result-object v0

    const-string v1, "Accept"

    const-string v2, "application/vnd.urbanairship+json; version=3;"

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/b/a;->b()Lcom/urbanairship/b/c;

    move-result-object v1

    .line 109
    if-nez v1, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 115
    :goto_0
    return-object v0

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ChannelAPIClient - Received channel response: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    new-instance v0, Lcom/urbanairship/push/c;

    invoke-direct {v0, v1}, Lcom/urbanairship/push/c;-><init>(Lcom/urbanairship/b/c;)V

    goto :goto_0
.end method


# virtual methods
.method final a(Lcom/urbanairship/push/b;)Lcom/urbanairship/push/c;
    .locals 3

    .prologue
    .line 73
    invoke-virtual {p1}, Lcom/urbanairship/push/b;->e()Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/urbanairship/push/a;->a:Ljava/net/URL;

    const-string v2, "POST"

    invoke-static {v1, v2, v0}, Lcom/urbanairship/push/a;->a(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/push/c;

    move-result-object v0

    return-object v0
.end method

.method final a(Ljava/net/URL;Lcom/urbanairship/push/b;)Lcom/urbanairship/push/c;
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p2}, Lcom/urbanairship/push/b;->e()Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    const-string v1, "PUT"

    invoke-static {p1, v1, v0}, Lcom/urbanairship/push/a;->a(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/push/c;

    move-result-object v0

    return-object v0
.end method
