.class public Lcom/cbs/app/livetv/model/Person;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Lcom/cbs/app/livetv/model/SocialProvider;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "US"

    iput-object v0, p0, Lcom/cbs/app/livetv/model/Person;->e:Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/cbs/app/livetv/model/SocialProvider;

    invoke-direct {v0}, Lcom/cbs/app/livetv/model/SocialProvider;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/livetv/model/Person;->i:Lcom/cbs/app/livetv/model/SocialProvider;

    .line 31
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    .line 95
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 99
    :goto_0
    const-string v0, "+"

    const-string v1, "%2B"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 100
    return-object v0

    .line 97
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private a()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 78
    const-string v1, "firstName"

    iget-object v2, p0, Lcom/cbs/app/livetv/model/Person;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/cbs/app/livetv/model/Person;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "lastName"

    iget-object v2, p0, Lcom/cbs/app/livetv/model/Person;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/cbs/app/livetv/model/Person;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "email"

    iget-object v2, p0, Lcom/cbs/app/livetv/model/Person;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/cbs/app/livetv/model/Person;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v1, "birthday"

    iget-object v2, p0, Lcom/cbs/app/livetv/model/Person;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v1, "gender"

    iget-object v2, p0, Lcom/cbs/app/livetv/model/Person;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v1, "country"

    iget-object v2, p0, Lcom/cbs/app/livetv/model/Person;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v1, "state"

    iget-object v2, p0, Lcom/cbs/app/livetv/model/Person;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v1, "mpid"

    const-string v2, "4812"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v1, "zip"

    iget-object v2, p0, Lcom/cbs/app/livetv/model/Person;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v1, "optIn"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-object v0
.end method


# virtual methods
.method public getBirthDay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cbs/app/livetv/model/Person;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getEndpointPostMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/cbs/app/livetv/model/Person;->a()Ljava/util/HashMap;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/cbs/app/livetv/model/Person;->g:Ljava/lang/String;

    invoke-static {v1}, Lcom/cbs/app/livetv/model/Person;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    const-string v2, "password"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v2, "confirmPassword"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-object v0
.end method

.method public getEndpointPostMapSocial()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/cbs/app/livetv/model/Person;->a()Ljava/util/HashMap;

    move-result-object v0

    .line 66
    const-string v1, "provider"

    iget-object v2, p0, Lcom/cbs/app/livetv/model/Person;->i:Lcom/cbs/app/livetv/model/SocialProvider;

    invoke-virtual {v2}, Lcom/cbs/app/livetv/model/SocialProvider;->getNameString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v1, "accessToken"

    iget-object v2, p0, Lcom/cbs/app/livetv/model/Person;->i:Lcom/cbs/app/livetv/model/SocialProvider;

    iget-object v2, v2, Lcom/cbs/app/livetv/model/SocialProvider;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v1, p0, Lcom/cbs/app/livetv/model/Person;->i:Lcom/cbs/app/livetv/model/SocialProvider;

    iget-object v1, v1, Lcom/cbs/app/livetv/model/SocialProvider;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 69
    const-string v1, "secret"

    iget-object v2, p0, Lcom/cbs/app/livetv/model/Person;->i:Lcom/cbs/app/livetv/model/SocialProvider;

    iget-object v2, v2, Lcom/cbs/app/livetv/model/SocialProvider;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_0
    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cbs/app/livetv/model/Person;->h:Ljava/lang/String;

    return-object v0
.end method

.method public setBirthDay(Ljava/util/Date;)V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/model/Person;->j:Ljava/lang/String;

    .line 51
    return-void
.end method
