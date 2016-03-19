.class final Lcom/urbanairship/c/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/urbanairship/c/b;

.field private final b:Ljava/util/regex/Pattern;

.field private final c:Ljava/util/regex/Pattern;

.field private final d:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>(Lcom/urbanairship/c/b;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/urbanairship/c/b$a;->a:Lcom/urbanairship/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p2, p0, Lcom/urbanairship/c/b$a;->b:Ljava/util/regex/Pattern;

    .line 247
    iput-object p3, p0, Lcom/urbanairship/c/b$a;->c:Ljava/util/regex/Pattern;

    .line 248
    iput-object p4, p0, Lcom/urbanairship/c/b$a;->d:Ljava/util/regex/Pattern;

    .line 249
    return-void
.end method


# virtual methods
.method final a(Landroid/net/Uri;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 258
    iget-object v1, p0, Lcom/urbanairship/c/b$a;->b:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/urbanairship/c/b$a;->b:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    .line 270
    :cond_0
    :goto_0
    return v0

    .line 262
    :cond_1
    iget-object v1, p0, Lcom/urbanairship/c/b$a;->c:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/urbanairship/c/b$a;->c:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    :cond_2
    iget-object v1, p0, Lcom/urbanairship/c/b$a;->d:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/urbanairship/c/b$a;->d:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
