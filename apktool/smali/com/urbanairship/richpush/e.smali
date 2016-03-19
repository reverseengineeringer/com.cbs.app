.class public final Lcom/urbanairship/richpush/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/urbanairship/l;


# direct methods
.method constructor <init>(Lcom/urbanairship/l;)V
    .locals 3

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/urbanairship/richpush/e;->a:Lcom/urbanairship/l;

    .line 52
    iget-object v0, p0, Lcom/urbanairship/richpush/e;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.user.PASSWORD"

    invoke-virtual {v0, v1}, Lcom/urbanairship/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/urbanairship/richpush/e;->a:Lcom/urbanairship/l;

    const-string v2, "com.urbanairship.user.ID"

    invoke-virtual {v1, v2}, Lcom/urbanairship/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/urbanairship/richpush/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/urbanairship/richpush/e;->a:Lcom/urbanairship/l;

    const-string v2, "com.urbanairship.user.USER_TOKEN"

    invoke-virtual {v1, v2, v0}, Lcom/urbanairship/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/urbanairship/richpush/e;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.user.PASSWORD"

    invoke-virtual {v0, v1}, Lcom/urbanairship/l;->c(Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/urbanairship/p;->n()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/richpush/RichPushManager;->b()Lcom/urbanairship/richpush/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/richpush/e;->b()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {v0}, Lcom/urbanairship/p;->n()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushManager;->b()Lcom/urbanairship/richpush/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/e;->c()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v1}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a([B[B)[B
    .locals 4

    .prologue
    .line 180
    array-length v0, p0

    new-array v1, v0, [B

    .line 182
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 183
    aget-byte v2, p0, v0

    array-length v3, p1

    rem-int v3, v0, v3

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_0
    return-object v1
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-static {p0}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    :cond_0
    const/4 v0, 0x0

    .line 131
    :goto_0
    return-object v0

    .line 124
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/urbanairship/richpush/e;->a([B[B)[B

    move-result-object v2

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    array-length v4, v2

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_2

    aget-byte v5, v2, v0

    .line 129
    const-string v6, "%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 131
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 143
    invoke-static {p0}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-object v0

    .line 147
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 150
    rem-int/lit8 v1, v2, 0x2

    if-nez v1, :cond_0

    .line 156
    :try_start_0
    div-int/lit8 v1, v2, 0x2

    new-array v3, v1, [B

    .line 157
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 158
    div-int/lit8 v4, v1, 0x2

    add-int/lit8 v5, v1, 0x2

    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v5

    aput-byte v5, v3, v4

    .line 157
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 160
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v3, v1}, Lcom/urbanairship/richpush/e;->a([B[B)[B

    move-result-object v2

    .line 162
    new-instance v1, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    goto :goto_0

    .line 163
    :catch_0
    move-exception v1

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RichPushUser - Unable to decode string. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :catch_1
    move-exception v1

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RichPushUser - String contains invalid hex numbers. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/urbanairship/richpush/e;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.user.ID"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/urbanairship/richpush/e;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.user.USER_TOKEN"

    invoke-static {p2, p1}, Lcom/urbanairship/richpush/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/urbanairship/richpush/e;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.user.USER_TOKEN"

    invoke-virtual {v0, v1}, Lcom/urbanairship/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/urbanairship/richpush/e;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.user.ID"

    invoke-virtual {v0, v1}, Lcom/urbanairship/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/urbanairship/richpush/e;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.user.ID"

    invoke-virtual {v0, v1}, Lcom/urbanairship/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/urbanairship/richpush/e;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.user.USER_TOKEN"

    invoke-virtual {v0, v1}, Lcom/urbanairship/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/urbanairship/richpush/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/urbanairship/richpush/e;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
