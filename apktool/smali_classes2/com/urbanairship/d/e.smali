.class public final Lcom/urbanairship/d/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0x3e8

    sput v0, Lcom/urbanairship/d/e;->a:I

    .line 46
    const/16 v0, 0x28

    sput v0, Lcom/urbanairship/d/e;->b:I

    return-void
.end method

.method public static a()I
    .locals 3

    .prologue
    .line 121
    const-string v0, "count"

    sget v1, Lcom/urbanairship/d/e;->a:I

    .line 1061
    invoke-static {}, Lcom/urbanairship/d/e;->b()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 126
    add-int/lit8 v0, v0, 0x1

    .line 127
    sget v1, Lcom/urbanairship/d/e;->a:I

    sget v2, Lcom/urbanairship/d/e;->b:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 129
    const-string v1, "count"

    invoke-static {v1, v0}, Lcom/urbanairship/d/e;->a(Ljava/lang/String;I)V

    .line 140
    :goto_0
    return v0

    .line 135
    :cond_0
    const-string v1, "count"

    sget v2, Lcom/urbanairship/d/e;->a:I

    invoke-static {v1, v2}, Lcom/urbanairship/d/e;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/urbanairship/d/e;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 55
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 56
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 57
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 58
    return-void
.end method

.method private static b()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 49
    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v0

    .line 50
    const-string v1, "com.urbanairship.notificationidgenerator"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
