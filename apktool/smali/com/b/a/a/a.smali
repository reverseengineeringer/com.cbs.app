.class public final Lcom/b/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const-string v0, "http://"

    sput-object v0, Lcom/b/a/a/a;->a:Ljava/lang/String;

    .line 5
    const-string v0, "livefyre.com"

    sput-object v0, Lcom/b/a/a/a;->b:Ljava/lang/String;

    .line 6
    const-string v0, "bootstrap"

    sput-object v0, Lcom/b/a/a/a;->c:Ljava/lang/String;

    .line 7
    const-string v0, "quill"

    sput-object v0, Lcom/b/a/a/a;->d:Ljava/lang/String;

    .line 8
    const-string v0, "admin"

    sput-object v0, Lcom/b/a/a/a;->e:Ljava/lang/String;

    .line 9
    const-string v0, "stream"

    sput-object v0, Lcom/b/a/a/a;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    const-string v0, "livefyre.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    sget-object p0, Lcom/b/a/a/a;->b:Ljava/lang/String;

    .line 15
    :cond_0
    return-object p0
.end method
