.class public final Lcom/urbanairship/b/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:I

.field private d:Ljava/lang/String;

.field private e:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/urbanairship/b/c$a;->e:J

    .line 134
    iput p1, p0, Lcom/urbanairship/b/c$a;->c:I

    .line 135
    return-void
.end method


# virtual methods
.method public final a(J)Lcom/urbanairship/b/c$a;
    .locals 1

    .prologue
    .line 178
    iput-wide p1, p0, Lcom/urbanairship/b/c$a;->e:J

    .line 179
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/urbanairship/b/c$a;
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/urbanairship/b/c$a;->d:Ljava/lang/String;

    .line 146
    return-object p0
.end method

.method public final a(Ljava/util/Map;)Lcom/urbanairship/b/c$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/urbanairship/b/c$a;"
        }
    .end annotation

    .prologue
    .line 167
    iput-object p1, p0, Lcom/urbanairship/b/c$a;->b:Ljava/util/Map;

    .line 168
    return-object p0
.end method

.method public final a()Lcom/urbanairship/b/c;
    .locals 4

    .prologue
    .line 189
    new-instance v0, Lcom/urbanairship/b/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/urbanairship/b/c;-><init>(B)V

    .line 190
    iget v1, p0, Lcom/urbanairship/b/c$a;->c:I

    invoke-static {v0, v1}, Lcom/urbanairship/b/c;->a(Lcom/urbanairship/b/c;I)I

    .line 191
    iget-object v1, p0, Lcom/urbanairship/b/c$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/urbanairship/b/c;->a(Lcom/urbanairship/b/c;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    iget-object v1, p0, Lcom/urbanairship/b/c$a;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/urbanairship/b/c;->a(Lcom/urbanairship/b/c;Ljava/util/Map;)Ljava/util/Map;

    .line 193
    iget-object v1, p0, Lcom/urbanairship/b/c$a;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/urbanairship/b/c;->b(Lcom/urbanairship/b/c;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    iget-wide v2, p0, Lcom/urbanairship/b/c$a;->e:J

    invoke-static {v0, v2, v3}, Lcom/urbanairship/b/c;->a(Lcom/urbanairship/b/c;J)J

    .line 196
    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/urbanairship/b/c$a;
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/urbanairship/b/c$a;->a:Ljava/lang/String;

    .line 157
    return-object p0
.end method
