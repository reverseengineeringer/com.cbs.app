.class public final Lcom/cbs/app/analytics/impl/FlurryService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/cbs/app/analytics/impl/FlurryService;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static a(Landroid/app/Application;)V
    .locals 1

    .prologue
    .line 37
    if-eqz p0, :cond_0

    .line 40
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/flurry/android/a;->a(Z)V

    .line 46
    :goto_0
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->G(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    const-string v0, "C877XMQYMJ9SK6FN6DQS"

    sput-object v0, Lcom/cbs/app/analytics/impl/FlurryService;->a:Ljava/lang/String;

    .line 60
    :goto_1
    sget-object v0, Lcom/cbs/app/analytics/impl/FlurryService;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/flurry/android/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    :cond_0
    return-void

    .line 43
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/flurry/android/a;->a(Z)V

    goto :goto_0

    .line 50
    :cond_2
    const-string v0, "3NBY28XV8JVG4P62W8KF"

    sput-object v0, Lcom/cbs/app/analytics/impl/FlurryService;->a:Ljava/lang/String;

    goto :goto_1

    .line 53
    :cond_3
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 54
    const-string v0, "CBWHZSTXZZCQDW7NJFFK"

    sput-object v0, Lcom/cbs/app/analytics/impl/FlurryService;->a:Ljava/lang/String;

    goto :goto_1

    .line 56
    :cond_4
    const-string v0, "NHVQTM7TQCK98ZZWRZ4X"

    sput-object v0, Lcom/cbs/app/analytics/impl/FlurryService;->a:Ljava/lang/String;

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/cbs/app/analytics/impl/FlurryService;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 67
    invoke-static {p0}, Lcom/flurry/android/a;->a(Landroid/content/Context;)V

    .line 69
    :cond_0
    return-void
.end method

.method public static a(Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cbs/app/analytics/Action;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "postAction: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cbs/app/analytics/Action;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 75
    if-eqz p1, :cond_3

    .line 76
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 78
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 79
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    const-string v4, "evar_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "appState"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "prop_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "sendAction10"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "pageView"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "eVar"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "events"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "eProp"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 91
    :cond_1
    const-string v0, "pageView"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    invoke-static {}, Lcom/flurry/android/a;->a()V

    .line 94
    :cond_2
    invoke-virtual {p0}, Lcom/cbs/app/analytics/Action;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/flurry/android/a;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/b;

    .line 97
    :cond_3
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 100
    invoke-static {p0}, Lcom/flurry/android/a;->b(Landroid/content/Context;)V

    .line 101
    return-void
.end method
