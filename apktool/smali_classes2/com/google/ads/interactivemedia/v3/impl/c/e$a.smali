.class final Lcom/google/ads/interactivemedia/v3/impl/c/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/c/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Long;

.field private f:Ljava/lang/Double;

.field private g:Ljava/lang/Boolean;

.field private h:Lcom/google/ads/interactivemedia/v3/impl/c/b$a;

.field private i:Lcom/google/ads/interactivemedia/v3/impl/c/b$a;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    return-void
.end method


# virtual methods
.method public final a(D)Lcom/google/ads/interactivemedia/v3/impl/c/b$b;
    .locals 1

    .prologue
    .line 212
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e$a;->f:Ljava/lang/Double;

    .line 213
    return-object p0
.end method

.method public final a(J)Lcom/google/ads/interactivemedia/v3/impl/c/b$b;
    .locals 1

    .prologue
    .line 207
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e$a;->e:Ljava/lang/Long;

    .line 208
    return-object p0
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/impl/c/b$a;)Lcom/google/ads/interactivemedia/v3/impl/c/b$b;
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e$a;->h:Lcom/google/ads/interactivemedia/v3/impl/c/b$a;

    .line 223
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/c/b$b;
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e$a;->a:Ljava/lang/String;

    .line 188
    return-object p0
.end method

.method public final a(Z)Lcom/google/ads/interactivemedia/v3/impl/c/b$b;
    .locals 1

    .prologue
    .line 217
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e$a;->g:Ljava/lang/Boolean;

    .line 218
    return-object p0
.end method

.method public final a()Lcom/google/ads/interactivemedia/v3/impl/c/b;
    .locals 14

    .prologue
    .line 232
    const-string v0, ""

    .line 233
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e$a;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 234
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " queryId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e$a;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 237
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " eventId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    :cond_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e$a;->c:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 240
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " vastEvent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    :cond_2
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e$a;->d:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 243
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " appState"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    :cond_3
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e$a;->e:Ljava/lang/Long;

    if-nez v1, :cond_4

    .line 246
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " nativeTime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    :cond_4
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e$a;->f:Ljava/lang/Double;

    if-nez v1, :cond_5

    .line 249
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " nativeVolume"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    :cond_5
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e$a;->g:Ljava/lang/Boolean;

    if-nez v1, :cond_6

    .line 252
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " nativeViewHidden"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    :cond_6
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e$a;->h:Lcom/google/ads/interactivemedia/v3/impl/c/b$a;

    if-nez v1, :cond_7

    .line 255
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " nativeViewBounds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    :cond_7
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e$a;->i:Lcom/google/ads/interactivemedia/v3/impl/c/b$a;

    if-nez v1, :cond_8

    .line 258
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " nativeViewVisibleBounds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 261
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :cond_a
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/c/e;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e$a;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e$a;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e$a;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e$a;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e$a;->e:Ljava/lang/Long;

    .line 268
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e$a;->f:Ljava/lang/Double;

    .line 269
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e$a;->g:Ljava/lang/Boolean;

    .line 270
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iget-object v11, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e$a;->h:Lcom/google/ads/interactivemedia/v3/impl/c/b$a;

    iget-object v12, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e$a;->i:Lcom/google/ads/interactivemedia/v3/impl/c/b$a;

    const/4 v13, 0x0

    invoke-direct/range {v1 .. v13}, Lcom/google/ads/interactivemedia/v3/impl/c/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JDZLcom/google/ads/interactivemedia/v3/impl/c/b$a;Lcom/google/ads/interactivemedia/v3/impl/c/b$a;B)V

    return-object v1
.end method

.method public final b(Lcom/google/ads/interactivemedia/v3/impl/c/b$a;)Lcom/google/ads/interactivemedia/v3/impl/c/b$b;
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e$a;->i:Lcom/google/ads/interactivemedia/v3/impl/c/b$a;

    .line 228
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/c/b$b;
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e$a;->b:Ljava/lang/String;

    .line 193
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/c/b$b;
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e$a;->c:Ljava/lang/String;

    .line 198
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/c/b$b;
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/c/e$a;->d:Ljava/lang/String;

    .line 203
    return-object p0
.end method
