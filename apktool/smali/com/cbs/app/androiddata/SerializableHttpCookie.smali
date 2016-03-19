.class public Lcom/cbs/app/androiddata/SerializableHttpCookie;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private transient b:Ljava/net/HttpCookie;

.field private c:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/cbs/app/androiddata/SerializableHttpCookie;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/androiddata/SerializableHttpCookie;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method private static a([B)Ljava/lang/String;
    .locals 5

    .prologue
    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 133
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-byte v3, p0, v0

    .line 134
    and-int/lit16 v3, v3, 0xff

    .line 135
    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    .line 136
    const/16 v4, 0x30

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/net/HttpCookie;
    .locals 7

    .prologue
    const/16 v6, 0x10

    .line 48
    .line 1150
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1151
    div-int/lit8 v0, v1, 0x2

    new-array v2, v0, [B

    .line 1152
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1153
    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1152
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 51
    const/4 v1, 0x0

    .line 53
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 55
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/androiddata/SerializableHttpCookie;

    iget-object v0, v0, Lcom/cbs/app/androiddata/SerializableHttpCookie;->b:Ljava/net/HttpCookie;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 62
    :goto_1
    return-object v0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    sget-object v2, Lcom/cbs/app/androiddata/SerializableHttpCookie;->a:Ljava/lang/String;

    const-string v3, "IOException in decodeCookie"

    invoke-static {v2, v3, v0}, Lcom/cbs/app/androiddata/LG;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 60
    goto :goto_1

    .line 58
    :catch_1
    move-exception v0

    .line 59
    sget-object v2, Lcom/cbs/app/androiddata/SerializableHttpCookie;->a:Ljava/lang/String;

    const-string v3, "ClassNotFoundException in decodeCookie"

    invoke-static {v2, v3, v0}, Lcom/cbs/app/androiddata/LG;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 68
    :try_start_0
    invoke-direct {p0}, Lcom/cbs/app/androiddata/SerializableHttpCookie;->b()V

    .line 69
    iget-object v0, p0, Lcom/cbs/app/androiddata/SerializableHttpCookie;->c:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/cbs/app/androiddata/SerializableHttpCookie;->b:Ljava/net/HttpCookie;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 73
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/cbs/app/androiddata/SerializableHttpCookie;->b:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "httpOnly"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/SerializableHttpCookie;->c:Ljava/lang/reflect/Field;

    .line 88
    iget-object v0, p0, Lcom/cbs/app/androiddata/SerializableHttpCookie;->c:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 89
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4

    .prologue
    .line 108
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 110
    new-instance v2, Ljava/net/HttpCookie;

    invoke-direct {v2, v0, v1}, Ljava/net/HttpCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/cbs/app/androiddata/SerializableHttpCookie;->b:Ljava/net/HttpCookie;

    .line 111
    iget-object v1, p0, Lcom/cbs/app/androiddata/SerializableHttpCookie;->b:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/net/HttpCookie;->setComment(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/cbs/app/androiddata/SerializableHttpCookie;->b:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/net/HttpCookie;->setCommentURL(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/cbs/app/androiddata/SerializableHttpCookie;->b:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/net/HttpCookie;->setDomain(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/cbs/app/androiddata/SerializableHttpCookie;->b:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpCookie;->setMaxAge(J)V

    .line 115
    iget-object v1, p0, Lcom/cbs/app/androiddata/SerializableHttpCookie;->b:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/net/HttpCookie;->setPath(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/cbs/app/androiddata/SerializableHttpCookie;->b:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/net/HttpCookie;->setPortlist(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/cbs/app/androiddata/SerializableHttpCookie;->b:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpCookie;->setVersion(I)V

    .line 118
    iget-object v0, p0, Lcom/cbs/app/androiddata/SerializableHttpCookie;->b:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpCookie;->setSecure(Z)V

    .line 119
    iget-object v0, p0, Lcom/cbs/app/androiddata/SerializableHttpCookie;->b:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpCookie;->setDiscard(Z)V

    .line 120
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    .line 2079
    :try_start_0
    invoke-direct {p0}, Lcom/cbs/app/androiddata/SerializableHttpCookie;->b()V

    .line 2080
    iget-object v1, p0, Lcom/cbs/app/androiddata/SerializableHttpCookie;->c:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lcom/cbs/app/androiddata/SerializableHttpCookie;->b:Ljava/net/HttpCookie;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2083
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/cbs/app/androiddata/SerializableHttpCookie;->b:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/cbs/app/androiddata/SerializableHttpCookie;->b:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/cbs/app/androiddata/SerializableHttpCookie;->b:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/cbs/app/androiddata/SerializableHttpCookie;->b:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getCommentURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lcom/cbs/app/androiddata/SerializableHttpCookie;->b:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/cbs/app/androiddata/SerializableHttpCookie;->b:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getMaxAge()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 98
    iget-object v0, p0, Lcom/cbs/app/androiddata/SerializableHttpCookie;->b:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lcom/cbs/app/androiddata/SerializableHttpCookie;->b:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lcom/cbs/app/androiddata/SerializableHttpCookie;->b:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 101
    iget-object v0, p0, Lcom/cbs/app/androiddata/SerializableHttpCookie;->b:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getSecure()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 102
    iget-object v0, p0, Lcom/cbs/app/androiddata/SerializableHttpCookie;->b:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getDiscard()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 103
    invoke-direct {p0}, Lcom/cbs/app/androiddata/SerializableHttpCookie;->a()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 104
    return-void
.end method


# virtual methods
.method public final a(Ljava/net/HttpCookie;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 33
    iput-object p1, p0, Lcom/cbs/app/androiddata/SerializableHttpCookie;->b:Ljava/net/HttpCookie;

    .line 35
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 37
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 38
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/androiddata/SerializableHttpCookie;->a([B)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    sget-object v1, Lcom/cbs/app/androiddata/SerializableHttpCookie;->a:Ljava/lang/String;

    const-string v2, "IOException in encodeCookie"

    invoke-static {v1, v2, v0}, Lcom/cbs/app/androiddata/LG;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    const/4 v0, 0x0

    goto :goto_0
.end method
