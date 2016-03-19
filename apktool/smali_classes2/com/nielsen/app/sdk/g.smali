.class Lcom/nielsen/app/sdk/g;
.super Lcom/nielsen/app/sdk/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nielsen/app/sdk/g$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/SharedPreferences;

.field private c:Lcom/nielsen/app/sdk/g$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Lcom/nielsen/app/sdk/c;-><init>()V

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/app/sdk/g;->a:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/nielsen/app/sdk/g;->b:Landroid/content/SharedPreferences;

    .line 324
    iput-object v1, p0, Lcom/nielsen/app/sdk/g;->c:Lcom/nielsen/app/sdk/g$a;

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/g;->a:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/nielsen/app/sdk/g;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/g;->b:Landroid/content/SharedPreferences;

    .line 92
    return-void
.end method

.method static synthetic a(Lcom/nielsen/app/sdk/g;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nielsen/app/sdk/g;->b:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/nielsen/app/sdk/g$a;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/nielsen/app/sdk/g;->c:Lcom/nielsen/app/sdk/g$a;

    if-nez v0, :cond_0

    .line 335
    new-instance v0, Lcom/nielsen/app/sdk/g$a;

    invoke-direct {v0, p0}, Lcom/nielsen/app/sdk/g$a;-><init>(Lcom/nielsen/app/sdk/g;)V

    iput-object v0, p0, Lcom/nielsen/app/sdk/g;->c:Lcom/nielsen/app/sdk/g$a;

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/nielsen/app/sdk/g;->c:Lcom/nielsen/app/sdk/g$a;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "S"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nielsen/app/sdk/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 500
    iget-object v1, p0, Lcom/nielsen/app/sdk/g;->b:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 501
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nielsen/app/sdk/g;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 502
    :cond_0
    return-object p2
.end method
