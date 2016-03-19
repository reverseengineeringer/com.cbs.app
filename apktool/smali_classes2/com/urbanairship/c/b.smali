.class public final Lcom/urbanairship/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/c/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/regex/Pattern;


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/c/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 68
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "^((\\*)|((%s://%s%s)|(%s://%s)|(file://%s)))"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "((\\*)|(http)|(https))"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "((\\*)|(\\*\\.[^/\\*]+)|([^/\\*]+))"

    aput-object v4, v2, v3

    const-string v3, "(/.*)"

    aput-object v3, v2, v5

    const/4 v3, 0x3

    const-string v4, "((\\*)|(http)|(https))"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "((\\*)|(\\*\\.[^/\\*]+)|([^/\\*]+))"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "(/.*)"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 79
    sput-object v0, Lcom/urbanairship/c/b;->a:Ljava/lang/String;

    invoke-static {v0, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/urbanairship/c/b;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/c/b;->c:Ljava/util/List;

    .line 232
    return-void
.end method

.method public static a(Lcom/urbanairship/a;)Lcom/urbanairship/c/b;
    .locals 5

    .prologue
    .line 218
    new-instance v1, Lcom/urbanairship/c/b;

    invoke-direct {v1}, Lcom/urbanairship/c/b;-><init>()V

    .line 219
    const-string v0, "https://*.urbanairship.com"

    invoke-direct {v1, v0}, Lcom/urbanairship/c/b;->b(Ljava/lang/String;)Z

    .line 220
    iget-object v0, p0, Lcom/urbanairship/a;->k:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 221
    iget-object v2, p0, Lcom/urbanairship/a;->k:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 222
    invoke-direct {v1, v4}, Lcom/urbanairship/c/b;->b(Ljava/lang/String;)Z

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_0
    return-object v1
.end method

.method private static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .prologue
    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-char v4, v2, v0

    .line 194
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 196
    if-nez p1, :cond_1

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 197
    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 198
    const-string v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :cond_0
    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_1
    const-string v5, "\\.[]{}()^$?+|*"

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 201
    const-string v5, "\\"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 207
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 114
    if-eqz p1, :cond_0

    sget-object v0, Lcom/urbanairship/c/b;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v4

    .line 156
    :goto_0
    return v0

    .line 121
    :cond_1
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/urbanairship/c/b;->c:Ljava/util/List;

    new-instance v1, Lcom/urbanairship/c/b$a;

    const-string v4, "(http)|(https)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-direct {v1, p0, v4, v2, v2}, Lcom/urbanairship/c/b$a;-><init>(Lcom/urbanairship/c/b;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Lcom/urbanairship/c/b;->c:Ljava/util/List;

    new-instance v1, Lcom/urbanairship/c/b$a;

    const-string v4, "file"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    const-string v5, "/.*"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-direct {v1, p0, v4, v2, v5}, Lcom/urbanairship/c/b$a;-><init>(Lcom/urbanairship/c/b;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v3

    .line 124
    goto :goto_0

    .line 127
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v5

    .line 130
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 133
    invoke-static {v1}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 134
    :cond_3
    const-string v0, "(http)|(https)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 140
    :goto_1
    invoke-static {v5}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "*"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    move-object v1, v2

    .line 149
    :goto_2
    invoke-static {v6}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 155
    :goto_3
    iget-object v4, p0, Lcom/urbanairship/c/b;->c:Ljava/util/List;

    new-instance v5, Lcom/urbanairship/c/b$a;

    invoke-direct {v5, p0, v0, v1, v2}, Lcom/urbanairship/c/b$a;-><init>(Lcom/urbanairship/c/b;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v3

    .line 156
    goto :goto_0

    .line 136
    :cond_5
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    goto :goto_1

    .line 142
    :cond_6
    const-string v1, "*."

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "(.*\\.)?"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/urbanairship/c/b;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    goto :goto_2

    .line 145
    :cond_7
    invoke-static {v5, v3}, Lcom/urbanairship/c/b;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    goto :goto_2

    .line 152
    :cond_8
    invoke-static {v6, v4}, Lcom/urbanairship/c/b;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    goto :goto_3
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 167
    if-nez p1, :cond_0

    move v0, v1

    .line 179
    :goto_0
    return v0

    .line 171
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 173
    iget-object v0, p0, Lcom/urbanairship/c/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/c/b$a;

    .line 174
    invoke-virtual {v0, v2}, Lcom/urbanairship/c/b$a;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 179
    goto :goto_0
.end method
