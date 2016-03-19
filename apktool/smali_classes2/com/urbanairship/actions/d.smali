.class public final Lcom/urbanairship/actions/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/actions/d$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/actions/d$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/actions/d;->a:Ljava/util/Map;

    .line 238
    return-void
.end method

.method private varargs a(Lcom/urbanairship/actions/a;[Ljava/lang/String;)Lcom/urbanairship/actions/d$a;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 74
    array-length v1, p2

    if-nez v1, :cond_0

    .line 75
    const-string v1, "A name is required to register an action"

    invoke-static {v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    .line 106
    :goto_0
    return-object v0

    .line 80
    :cond_0
    array-length v3, p2

    move v1, v2

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, p2, v1

    .line 81
    invoke-static {v4}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 82
    const-string v1, "Unable to register action because one or more of the names was null or empty."

    invoke-static {v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 88
    :cond_2
    iget-object v3, p0, Lcom/urbanairship/actions/d;->a:Ljava/util/Map;

    monitor-enter v3

    .line 90
    :try_start_0
    new-instance v1, Lcom/urbanairship/actions/d$a;

    const/4 v0, 0x0

    invoke-direct {v1, p1, p2, v0}, Lcom/urbanairship/actions/d$a;-><init>(Lcom/urbanairship/actions/a;[Ljava/lang/String;B)V

    .line 92
    array-length v4, p2

    :goto_2
    if-ge v2, v4, :cond_5

    aget-object v5, p2, v2

    .line 94
    invoke-static {v5}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 98
    iget-object v0, p0, Lcom/urbanairship/actions/d;->a:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/actions/d$a;

    .line 99
    if-eqz v0, :cond_3

    .line 100
    invoke-static {v0, v5}, Lcom/urbanairship/actions/d$a;->a(Lcom/urbanairship/actions/d$a;Ljava/lang/String;)V

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/urbanairship/actions/d;->a:Ljava/util/Map;

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 106
    :cond_5
    monitor-exit v3

    move-object v0, v1

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/urbanairship/actions/d$a;
    .locals 2

    .prologue
    .line 118
    invoke-static {p1}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 123
    :goto_0
    return-object v0

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/urbanairship/actions/d;->a:Ljava/util/Map;

    monitor-enter v1

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/actions/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/actions/d$a;

    monitor-exit v1

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 165
    new-instance v0, Lcom/urbanairship/actions/o;

    invoke-direct {v0}, Lcom/urbanairship/actions/o;-><init>()V

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "share_action"

    aput-object v2, v1, v4

    const-string v2, "^s"

    aput-object v2, v1, v5

    invoke-direct {p0, v0, v1}, Lcom/urbanairship/actions/d;->a(Lcom/urbanairship/actions/a;[Ljava/lang/String;)Lcom/urbanairship/actions/d$a;

    .line 169
    new-instance v0, Lcom/urbanairship/actions/l;

    invoke-direct {v0}, Lcom/urbanairship/actions/l;-><init>()V

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "open_external_url_action"

    aput-object v2, v1, v4

    const-string v2, "^u"

    aput-object v2, v1, v5

    invoke-direct {p0, v0, v1}, Lcom/urbanairship/actions/d;->a(Lcom/urbanairship/actions/a;[Ljava/lang/String;)Lcom/urbanairship/actions/d$a;

    .line 173
    new-instance v0, Lcom/urbanairship/actions/j;

    invoke-direct {v0}, Lcom/urbanairship/actions/j;-><init>()V

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "deep_link_action"

    aput-object v2, v1, v4

    const-string v2, "^d"

    aput-object v2, v1, v5

    invoke-direct {p0, v0, v1}, Lcom/urbanairship/actions/d;->a(Lcom/urbanairship/actions/a;[Ljava/lang/String;)Lcom/urbanairship/actions/d$a;

    .line 177
    new-instance v0, Lcom/urbanairship/actions/k;

    invoke-direct {v0}, Lcom/urbanairship/actions/k;-><init>()V

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "landing_page_action"

    aput-object v2, v1, v4

    const-string v2, "^p"

    aput-object v2, v1, v5

    invoke-direct {p0, v0, v1}, Lcom/urbanairship/actions/d;->a(Lcom/urbanairship/actions/a;[Ljava/lang/String;)Lcom/urbanairship/actions/d$a;

    move-result-object v0

    .line 181
    new-instance v1, Lcom/urbanairship/actions/d$1;

    invoke-direct {v1, p0}, Lcom/urbanairship/actions/d$1;-><init>(Lcom/urbanairship/actions/d;)V

    invoke-virtual {v0, v1}, Lcom/urbanairship/actions/d$a;->a(Lcom/android/internal/util/Predicate;)V

    .line 192
    new-instance v0, Lcom/urbanairship/actions/d$2;

    invoke-direct {v0, p0}, Lcom/urbanairship/actions/d$2;-><init>(Lcom/urbanairship/actions/d;)V

    .line 199
    new-instance v1, Lcom/urbanairship/actions/a/a;

    invoke-direct {v1}, Lcom/urbanairship/actions/a/a;-><init>()V

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "add_tags_action"

    aput-object v3, v2, v4

    const-string v3, "^+t"

    aput-object v3, v2, v5

    invoke-direct {p0, v1, v2}, Lcom/urbanairship/actions/d;->a(Lcom/urbanairship/actions/a;[Ljava/lang/String;)Lcom/urbanairship/actions/d$a;

    move-result-object v1

    .line 203
    invoke-virtual {v1, v0}, Lcom/urbanairship/actions/d$a;->a(Lcom/android/internal/util/Predicate;)V

    .line 205
    new-instance v1, Lcom/urbanairship/actions/a/c;

    invoke-direct {v1}, Lcom/urbanairship/actions/a/c;-><init>()V

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "remove_tags_action"

    aput-object v3, v2, v4

    const-string v3, "^-t"

    aput-object v3, v2, v5

    invoke-direct {p0, v1, v2}, Lcom/urbanairship/actions/d;->a(Lcom/urbanairship/actions/a;[Ljava/lang/String;)Lcom/urbanairship/actions/d$a;

    move-result-object v1

    .line 209
    invoke-virtual {v1, v0}, Lcom/urbanairship/actions/d$a;->a(Lcom/android/internal/util/Predicate;)V

    .line 211
    new-instance v0, Lcom/urbanairship/actions/h;

    invoke-direct {v0}, Lcom/urbanairship/actions/h;-><init>()V

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "add_custom_event_action"

    aput-object v2, v1, v4

    invoke-direct {p0, v0, v1}, Lcom/urbanairship/actions/d;->a(Lcom/urbanairship/actions/a;[Ljava/lang/String;)Lcom/urbanairship/actions/d$a;

    move-result-object v0

    .line 214
    new-instance v1, Lcom/urbanairship/actions/d$3;

    invoke-direct {v1, p0}, Lcom/urbanairship/actions/d$3;-><init>(Lcom/urbanairship/actions/d;)V

    invoke-virtual {v0, v1}, Lcom/urbanairship/actions/d$a;->a(Lcom/android/internal/util/Predicate;)V

    .line 222
    new-instance v0, Lcom/urbanairship/actions/m;

    invoke-direct {v0}, Lcom/urbanairship/actions/m;-><init>()V

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "open_mc_action"

    aput-object v2, v1, v4

    const-string v2, "^mc"

    aput-object v2, v1, v5

    invoke-direct {p0, v0, v1}, Lcom/urbanairship/actions/d;->a(Lcom/urbanairship/actions/a;[Ljava/lang/String;)Lcom/urbanairship/actions/d$a;

    .line 226
    new-instance v0, Lcom/urbanairship/actions/n;

    invoke-direct {v0}, Lcom/urbanairship/actions/n;-><init>()V

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "open_mc_overlay_action"

    aput-object v2, v1, v4

    const-string v2, "^mco"

    aput-object v2, v1, v5

    invoke-direct {p0, v0, v1}, Lcom/urbanairship/actions/d;->a(Lcom/urbanairship/actions/a;[Ljava/lang/String;)Lcom/urbanairship/actions/d$a;

    .line 230
    new-instance v0, Lcom/urbanairship/actions/i;

    invoke-direct {v0}, Lcom/urbanairship/actions/i;-><init>()V

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "clipboard_action"

    aput-object v2, v1, v4

    const-string v2, "^c"

    aput-object v2, v1, v5

    invoke-direct {p0, v0, v1}, Lcom/urbanairship/actions/d;->a(Lcom/urbanairship/actions/a;[Ljava/lang/String;)Lcom/urbanairship/actions/d$a;

    .line 233
    return-void
.end method
