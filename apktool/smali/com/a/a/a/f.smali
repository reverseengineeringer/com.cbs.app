.class public final Lcom/a/a/a/f;
.super Lcom/a/a/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/a/f$a;
    }
.end annotation


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/a/a/a/i;Lcom/a/a/a/j;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/a/a/a/e;-><init>(Landroid/content/Context;Lcom/a/a/a/i;Lcom/a/a/a/j;)V

    .line 73
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Lcom/a/a/a/f;
    .locals 3

    .prologue
    .line 61
    new-instance v0, Lcom/a/a/a/a;

    invoke-direct {v0}, Lcom/a/a/a/a;-><init>()V

    .line 63
    invoke-static {p0, p1, v0}, Lcom/a/a/a/f;->a(Ljava/lang/String;Landroid/content/Context;Lcom/a/a/a/i;)V

    .line 65
    new-instance v1, Lcom/a/a/a/f;

    new-instance v2, Lcom/a/a/a/l;

    invoke-direct {v2}, Lcom/a/a/a/l;-><init>()V

    invoke-direct {v1, p1, v0, v2}, Lcom/a/a/a/f;-><init>(Landroid/content/Context;Lcom/a/a/a/i;Lcom/a/a/a/j;)V

    return-object v1
.end method

.method private d(Landroid/content/Context;)Lcom/a/a/a/f$a;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/16 v7, 0x10

    .line 83
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/ads/a/a;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/a/a$a;
    :try_end_0
    .catch Lcom/google/android/gms/common/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 94
    invoke-virtual {v3}, Lcom/google/android/gms/ads/a/a$a;->a()Ljava/lang/String;

    move-result-object v2

    .line 95
    if-eqz v2, :cond_3

    const-string v1, "^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$"

    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 98
    new-array v4, v7, [B

    move v1, v0

    .line 101
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 102
    const/16 v5, 0x8

    if-eq v0, v5, :cond_0

    const/16 v5, 0xd

    if-eq v0, v5, :cond_0

    const/16 v5, 0x12

    if-eq v0, v5, :cond_0

    const/16 v5, 0x17

    if-ne v0, v5, :cond_1

    .line 104
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 107
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v0, 0x1

    .line 108
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 109
    add-int/lit8 v1, v1, 0x1

    .line 110
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 87
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 88
    :catch_1
    move-exception v0

    .line 91
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/a/a/a/f;->c:Lcom/a/a/a/i;

    invoke-interface {v0, v4}, Lcom/a/a/a/i;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 115
    :goto_1
    new-instance v1, Lcom/a/a/a/f$a;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/a/a$a;->b()Z

    move-result v2

    invoke-direct {v1, p0, v0, v2}, Lcom/a/a/a/f$a;-><init>(Lcom/a/a/a/f;Ljava/lang/String;Z)V

    return-object v1

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method


# virtual methods
.method protected final b(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/a/a/a/e;->b(Landroid/content/Context;)V

    .line 131
    :try_start_0
    invoke-direct {p0, p1}, Lcom/a/a/a/f;->d(Landroid/content/Context;)Lcom/a/a/a/f$a;

    move-result-object v2

    .line 133
    const/16 v3, 0x1c

    invoke-virtual {v2}, Lcom/a/a/a/f$a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1

    :goto_0
    invoke-virtual {p0, v3, v0, v1}, Lcom/a/a/a/f;->a(IJ)V

    .line 135
    invoke-virtual {v2}, Lcom/a/a/a/f$a;->a()Ljava/lang/String;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_0

    .line 137
    const/16 v1, 0x1a

    const-wide/16 v2, 0x5

    invoke-virtual {p0, v1, v2, v3}, Lcom/a/a/a/f;->a(IJ)V

    .line 138
    const/16 v1, 0x18

    invoke-virtual {p0, v1, v0}, Lcom/a/a/a/f;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/common/c; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/a/a/a/e$a; {:try_start_0 .. :try_end_0} :catch_2

    .line 158
    :cond_0
    :goto_1
    return-void

    .line 133
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    const/16 v0, 0x18

    :try_start_1
    invoke-static {p1}, Lcom/a/a/a/f;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/f;->a(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/a/a/a/e$a; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 154
    :catch_1
    move-exception v0

    goto :goto_1

    .line 157
    :catch_2
    move-exception v0

    goto :goto_1
.end method
