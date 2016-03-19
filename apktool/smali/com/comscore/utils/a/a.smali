.class public final Lcom/comscore/utils/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Lcom/comscore/utils/l;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0123456789ABCDEF"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "0123456789abcdef"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "9774d56d682e549c"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "9774D56D682E549C"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "unknown"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "UNKNOWN"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ANDROID_ID"

    aput-object v2, v0, v1

    sput-object v0, Lcom/comscore/utils/a/a;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/comscore/utils/l;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/comscore/utils/a/a;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/comscore/utils/a/a;->e:Lcom/comscore/utils/l;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/comscore/utils/a/a;->c:Z

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/comscore/utils/a/a;->e:Lcom/comscore/utils/l;

    invoke-virtual {v0, p2}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private b()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 0
    iget-boolean v0, p0, Lcom/comscore/utils/a/a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/utils/a/a;->d:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iput-boolean v4, p0, Lcom/comscore/utils/a/a;->c:Z

    .line 1000
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_8

    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 0
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 2000
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/comscore/utils/a/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 0
    :goto_2
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    move-object v0, v3

    goto :goto_0

    :cond_3
    move-object v0, v3

    .line 2000
    goto :goto_2

    :cond_4
    move v1, v2

    .line 0
    :goto_3
    sget-object v5, Lcom/comscore/utils/a/a;->a:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_5

    sget-object v5, Lcom/comscore/utils/a/a;->a:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v2, v4

    :cond_5
    if-eqz v2, :cond_7

    iput-object v0, p0, Lcom/comscore/utils/a/a;->d:Ljava/lang/String;

    goto :goto_0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    move-object v0, v3

    goto :goto_0

    :cond_8
    move-object v0, v3

    goto :goto_1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/comscore/utils/a/a;->e:Lcom/comscore/utils/l;

    invoke-virtual {v0, p2}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/comscore/utils/a/a;->e:Lcom/comscore/utils/l;

    invoke-virtual {v0, p2, p1}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/comscore/utils/a/a;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "idCheckData"

    invoke-direct {p0, v1, v2}, Lcom/comscore/utils/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "idCheckData"

    invoke-direct {p0, v1, v0}, Lcom/comscore/utils/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/comscore/utils/a/a;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "adIdCheckData"

    invoke-direct {p0, v1, v2}, Lcom/comscore/utils/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "adIdCheckData"

    invoke-direct {p0, v1, v2}, Lcom/comscore/utils/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/comscore/utils/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
