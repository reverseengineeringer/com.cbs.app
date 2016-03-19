.class final Lcom/adobe/a/b/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/adobe/a/b/h;->b:Ljava/util/Hashtable;

    .line 12
    const-string v0, "\t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 14
    array-length v0, v1

    if-lez v0, :cond_0

    aget-object v0, v1, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 15
    aget-object v0, v1, v2

    iput-object v0, p0, Lcom/adobe/a/b/h;->a:Ljava/lang/String;

    .line 19
    :cond_0
    const/4 v0, 0x1

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 21
    add-int/lit8 v2, v0, 0x1

    array-length v3, v1

    if-gt v2, v3, :cond_2

    .line 25
    aget-object v2, v1, v0

    .line 26
    add-int/lit8 v3, v0, 0x1

    aget-object v3, v1, v3

    .line 29
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 30
    iget-object v4, p0, Lcom/adobe/a/b/h;->b:Ljava/util/Hashtable;

    invoke-virtual {v4, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 33
    :cond_2
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/adobe/a/b/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected final b()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/a/b/h;->b:Ljava/util/Hashtable;

    return-object v0
.end method
